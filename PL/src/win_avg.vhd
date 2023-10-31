-- TODO
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity win_avg is
    generic (
        mult_num : natural := 10;
        streams  : natural := 8;
        bits     : natural := 16;
        real_bits: natural := 14

    );
    port (
        aclk     : in std_logic;
        win_len  : in std_logic_vector(4 downto 0); 

        axis_di  : in std_logic_vector(bits*2 * streams*2 - 1 downto 0); 
        axis_vi  : in std_logic; 
        axis_ri  : out std_logic;

        axis_do  : out std_logic_vector(axis_di'length*2); 
        axis_vo  : out std_logic; 
        axis_ro  : in std_logic
    );
end win_avg;

architecture rtl of win_avg is

    ATTRIBUTE X_INTERFACE_INFO : STRING;
    ATTRIBUTE X_INTERFACE_INFO of axis_di: SIGNAL is "xilinx.com:interface:axis:1.0 axis_prod0 TDATA";
    ATTRIBUTE X_INTERFACE_INFO of axis_vi: SIGNAL is "xilinx.com:interface:axis:1.0 axis_prod0 TVALID";
    ATTRIBUTE X_INTERFACE_INFO of axis_ri: SIGNAL is "xilinx.com:interface:axis:1.0 axis_prod0 TREADY";
    ATTRIBUTE X_INTERFACE_INFO of axis_do: SIGNAL is "xilinx.com:interface:axis:1.0 axis_prod0 TDATA";
    ATTRIBUTE X_INTERFACE_INFO of axis_vo: SIGNAL is "xilinx.com:interface:axis:1.0 axis_prod0 TVALID";
    ATTRIBUTE X_INTERFACE_INFO of axis_ro: SIGNAL is "xilinx.com:interface:axis:1.0 axis_prod0 TREADY";

    function conj(input : in std_logic_vector(bits - 1 downto 0)) return std_logic_vector is
        variable output : unsigned(bits - 1 downto 0);
    begin
        output := not(unsigned(input)) + 1;
        return std_logic_vector(output);
    end function;
-- Input axis
    signal axis_di0_s : std_logic_vector(bits - 1 downto 0) := (others => '0'); 
    signal axis_di1_s : std_logic_vector(bits - 1 downto 0) := (others => '0'); 
    signal axis_di2_s : std_logic_vector(bits - 1 downto 0) := (others => '0'); 
    signal axis_di3_s : std_logic_vector(bits - 1 downto 0) := (others => '0'); 
    signal axis_dq0_s : std_logic_vector(bits - 1 downto 0) := (others => '0'); 
    signal axis_dq1_s : std_logic_vector(bits - 1 downto 0) := (others => '0'); 
    signal axis_dq2_s : std_logic_vector(bits - 1 downto 0) := (others => '0'); 
    signal axis_dq3_s : std_logic_vector(bits - 1 downto 0) := (others => '0'); 

begin
    process (aclk)
    begin
        if rising_edge(aclk) then
            --div
            --acc
            --cnt
        end if;
    end process;

    -- axis_do0 <= m9_d_s(31 downto 0) & m8_d_s & m7_d_s(31 downto 0) & m6_d_s & m5_d_s & m4_d_s(31 downto 0) & m3_d_s & m2_d_s & m1_d_s & m0_d_s(31 downto 0);

end architecture;








