library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity iq_prod is
    generic (
        mult_num : natural := 10;
        streams  : natural := 8;
        bits     : natural := 16

    );
    port (
        aclk     : in std_logic;

        axis_di0 : in std_logic_vector(bits - 1 downto 0); 
        axis_vi0 : in std_logic; 
        axis_ri0 : out std_logic;
        
        axis_dq0 : in std_logic_vector(bits - 1 downto 0); 
        axis_vq0 : in std_logic; 
        axis_rq0 : out std_logic;
        
        axis_di1 : in std_logic_vector(bits - 1 downto 0); 
        axis_vi1 : in std_logic; 
        axis_ri1 : out std_logic;
        
        axis_dq1 : in std_logic_vector(bits - 1 downto 0); 
        axis_vq1 : in std_logic; 
        axis_rq1 : out std_logic;
        
        axis_di2 : in std_logic_vector(bits - 1 downto 0); 
        axis_vi2 : in std_logic; 
        axis_ri2 : out std_logic;
        
        axis_dq2 : in std_logic_vector(bits - 1 downto 0); 
        axis_vq2 : in std_logic; 
        axis_rq2 : out std_logic;
        
        axis_di3 : in std_logic_vector(bits - 1 downto 0); 
        axis_vi3 : in std_logic; 
        axis_ri3 : out std_logic;
        
        axis_dq3 : in std_logic_vector(bits - 1 downto 0); 
        axis_vq3 : in std_logic; 
        axis_rq3 : out std_logic;
        
        axis_do0 : out std_logic_vector(bits * streams/2 * mult_num - 1 downto 0); 
        axis_vo0 : out std_logic; 
        axis_ro0 : in std_logic
    );
end iq_prod;

architecture rtl of iq_prod is

    ATTRIBUTE X_INTERFACE_INFO : STRING;
    ATTRIBUTE X_INTERFACE_INFO of axis_di0: SIGNAL is "xilinx.com:interface:axis:1.0 axis_i0 TDATA";
    ATTRIBUTE X_INTERFACE_INFO of axis_vi0: SIGNAL is "xilinx.com:interface:axis:1.0 axis_i0 TVALID";
    ATTRIBUTE X_INTERFACE_INFO of axis_ri0: SIGNAL is "xilinx.com:interface:axis:1.0 axis_i0 TREADY";
    ATTRIBUTE X_INTERFACE_INFO of axis_dq0: SIGNAL is "xilinx.com:interface:axis:1.0 axis_q0 TDATA";
    ATTRIBUTE X_INTERFACE_INFO of axis_vq0: SIGNAL is "xilinx.com:interface:axis:1.0 axis_q0 TVALID";
    ATTRIBUTE X_INTERFACE_INFO of axis_rq0: SIGNAL is "xilinx.com:interface:axis:1.0 axis_q0 TREADY";

    ATTRIBUTE X_INTERFACE_INFO of axis_di1: SIGNAL is "xilinx.com:interface:axis:1.0 axis_i1 TDATA";
    ATTRIBUTE X_INTERFACE_INFO of axis_vi1: SIGNAL is "xilinx.com:interface:axis:1.0 axis_i1 TVALID";
    ATTRIBUTE X_INTERFACE_INFO of axis_ri1: SIGNAL is "xilinx.com:interface:axis:1.0 axis_i1 TREADY";
    ATTRIBUTE X_INTERFACE_INFO of axis_dq1: SIGNAL is "xilinx.com:interface:axis:1.0 axis_q1 TDATA";
    ATTRIBUTE X_INTERFACE_INFO of axis_vq1: SIGNAL is "xilinx.com:interface:axis:1.0 axis_q1 TVALID";
    ATTRIBUTE X_INTERFACE_INFO of axis_rq1: SIGNAL is "xilinx.com:interface:axis:1.0 axis_q1 TREADY";

    ATTRIBUTE X_INTERFACE_INFO of axis_di2: SIGNAL is "xilinx.com:interface:axis:1.0 axis_i2 TDATA";
    ATTRIBUTE X_INTERFACE_INFO of axis_vi2: SIGNAL is "xilinx.com:interface:axis:1.0 axis_i2 TVALID";
    ATTRIBUTE X_INTERFACE_INFO of axis_ri2: SIGNAL is "xilinx.com:interface:axis:1.0 axis_i2 TREADY";
    ATTRIBUTE X_INTERFACE_INFO of axis_dq2: SIGNAL is "xilinx.com:interface:axis:1.0 axis_q2 TDATA";
    ATTRIBUTE X_INTERFACE_INFO of axis_vq2: SIGNAL is "xilinx.com:interface:axis:1.0 axis_q2 TVALID";
    ATTRIBUTE X_INTERFACE_INFO of axis_rq2: SIGNAL is "xilinx.com:interface:axis:1.0 axis_q2 TREADY";

    ATTRIBUTE X_INTERFACE_INFO of axis_di3: SIGNAL is "xilinx.com:interface:axis:1.0 axis_i3 TDATA";
    ATTRIBUTE X_INTERFACE_INFO of axis_vi3: SIGNAL is "xilinx.com:interface:axis:1.0 axis_i3 TVALID";
    ATTRIBUTE X_INTERFACE_INFO of axis_ri3: SIGNAL is "xilinx.com:interface:axis:1.0 axis_i3 TREADY";
    ATTRIBUTE X_INTERFACE_INFO of axis_dq3: SIGNAL is "xilinx.com:interface:axis:1.0 axis_q3 TDATA";
    ATTRIBUTE X_INTERFACE_INFO of axis_vq3: SIGNAL is "xilinx.com:interface:axis:1.0 axis_q3 TVALID";
    ATTRIBUTE X_INTERFACE_INFO of axis_rq3: SIGNAL is "xilinx.com:interface:axis:1.0 axis_q3 TREADY";

    ATTRIBUTE X_INTERFACE_INFO of axis_do0: SIGNAL is "xilinx.com:interface:axis:1.0 axis_prod0 TDATA";
    ATTRIBUTE X_INTERFACE_INFO of axis_vo0: SIGNAL is "xilinx.com:interface:axis:1.0 axis_prod0 TVALID";
    ATTRIBUTE X_INTERFACE_INFO of axis_ro0: SIGNAL is "xilinx.com:interface:axis:1.0 axis_prod0 TREADY";

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
-- Input valids
    signal m0_iv    : std_logic        := '0';
    signal m0_qv    : std_logic        := '0';
    signal m1_iv    : std_logic        := '0';
    signal m1_qv    : std_logic        := '0';
    signal m2_iv    : std_logic        := '0';
    signal m2_qv    : std_logic        := '0';
    signal m3_iv    : std_logic        := '0';
    signal m3_qv    : std_logic        := '0';
    signal m4_iv    : std_logic        := '0';
    signal m4_qv    : std_logic        := '0';
    signal m5_iv    : std_logic        := '0';
    signal m5_qv    : std_logic        := '0';
    signal m6_iv    : std_logic        := '0';
    signal m6_qv    : std_logic        := '0';
    signal m7_iv    : std_logic        := '0';
    signal m7_qv    : std_logic        := '0';
    signal m8_iv    : std_logic        := '0';
    signal m8_qv    : std_logic        := '0';
    signal m9_iv    : std_logic        := '0';
    signal m9_qv    : std_logic        := '0';
-- Output valids
    signal c0_v     : std_logic        := '0';

    signal m0_v     : std_logic        := '0';
    signal m1_v     : std_logic        := '0';
    signal m2_v     : std_logic        := '0';
    signal m3_v     : std_logic        := '0';
    signal m4_v     : std_logic        := '0';
    signal m5_v     : std_logic        := '0';
    signal m6_v     : std_logic        := '0';
    signal m7_v     : std_logic        := '0';
    signal m8_v     : std_logic        := '0';
    signal m9_v     : std_logic        := '0';
-- Input cmult dat a and conj input data     
    signal c0_d     : std_logic_vector(bits*2 - 1 downto 0) := (others => '0');
    signal c0_d_c   : std_logic_vector(bits*2 - 1 downto 0) := (others => '0');
    signal c1_d     : std_logic_vector(bits*2 - 1 downto 0) := (others => '0');
    signal c1_d_c   : std_logic_vector(bits*2 - 1 downto 0) := (others => '0');
    signal c2_d     : std_logic_vector(bits*2 - 1 downto 0) := (others => '0');
    signal c2_d_c   : std_logic_vector(bits*2 - 1 downto 0) := (others => '0');
    signal c3_d     : std_logic_vector(bits*2 - 1 downto 0) := (others => '0');
    signal c3_d_c   : std_logic_vector(bits*2 - 1 downto 0) := (others => '0');
-- Output cmult data 
    signal m0_d     : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m1_d     : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m2_d     : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m3_d     : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m4_d     : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m5_d     : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m6_d     : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m7_d     : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m8_d     : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m9_d     : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
-- Output cmult data 
    signal m0_d_s   : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m1_d_s   : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m2_d_s   : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m3_d_s   : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m4_d_s   : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m5_d_s   : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m6_d_s   : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m7_d_s   : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m8_d_s   : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');
    signal m9_d_s   : std_logic_vector(bits*4 - 1 downto 0) := (others => '0');

COMPONENT cmpy_0
PORT (
  aclk : IN STD_LOGIC;
  s_axis_a_tvalid : IN STD_LOGIC;
  s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
  s_axis_b_tvalid : IN STD_LOGIC;
  s_axis_b_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
  m_axis_dout_tvalid : OUT STD_LOGIC;
  m_axis_dout_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0) 
);
END COMPONENT;
begin
    process (aclk)
    begin
        if rising_edge(aclk) then
            axis_di0_s <= axis_di0;
            axis_dq0_s <= axis_dq0;
            axis_di1_s <= axis_di1;
            axis_dq1_s <= axis_dq1;
            axis_di2_s <= axis_di2;
            axis_dq2_s <= axis_dq2;
            axis_di3_s <= axis_di3;
            axis_dq3_s <= axis_dq3;

            c0_d <= axis_dq0_s & axis_di0_s;
            c0_d_c <= conj(axis_dq0_s) & axis_di0_s;
            c1_d <= axis_dq1_s & axis_di1_s;
            c1_d_c <= conj(axis_dq1_s) & axis_di1_s;
            c2_d <= axis_dq2_s & axis_di2_s;
            c2_d_c <= conj(axis_dq2_s) & axis_di2_s;
            c3_d <= axis_dq3_s & axis_di3_s;
            c3_d_c <= conj(axis_dq3_s) & axis_di3_s;

            m0_d_s <= m0_d;
            m1_d_s <= m1_d;
            m2_d_s <= m2_d;
            m3_d_s <= m3_d;
            m4_d_s <= m4_d;
            m5_d_s <= m5_d;
            m6_d_s <= m6_d;
            m7_d_s <= m7_d;
            m8_d_s <= m8_d;
            m9_d_s <= m9_d;

            c0_v <=  m9_v and m8_v and m7_v and m6_v and m5_v and m4_v and m3_v and m2_v and m1_v and m0_v;
        end if;
    end process;

    m0 : cmpy_0 
    PORT MAP (
        aclk => aclk,
        s_axis_a_tvalid => '1',
        s_axis_a_tdata => c0_d,
        s_axis_b_tvalid => '1',
        s_axis_b_tdata => c0_d_c,
        m_axis_dout_tvalid => m0_v,
        m_axis_dout_tdata => m0_d
    );
 
    m1 : cmpy_0
    PORT MAP (
        aclk => aclk,
        s_axis_a_tvalid => '1',
        s_axis_a_tdata => c0_d,
        s_axis_b_tvalid => '1',
        s_axis_b_tdata => c1_d_c,
        m_axis_dout_tvalid => m1_v,
        m_axis_dout_tdata => m1_d
    );

    m2 : cmpy_0
    PORT MAP (
        aclk => aclk,
        s_axis_a_tvalid => '1',
        s_axis_a_tdata => c0_d,
        s_axis_b_tvalid => '1',
        s_axis_b_tdata => c2_d_c,
        m_axis_dout_tvalid => m2_v,
        m_axis_dout_tdata => m2_d
    );

    m3 : cmpy_0
    PORT MAP (
        aclk => aclk,
        s_axis_a_tvalid => '1',
        s_axis_a_tdata => c0_d,
        s_axis_b_tvalid => '1',
        s_axis_b_tdata => c3_d_c,
        m_axis_dout_tvalid => m3_v,
        m_axis_dout_tdata => m3_d
    );

    m4 : cmpy_0
    PORT MAP (
        aclk => aclk,
        s_axis_a_tvalid => '1',
        s_axis_a_tdata => c1_d,
        s_axis_b_tvalid => '1',
        s_axis_b_tdata => c1_d_c,
        m_axis_dout_tvalid => m4_v,
        m_axis_dout_tdata => m4_d
    );

    m5 : cmpy_0
    PORT MAP (
        aclk => aclk,
        s_axis_a_tvalid => '1',
        s_axis_a_tdata => c1_d,
        s_axis_b_tvalid => '1',
        s_axis_b_tdata => c2_d_c,
        m_axis_dout_tvalid => m5_v,
        m_axis_dout_tdata => m5_d
    );

    m6 : cmpy_0
    PORT MAP (
        aclk => aclk,
        s_axis_a_tvalid => '1',
        s_axis_a_tdata => c1_d,
        s_axis_b_tvalid => '1',
        s_axis_b_tdata => c3_d_c,
        m_axis_dout_tvalid => m6_v,
        m_axis_dout_tdata => m6_d
    );

    m7 : cmpy_0
    PORT MAP (
        aclk => aclk,
        s_axis_a_tvalid => '1',
        s_axis_a_tdata => c2_d,
        s_axis_b_tvalid => '1',
        s_axis_b_tdata => c2_d_c,
        m_axis_dout_tvalid => m7_v,
        m_axis_dout_tdata => m7_d
    );

    m8 : cmpy_0
    PORT MAP (
        aclk => aclk,
        s_axis_a_tvalid => '1',
        s_axis_a_tdata => c2_d,
        s_axis_b_tvalid => '1',
        s_axis_b_tdata => c3_d_c,
        m_axis_dout_tvalid => m8_v,
        m_axis_dout_tdata => m8_d
    );

    m9 : cmpy_0
    PORT MAP (
        aclk => aclk,
        s_axis_a_tvalid => '1',
        s_axis_a_tdata => c3_d,
        s_axis_b_tvalid => '1',
        s_axis_b_tdata => c3_d_c,
        m_axis_dout_tvalid => m9_v,
        m_axis_dout_tdata => m9_d
    );

    axis_do0 <= m9_d_s & m8_d_s & m7_d_s & m6_d_s & m5_d_s & m4_d_s & m3_d_s & m2_d_s & m1_d_s & m0_d_s;
    axis_vo0 <= c0_v;

end architecture;








