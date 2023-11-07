-- TODO
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity win_avg is
  generic
  (
    numbers : natural := 10;
    streams : natural := 16;
    bits    : natural := 32

  );
  port
  (
    aclk    : in std_logic;
    win_len : in unsigned(4 downto 0);

    axis_di : in std_logic_vector(bits * streams - 1 downto 0);
    axis_vi : in std_logic;
    axis_ri : out std_logic;

    axis_do : out std_logic_vector(bits * streams * 2 - 1 downto 0);
    axis_ko : out std_logic_vector((bits * streams * 2)/8 - 1 downto 0);
    axis_vo : out std_logic;
    axis_lo : out std_logic;
    axis_ro : in std_logic
  );
end win_avg;

architecture rtl of win_avg is

  attribute X_INTERFACE_INFO            : string;
  attribute X_INTERFACE_INFO of axis_di : signal is "xilinx.com:interface:axis:1.0 axis_prod TDATA";
  attribute X_INTERFACE_INFO of axis_vi : signal is "xilinx.com:interface:axis:1.0 axis_prod TVALID";
  attribute X_INTERFACE_INFO of axis_ri : signal is "xilinx.com:interface:axis:1.0 axis_prod TREADY";
  attribute X_INTERFACE_INFO of axis_do : signal is "xilinx.com:interface:axis:1.0 axis_avg TDATA";
  attribute X_INTERFACE_INFO of axis_ko : signal is "xilinx.com:interface:axis:1.0 axis_avg TKEEP";
  attribute X_INTERFACE_INFO of axis_vo : signal is "xilinx.com:interface:axis:1.0 axis_avg TVALID";
  attribute X_INTERFACE_INFO of axis_lo : signal is "xilinx.com:interface:axis:1.0 axis_avg TLAST";
  attribute X_INTERFACE_INFO of axis_ro : signal is "xilinx.com:interface:axis:1.0 axis_avg TREADY";

  function conj(input : in signed) return signed is
    variable output     : unsigned(input'length - 1 downto 0);
  begin
    output := not(unsigned(input)) + 1;
    return signed(output);
  end function;

  -- type slv_array is array(natural range <>) of std_logic_vector;

  -- function array2slv(arr : slv_array) return std_logic_vector is
  --   variable slv           : std_logic_vector((arr'length) * (arr(arr'left)'length) - 1 downto 0);
  --   variable cnt           : natural := 0;
  -- begin
  --   for i in arr'range loop
  --     for j in arr(i)'range loop
  --       slv(cnt) := arr(i)(j);
  --       cnt      := cnt + 1;
  --     end loop;
  --   end loop;
  --   return slv;
  -- end function;

  type iq_data_t is record
    real : signed(bits - 1 downto 0);
    imag : signed(bits - 1 downto 0);
  end record iq_data_t;

  type iq_data_ext_t is record
    real : signed(bits * 2 - 1 downto 0);
    imag : signed(bits * 2 - 1 downto 0);
  end record iq_data_ext_t;

  type iq_data_arr_t is array (natural range <>) of iq_data_t;
  type iq_data_arr_ext_t is array (natural range <>) of iq_data_ext_t;

  constant EMPTY_IQ_DATA     : iq_data_t     := ((others => '0'), (others => '0'));
  constant EMPTY_IQ_DATA_EXT : iq_data_ext_t := ((others => '0'), (others => '0'));

  -- Arrays
  signal iq_data_i_s   : iq_data_arr_ext_t(0 to numbers - 1) := (others => EMPTY_IQ_DATA_EXT);
  signal iq_data_div_s : iq_data_arr_ext_t(0 to numbers - 1) := (others => EMPTY_IQ_DATA_EXT);
  signal iq_data_acc_s : iq_data_arr_ext_t(0 to numbers - 1) := (others => EMPTY_IQ_DATA_EXT);
  signal iq_data_out_s : iq_data_arr_ext_t(0 to streams - 1) := (others => EMPTY_IQ_DATA_EXT);
  -- win and inputs
  signal win_len_s : unsigned(4 downto 0)                                  := (others => '0');
  signal axis_vo_s : std_logic                                             := '0';
  signal axis_lo_s : std_logic                                             := '0';
  signal axis_ko_s : std_logic_vector((bits * streams * 2)/8 - 1 downto 0) := (others => '0');
  -- Cnt with limits to 25 bits
  signal cnt     : integer range 0 to 2 ** (2 ** (win_len'length) - 7) - 1 := 0;
  signal cnt_lim : integer range 0 to 2 ** (2 ** (win_len'length) - 7) - 1 := 0;

begin
  process (aclk)
  begin
    if rising_edge(aclk) then

      --   if len_flag = '1' then
      --     len_flag <= '0';
      --     cnt_lim  <= to_integer(unsigned(x"01" sll to_integer(unsigned(win_len))));
      --   end if;
      -- TODO rewrite this:
      iq_data_i_s(0).real(bits * 2 - 1 downto bits) <= signed(axis_di(bits - 1 downto 0));
      iq_data_i_s(1).real(bits * 2 - 1 downto bits) <= signed(axis_di(bits * 2 - 1 downto bits));
      iq_data_i_s(1).imag(bits * 2 - 1 downto bits) <= signed(axis_di(bits * 3 - 1 downto bits * 2));
      iq_data_i_s(2).real(bits * 2 - 1 downto bits) <= signed(axis_di(bits * 4 - 1 downto bits * 3));
      iq_data_i_s(2).imag(bits * 2 - 1 downto bits) <= signed(axis_di(bits * 5 - 1 downto bits * 4));
      iq_data_i_s(3).real(bits * 2 - 1 downto bits) <= signed(axis_di(bits * 6 - 1 downto bits * 5));
      iq_data_i_s(3).imag(bits * 2 - 1 downto bits) <= signed(axis_di(bits * 7 - 1 downto bits * 6));
      iq_data_i_s(4).real(bits * 2 - 1 downto bits) <= signed(axis_di(bits * 8 - 1 downto bits * 7));
      iq_data_i_s(5).real(bits * 2 - 1 downto bits) <= signed(axis_di(bits * 9 - 1 downto bits * 8));
      iq_data_i_s(5).imag(bits * 2 - 1 downto bits) <= signed(axis_di(bits * 10 - 1 downto bits * 9));
      iq_data_i_s(6).real(bits * 2 - 1 downto bits) <= signed(axis_di(bits * 11 - 1 downto bits * 10));
      iq_data_i_s(6).imag(bits * 2 - 1 downto bits) <= signed(axis_di(bits * 12 - 1 downto bits * 11));
      iq_data_i_s(7).real(bits * 2 - 1 downto bits) <= signed(axis_di(bits * 13 - 1 downto bits * 12));
      iq_data_i_s(8).real(bits * 2 - 1 downto bits) <= signed(axis_di(bits * 14 - 1 downto bits * 13));
      iq_data_i_s(8).imag(bits * 2 - 1 downto bits) <= signed(axis_di(bits * 15 - 1 downto bits * 14));
      iq_data_i_s(9).real(bits * 2 - 1 downto bits) <= signed(axis_di(bits * 16 - 1 downto bits * 15));

      div : for i in 0 to (numbers - 1) loop -- Division by power of 2
        iq_data_div_s(i).real <= shift_right(iq_data_i_s(i).real, to_integer(win_len_s));
        iq_data_div_s(i).imag <= shift_right(iq_data_i_s(i).imag, to_integer(win_len_s));
        iq_data_acc_s(i).real <= iq_data_acc_s(i).real + iq_data_div_s(i).real;
        iq_data_acc_s(i).imag <= iq_data_acc_s(i).imag + iq_data_div_s(i).imag;
      end loop;
      -- TODO rewrite
      iq_data_out_s(0 to 3) <= iq_data_acc_s(0 to 3);

      iq_data_out_s(4).real <= iq_data_acc_s(1).real;
      iq_data_out_s(4).imag <= conj(iq_data_acc_s(1).imag);
      iq_data_out_s(5 to 7) <= iq_data_acc_s(4 to 6);

      iq_data_out_s(8).real   <= iq_data_acc_s(2).real;
      iq_data_out_s(8).imag   <= conj(iq_data_acc_s(2).imag);
      iq_data_out_s(9).real   <= iq_data_acc_s(5).real;
      iq_data_out_s(9).imag   <= conj(iq_data_acc_s(5).imag);
      iq_data_out_s(10 to 11) <= iq_data_acc_s(7 to 8);

      iq_data_out_s(12).real <= iq_data_acc_s(3).real;
      iq_data_out_s(12).imag <= conj(iq_data_acc_s(3).imag);
      iq_data_out_s(13).real <= iq_data_acc_s(6).real;
      iq_data_out_s(13).imag <= conj(iq_data_acc_s(6).imag);
      iq_data_out_s(14).real <= iq_data_acc_s(8).real;
      iq_data_out_s(14).imag <= conj(iq_data_acc_s(8).imag);
      iq_data_out_s(15)      <= iq_data_acc_s(9);

      if cnt = cnt_lim then
        axis_vo_s <= '1';
        axis_ko_s <= (others => '1');
        axis_lo_s <= '1';
        cnt       <= 0;
        -- cnt_lim  <= to_integer(x"01" sll to_integer(win_len_s)); -- TODO: Maybe this style 
        cnt_lim   <= 2 ** to_integer(win_len);
        win_len_s <= win_len;
      else
        axis_vo_s <= '0';
        axis_ko_s <= (others => '1'); -- May be zeros
        axis_lo_s <= '0';
        cnt       <= cnt + 1;
      end if;
    end if;
  end process;
  axis_vo <= axis_vo_s;
  axis_ko <= axis_ko_s;
  axis_lo <= axis_lo_s;
  -- TODO convertion function
  -- axis_do <= array2slv(iq_data_acc_s);
  axis_out : for i in 0 to (streams - 1) generate -- Cut and pack
    axis_do((i * 2 + 1) * bits - 1 downto (i * 2) * bits)     <= std_logic_vector(iq_data_out_s(i).real(bits * 2 - 1 downto bits));
    axis_do((i * 2 + 2) * bits - 1 downto (i * 2 + 1) * bits) <= std_logic_vector(iq_data_out_s(i).imag(bits * 2 - 1 downto bits));
  end generate;
  axis_ri <= axis_ro;
end architecture;