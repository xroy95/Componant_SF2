----------------------------------------------------------------------
-- Created by SmartDesign Tue Jul  9 23:16:05 2019
-- Version: v12.0 12.500.0.22
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library smartfusion2;
use smartfusion2.all;
library COREAPB3_LIB;
use COREAPB3_LIB.all;
use COREAPB3_LIB.components.all;
----------------------------------------------------------------------
-- mss_top_sb entity declaration
----------------------------------------------------------------------
entity mss_top_sb is
    -- Port list
    port(
        -- Inputs
        AMBA_SLAVE_0_PRDATAS0  : in  std_logic_vector(31 downto 0);
        AMBA_SLAVE_0_PREADYS0  : in  std_logic;
        AMBA_SLAVE_0_PSLVERRS0 : in  std_logic;
        DEVRST_N               : in  std_logic;
        FAB_RESET_N            : in  std_logic;
        MMUART_0_RXD_F2M       : in  std_logic;
        SPI_0_CLK_F2M          : in  std_logic;
        SPI_0_DI_F2M           : in  std_logic;
        SPI_0_SS0_F2M          : in  std_logic;
        -- Outputs
        AMBA_SLAVE_0_PADDRS    : out std_logic_vector(31 downto 0);
        AMBA_SLAVE_0_PENABLES  : out std_logic;
        AMBA_SLAVE_0_PSELS0    : out std_logic;
        AMBA_SLAVE_0_PWDATAS   : out std_logic_vector(31 downto 0);
        AMBA_SLAVE_0_PWRITES   : out std_logic;
        FAB_CCC_GL1            : out std_logic;
        FAB_CCC_LOCK           : out std_logic;
        FIC_0_CLK              : out std_logic;
        FIC_0_LOCK             : out std_logic;
        INIT_DONE              : out std_logic;
        MMUART_0_TXD_M2F       : out std_logic;
        MSS_READY              : out std_logic;
        POWER_ON_RESET_N       : out std_logic;
        SPI_0_CLK_M2F          : out std_logic;
        SPI_0_DO_M2F           : out std_logic;
        SPI_0_SS0_M2F          : out std_logic;
        SPI_0_SS0_M2F_OE       : out std_logic
        );
end mss_top_sb;
----------------------------------------------------------------------
-- mss_top_sb architecture body
----------------------------------------------------------------------
architecture RTL of mss_top_sb is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- mss_top_sb_CCC_0_FCCC   -   Actel:SgCore:FCCC:2.0.201
component mss_top_sb_CCC_0_FCCC
    -- Port list
    port(
        -- Inputs
        RCOSC_25_50MHZ : in  std_logic;
        -- Outputs
        GL0            : out std_logic;
        GL1            : out std_logic;
        LOCK           : out std_logic
        );
end component;
-- CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
-- using entity instantiation for component CoreAPB3
-- CoreResetP   -   Actel:DirectCore:CoreResetP:7.1.100
component CoreResetP
    generic( 
        DDR_WAIT            : integer := 200 ;
        DEVICE_090          : integer := 0 ;
        DEVICE_VOLTAGE      : integer := 2 ;
        ENABLE_SOFT_RESETS  : integer := 0 ;
        EXT_RESET_CFG       : integer := 0 ;
        FDDR_IN_USE         : integer := 0 ;
        MDDR_IN_USE         : integer := 0 ;
        SDIF0_IN_USE        : integer := 0 ;
        SDIF0_PCIE          : integer := 0 ;
        SDIF0_PCIE_HOTRESET : integer := 1 ;
        SDIF0_PCIE_L2P2     : integer := 1 ;
        SDIF1_IN_USE        : integer := 0 ;
        SDIF1_PCIE          : integer := 0 ;
        SDIF1_PCIE_HOTRESET : integer := 1 ;
        SDIF1_PCIE_L2P2     : integer := 1 ;
        SDIF2_IN_USE        : integer := 0 ;
        SDIF2_PCIE          : integer := 0 ;
        SDIF2_PCIE_HOTRESET : integer := 1 ;
        SDIF2_PCIE_L2P2     : integer := 1 ;
        SDIF3_IN_USE        : integer := 0 ;
        SDIF3_PCIE          : integer := 0 ;
        SDIF3_PCIE_HOTRESET : integer := 1 ;
        SDIF3_PCIE_L2P2     : integer := 1 
        );
    -- Port list
    port(
        -- Inputs
        CLK_BASE                       : in  std_logic;
        CLK_LTSSM                      : in  std_logic;
        CONFIG1_DONE                   : in  std_logic;
        CONFIG2_DONE                   : in  std_logic;
        FAB_RESET_N                    : in  std_logic;
        FIC_2_APB_M_PRESET_N           : in  std_logic;
        FPLL_LOCK                      : in  std_logic;
        POWER_ON_RESET_N               : in  std_logic;
        RCOSC_25_50MHZ                 : in  std_logic;
        RESET_N_M2F                    : in  std_logic;
        SDIF0_PERST_N                  : in  std_logic;
        SDIF0_PRDATA                   : in  std_logic_vector(31 downto 0);
        SDIF0_PSEL                     : in  std_logic;
        SDIF0_PWRITE                   : in  std_logic;
        SDIF0_SPLL_LOCK                : in  std_logic;
        SDIF1_PERST_N                  : in  std_logic;
        SDIF1_PRDATA                   : in  std_logic_vector(31 downto 0);
        SDIF1_PSEL                     : in  std_logic;
        SDIF1_PWRITE                   : in  std_logic;
        SDIF1_SPLL_LOCK                : in  std_logic;
        SDIF2_PERST_N                  : in  std_logic;
        SDIF2_PRDATA                   : in  std_logic_vector(31 downto 0);
        SDIF2_PSEL                     : in  std_logic;
        SDIF2_PWRITE                   : in  std_logic;
        SDIF2_SPLL_LOCK                : in  std_logic;
        SDIF3_PERST_N                  : in  std_logic;
        SDIF3_PRDATA                   : in  std_logic_vector(31 downto 0);
        SDIF3_PSEL                     : in  std_logic;
        SDIF3_PWRITE                   : in  std_logic;
        SDIF3_SPLL_LOCK                : in  std_logic;
        SOFT_EXT_RESET_OUT             : in  std_logic;
        SOFT_FDDR_CORE_RESET           : in  std_logic;
        SOFT_M3_RESET                  : in  std_logic;
        SOFT_MDDR_DDR_AXI_S_CORE_RESET : in  std_logic;
        SOFT_RESET_F2M                 : in  std_logic;
        SOFT_SDIF0_0_CORE_RESET        : in  std_logic;
        SOFT_SDIF0_1_CORE_RESET        : in  std_logic;
        SOFT_SDIF0_CORE_RESET          : in  std_logic;
        SOFT_SDIF0_PHY_RESET           : in  std_logic;
        SOFT_SDIF1_CORE_RESET          : in  std_logic;
        SOFT_SDIF1_PHY_RESET           : in  std_logic;
        SOFT_SDIF2_CORE_RESET          : in  std_logic;
        SOFT_SDIF2_PHY_RESET           : in  std_logic;
        SOFT_SDIF3_CORE_RESET          : in  std_logic;
        SOFT_SDIF3_PHY_RESET           : in  std_logic;
        -- Outputs
        DDR_READY                      : out std_logic;
        EXT_RESET_OUT                  : out std_logic;
        FDDR_CORE_RESET_N              : out std_logic;
        INIT_DONE                      : out std_logic;
        M3_RESET_N                     : out std_logic;
        MDDR_DDR_AXI_S_CORE_RESET_N    : out std_logic;
        MSS_HPMS_READY                 : out std_logic;
        RESET_N_F2M                    : out std_logic;
        SDIF0_0_CORE_RESET_N           : out std_logic;
        SDIF0_1_CORE_RESET_N           : out std_logic;
        SDIF0_CORE_RESET_N             : out std_logic;
        SDIF0_PHY_RESET_N              : out std_logic;
        SDIF1_CORE_RESET_N             : out std_logic;
        SDIF1_PHY_RESET_N              : out std_logic;
        SDIF2_CORE_RESET_N             : out std_logic;
        SDIF2_PHY_RESET_N              : out std_logic;
        SDIF3_CORE_RESET_N             : out std_logic;
        SDIF3_PHY_RESET_N              : out std_logic;
        SDIF_READY                     : out std_logic;
        SDIF_RELEASED                  : out std_logic
        );
end component;
-- mss_top_sb_FABOSC_0_OSC   -   Actel:SgCore:OSC:2.0.101
component mss_top_sb_FABOSC_0_OSC
    -- Port list
    port(
        -- Inputs
        XTL                : in  std_logic;
        -- Outputs
        RCOSC_1MHZ_CCC     : out std_logic;
        RCOSC_1MHZ_O2F     : out std_logic;
        RCOSC_25_50MHZ_CCC : out std_logic;
        RCOSC_25_50MHZ_O2F : out std_logic;
        XTLOSC_CCC         : out std_logic;
        XTLOSC_O2F         : out std_logic
        );
end component;
-- mss_top_sb_MSS
component mss_top_sb_MSS
    -- Port list
    port(
        -- Inputs
        FIC_0_APB_M_PRDATA     : in  std_logic_vector(31 downto 0);
        FIC_0_APB_M_PREADY     : in  std_logic;
        FIC_0_APB_M_PSLVERR    : in  std_logic;
        FIC_2_APB_M_PRDATA     : in  std_logic_vector(31 downto 0);
        FIC_2_APB_M_PREADY     : in  std_logic;
        FIC_2_APB_M_PSLVERR    : in  std_logic;
        MCCC_CLK_BASE          : in  std_logic;
        MCCC_CLK_BASE_PLL_LOCK : in  std_logic;
        MMUART_0_RXD_F2M       : in  std_logic;
        MSS_RESET_N_F2M        : in  std_logic;
        SPI_0_CLK_F2M          : in  std_logic;
        SPI_0_DI_F2M           : in  std_logic;
        SPI_0_SS0_F2M          : in  std_logic;
        -- Outputs
        FIC_0_APB_M_PADDR      : out std_logic_vector(31 downto 0);
        FIC_0_APB_M_PENABLE    : out std_logic;
        FIC_0_APB_M_PSEL       : out std_logic;
        FIC_0_APB_M_PWDATA     : out std_logic_vector(31 downto 0);
        FIC_0_APB_M_PWRITE     : out std_logic;
        FIC_2_APB_M_PADDR      : out std_logic_vector(15 downto 2);
        FIC_2_APB_M_PCLK       : out std_logic;
        FIC_2_APB_M_PENABLE    : out std_logic;
        FIC_2_APB_M_PRESET_N   : out std_logic;
        FIC_2_APB_M_PSEL       : out std_logic;
        FIC_2_APB_M_PWDATA     : out std_logic_vector(31 downto 0);
        FIC_2_APB_M_PWRITE     : out std_logic;
        MMUART_0_TXD_M2F       : out std_logic;
        MSS_RESET_N_M2F        : out std_logic;
        SPI_0_CLK_M2F          : out std_logic;
        SPI_0_DO_M2F           : out std_logic;
        SPI_0_SS0_M2F          : out std_logic;
        SPI_0_SS0_M2F_OE       : out std_logic
        );
end component;
-- SYSRESET
component SYSRESET
    -- Port list
    port(
        -- Inputs
        DEVRST_N         : in  std_logic;
        -- Outputs
        POWER_ON_RESET_N : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal APBmslave0_1_PADDR                                 : std_logic_vector(31 downto 0);
signal APBmslave0_1_PENABLE                               : std_logic;
signal APBmslave0_1_PSELx                                 : std_logic;
signal APBmslave0_1_PWDATA                                : std_logic_vector(31 downto 0);
signal APBmslave0_1_PWRITE                                : std_logic;
signal CORERESETP_0_RESET_N_F2M                           : std_logic;
signal FAB_CCC_GL1_net_0                                  : std_logic;
signal FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC : std_logic;
signal FABOSC_0_RCOSC_25_50MHZ_O2F                        : std_logic;
signal FIC_0_CLK_net_0                                    : std_logic;
signal FIC_0_LOCK_net_0                                   : std_logic;
signal INIT_DONE_net_0                                    : std_logic;
signal MMUART_0_TXD_M2F_net_0                             : std_logic;
signal MSS_READY_net_0                                    : std_logic;
signal mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR        : std_logic_vector(31 downto 0);
signal mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PENABLE      : std_logic;
signal mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA       : std_logic_vector(31 downto 0);
signal mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PREADY       : std_logic;
signal mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx        : std_logic;
signal mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSLVERR      : std_logic;
signal mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWDATA       : std_logic_vector(31 downto 0);
signal mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWRITE       : std_logic;
signal mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N          : std_logic;
signal mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F               : std_logic;
signal POWER_ON_RESET_N_net_0                             : std_logic;
signal SPI_0_CLK_M2F_net_0                                : std_logic;
signal SPI_0_DO_M2F_net_0                                 : std_logic;
signal SPI_0_SS0_M2F_net_0                                : std_logic;
signal SPI_0_SS0_M2F_OE_net_0                             : std_logic;
signal POWER_ON_RESET_N_net_1                             : std_logic;
signal INIT_DONE_net_1                                    : std_logic;
signal APBmslave0_1_PADDR_net_0                           : std_logic_vector(31 downto 0);
signal APBmslave0_1_PSELx_net_0                           : std_logic;
signal APBmslave0_1_PENABLE_net_0                         : std_logic;
signal APBmslave0_1_PWRITE_net_0                          : std_logic;
signal APBmslave0_1_PWDATA_net_0                          : std_logic_vector(31 downto 0);
signal FIC_0_CLK_net_1                                    : std_logic;
signal FIC_0_LOCK_net_1                                   : std_logic;
signal FAB_CCC_GL1_net_1                                  : std_logic;
signal FIC_0_LOCK_net_2                                   : std_logic;
signal MSS_READY_net_1                                    : std_logic;
signal MMUART_0_TXD_M2F_net_1                             : std_logic;
signal SPI_0_DO_M2F_net_1                                 : std_logic;
signal SPI_0_CLK_M2F_net_1                                : std_logic;
signal SPI_0_SS0_M2F_net_1                                : std_logic;
signal SPI_0_SS0_M2F_OE_net_1                             : std_logic;
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal VCC_net                                            : std_logic;
signal GND_net                                            : std_logic;
signal PADDR_const_net_0                                  : std_logic_vector(7 downto 2);
signal PWDATA_const_net_0                                 : std_logic_vector(7 downto 0);
signal IADDR_const_net_0                                  : std_logic_vector(31 downto 0);
signal SDIF0_PRDATA_const_net_0                           : std_logic_vector(31 downto 0);
signal SDIF1_PRDATA_const_net_0                           : std_logic_vector(31 downto 0);
signal SDIF2_PRDATA_const_net_0                           : std_logic_vector(31 downto 0);
signal SDIF3_PRDATA_const_net_0                           : std_logic_vector(31 downto 0);
signal PRDATAS1_const_net_0                               : std_logic_vector(31 downto 0);
signal PRDATAS2_const_net_0                               : std_logic_vector(31 downto 0);
signal PRDATAS3_const_net_0                               : std_logic_vector(31 downto 0);
signal PRDATAS4_const_net_0                               : std_logic_vector(31 downto 0);
signal PRDATAS5_const_net_0                               : std_logic_vector(31 downto 0);
signal PRDATAS6_const_net_0                               : std_logic_vector(31 downto 0);
signal PRDATAS7_const_net_0                               : std_logic_vector(31 downto 0);
signal PRDATAS8_const_net_0                               : std_logic_vector(31 downto 0);
signal PRDATAS9_const_net_0                               : std_logic_vector(31 downto 0);
signal PRDATAS10_const_net_0                              : std_logic_vector(31 downto 0);
signal PRDATAS11_const_net_0                              : std_logic_vector(31 downto 0);
signal PRDATAS12_const_net_0                              : std_logic_vector(31 downto 0);
signal PRDATAS13_const_net_0                              : std_logic_vector(31 downto 0);
signal PRDATAS14_const_net_0                              : std_logic_vector(31 downto 0);
signal PRDATAS15_const_net_0                              : std_logic_vector(31 downto 0);
signal PRDATAS16_const_net_0                              : std_logic_vector(31 downto 0);
signal FIC_2_APB_M_PRDATA_const_net_0                     : std_logic_vector(31 downto 0);

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 VCC_net                        <= '1';
 GND_net                        <= '0';
 PADDR_const_net_0              <= B"000000";
 PWDATA_const_net_0             <= B"00000000";
 IADDR_const_net_0              <= B"00000000000000000000000000000000";
 SDIF0_PRDATA_const_net_0       <= B"00000000000000000000000000000000";
 SDIF1_PRDATA_const_net_0       <= B"00000000000000000000000000000000";
 SDIF2_PRDATA_const_net_0       <= B"00000000000000000000000000000000";
 SDIF3_PRDATA_const_net_0       <= B"00000000000000000000000000000000";
 PRDATAS1_const_net_0           <= B"00000000000000000000000000000000";
 PRDATAS2_const_net_0           <= B"00000000000000000000000000000000";
 PRDATAS3_const_net_0           <= B"00000000000000000000000000000000";
 PRDATAS4_const_net_0           <= B"00000000000000000000000000000000";
 PRDATAS5_const_net_0           <= B"00000000000000000000000000000000";
 PRDATAS6_const_net_0           <= B"00000000000000000000000000000000";
 PRDATAS7_const_net_0           <= B"00000000000000000000000000000000";
 PRDATAS8_const_net_0           <= B"00000000000000000000000000000000";
 PRDATAS9_const_net_0           <= B"00000000000000000000000000000000";
 PRDATAS10_const_net_0          <= B"00000000000000000000000000000000";
 PRDATAS11_const_net_0          <= B"00000000000000000000000000000000";
 PRDATAS12_const_net_0          <= B"00000000000000000000000000000000";
 PRDATAS13_const_net_0          <= B"00000000000000000000000000000000";
 PRDATAS14_const_net_0          <= B"00000000000000000000000000000000";
 PRDATAS15_const_net_0          <= B"00000000000000000000000000000000";
 PRDATAS16_const_net_0          <= B"00000000000000000000000000000000";
 FIC_2_APB_M_PRDATA_const_net_0 <= B"00000000000000000000000000000000";
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 POWER_ON_RESET_N_net_1            <= POWER_ON_RESET_N_net_0;
 POWER_ON_RESET_N                  <= POWER_ON_RESET_N_net_1;
 INIT_DONE_net_1                   <= INIT_DONE_net_0;
 INIT_DONE                         <= INIT_DONE_net_1;
 APBmslave0_1_PADDR_net_0          <= APBmslave0_1_PADDR;
 AMBA_SLAVE_0_PADDRS(31 downto 0)  <= APBmslave0_1_PADDR_net_0;
 APBmslave0_1_PSELx_net_0          <= APBmslave0_1_PSELx;
 AMBA_SLAVE_0_PSELS0               <= APBmslave0_1_PSELx_net_0;
 APBmslave0_1_PENABLE_net_0        <= APBmslave0_1_PENABLE;
 AMBA_SLAVE_0_PENABLES             <= APBmslave0_1_PENABLE_net_0;
 APBmslave0_1_PWRITE_net_0         <= APBmslave0_1_PWRITE;
 AMBA_SLAVE_0_PWRITES              <= APBmslave0_1_PWRITE_net_0;
 APBmslave0_1_PWDATA_net_0         <= APBmslave0_1_PWDATA;
 AMBA_SLAVE_0_PWDATAS(31 downto 0) <= APBmslave0_1_PWDATA_net_0;
 FIC_0_CLK_net_1                   <= FIC_0_CLK_net_0;
 FIC_0_CLK                         <= FIC_0_CLK_net_1;
 FIC_0_LOCK_net_1                  <= FIC_0_LOCK_net_0;
 FIC_0_LOCK                        <= FIC_0_LOCK_net_1;
 FAB_CCC_GL1_net_1                 <= FAB_CCC_GL1_net_0;
 FAB_CCC_GL1                       <= FAB_CCC_GL1_net_1;
 FIC_0_LOCK_net_2                  <= FIC_0_LOCK_net_0;
 FAB_CCC_LOCK                      <= FIC_0_LOCK_net_2;
 MSS_READY_net_1                   <= MSS_READY_net_0;
 MSS_READY                         <= MSS_READY_net_1;
 MMUART_0_TXD_M2F_net_1            <= MMUART_0_TXD_M2F_net_0;
 MMUART_0_TXD_M2F                  <= MMUART_0_TXD_M2F_net_1;
 SPI_0_DO_M2F_net_1                <= SPI_0_DO_M2F_net_0;
 SPI_0_DO_M2F                      <= SPI_0_DO_M2F_net_1;
 SPI_0_CLK_M2F_net_1               <= SPI_0_CLK_M2F_net_0;
 SPI_0_CLK_M2F                     <= SPI_0_CLK_M2F_net_1;
 SPI_0_SS0_M2F_net_1               <= SPI_0_SS0_M2F_net_0;
 SPI_0_SS0_M2F                     <= SPI_0_SS0_M2F_net_1;
 SPI_0_SS0_M2F_OE_net_1            <= SPI_0_SS0_M2F_OE_net_0;
 SPI_0_SS0_M2F_OE                  <= SPI_0_SS0_M2F_OE_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- CCC_0   -   Actel:SgCore:FCCC:2.0.201
CCC_0 : mss_top_sb_CCC_0_FCCC
    port map( 
        -- Inputs
        RCOSC_25_50MHZ => FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC,
        -- Outputs
        GL0            => FIC_0_CLK_net_0,
        GL1            => FAB_CCC_GL1_net_0,
        LOCK           => FIC_0_LOCK_net_0 
        );
-- CoreAPB3_0   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3_0 : entity COREAPB3_LIB.CoreAPB3
    generic map( 
        APB_DWIDTH      => ( 32 ),
        APBSLOT0ENABLE  => ( 1 ),
        APBSLOT1ENABLE  => ( 0 ),
        APBSLOT2ENABLE  => ( 0 ),
        APBSLOT3ENABLE  => ( 0 ),
        APBSLOT4ENABLE  => ( 0 ),
        APBSLOT5ENABLE  => ( 0 ),
        APBSLOT6ENABLE  => ( 0 ),
        APBSLOT7ENABLE  => ( 0 ),
        APBSLOT8ENABLE  => ( 0 ),
        APBSLOT9ENABLE  => ( 0 ),
        APBSLOT10ENABLE => ( 0 ),
        APBSLOT11ENABLE => ( 0 ),
        APBSLOT12ENABLE => ( 0 ),
        APBSLOT13ENABLE => ( 0 ),
        APBSLOT14ENABLE => ( 0 ),
        APBSLOT15ENABLE => ( 0 ),
        FAMILY          => ( 19 ),
        IADDR_OPTION    => ( 0 ),
        MADDR_BITS      => ( 16 ),
        SC_0            => ( 0 ),
        SC_1            => ( 0 ),
        SC_2            => ( 0 ),
        SC_3            => ( 0 ),
        SC_4            => ( 0 ),
        SC_5            => ( 0 ),
        SC_6            => ( 0 ),
        SC_7            => ( 0 ),
        SC_8            => ( 0 ),
        SC_9            => ( 0 ),
        SC_10           => ( 0 ),
        SC_11           => ( 0 ),
        SC_12           => ( 0 ),
        SC_13           => ( 0 ),
        SC_14           => ( 0 ),
        SC_15           => ( 0 ),
        UPR_NIBBLE_POSN => ( 3 )
        )
    port map( 
        -- Inputs
        PRESETN    => GND_net, -- tied to '0' from definition
        PCLK       => GND_net, -- tied to '0' from definition
        PADDR      => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR,
        PWRITE     => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWRITE,
        PENABLE    => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PENABLE,
        PWDATA     => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWDATA,
        PSEL       => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx,
        PRDATAS0   => AMBA_SLAVE_0_PRDATAS0,
        PREADYS0   => AMBA_SLAVE_0_PREADYS0,
        PSLVERRS0  => AMBA_SLAVE_0_PSLVERRS0,
        PRDATAS1   => PRDATAS1_const_net_0, -- tied to X"0" from definition
        PREADYS1   => VCC_net, -- tied to '1' from definition
        PSLVERRS1  => GND_net, -- tied to '0' from definition
        PRDATAS2   => PRDATAS2_const_net_0, -- tied to X"0" from definition
        PREADYS2   => VCC_net, -- tied to '1' from definition
        PSLVERRS2  => GND_net, -- tied to '0' from definition
        PRDATAS3   => PRDATAS3_const_net_0, -- tied to X"0" from definition
        PREADYS3   => VCC_net, -- tied to '1' from definition
        PSLVERRS3  => GND_net, -- tied to '0' from definition
        PRDATAS4   => PRDATAS4_const_net_0, -- tied to X"0" from definition
        PREADYS4   => VCC_net, -- tied to '1' from definition
        PSLVERRS4  => GND_net, -- tied to '0' from definition
        PRDATAS5   => PRDATAS5_const_net_0, -- tied to X"0" from definition
        PREADYS5   => VCC_net, -- tied to '1' from definition
        PSLVERRS5  => GND_net, -- tied to '0' from definition
        PRDATAS6   => PRDATAS6_const_net_0, -- tied to X"0" from definition
        PREADYS6   => VCC_net, -- tied to '1' from definition
        PSLVERRS6  => GND_net, -- tied to '0' from definition
        PRDATAS7   => PRDATAS7_const_net_0, -- tied to X"0" from definition
        PREADYS7   => VCC_net, -- tied to '1' from definition
        PSLVERRS7  => GND_net, -- tied to '0' from definition
        PRDATAS8   => PRDATAS8_const_net_0, -- tied to X"0" from definition
        PREADYS8   => VCC_net, -- tied to '1' from definition
        PSLVERRS8  => GND_net, -- tied to '0' from definition
        PRDATAS9   => PRDATAS9_const_net_0, -- tied to X"0" from definition
        PREADYS9   => VCC_net, -- tied to '1' from definition
        PSLVERRS9  => GND_net, -- tied to '0' from definition
        PRDATAS10  => PRDATAS10_const_net_0, -- tied to X"0" from definition
        PREADYS10  => VCC_net, -- tied to '1' from definition
        PSLVERRS10 => GND_net, -- tied to '0' from definition
        PRDATAS11  => PRDATAS11_const_net_0, -- tied to X"0" from definition
        PREADYS11  => VCC_net, -- tied to '1' from definition
        PSLVERRS11 => GND_net, -- tied to '0' from definition
        PRDATAS12  => PRDATAS12_const_net_0, -- tied to X"0" from definition
        PREADYS12  => VCC_net, -- tied to '1' from definition
        PSLVERRS12 => GND_net, -- tied to '0' from definition
        PRDATAS13  => PRDATAS13_const_net_0, -- tied to X"0" from definition
        PREADYS13  => VCC_net, -- tied to '1' from definition
        PSLVERRS13 => GND_net, -- tied to '0' from definition
        PRDATAS14  => PRDATAS14_const_net_0, -- tied to X"0" from definition
        PREADYS14  => VCC_net, -- tied to '1' from definition
        PSLVERRS14 => GND_net, -- tied to '0' from definition
        PRDATAS15  => PRDATAS15_const_net_0, -- tied to X"0" from definition
        PREADYS15  => VCC_net, -- tied to '1' from definition
        PSLVERRS15 => GND_net, -- tied to '0' from definition
        PRDATAS16  => PRDATAS16_const_net_0, -- tied to X"0" from definition
        PREADYS16  => VCC_net, -- tied to '1' from definition
        PSLVERRS16 => GND_net, -- tied to '0' from definition
        IADDR      => IADDR_const_net_0, -- tied to X"0" from definition
        -- Outputs
        PRDATA     => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA,
        PREADY     => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PREADY,
        PSLVERR    => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSLVERR,
        PADDRS     => APBmslave0_1_PADDR,
        PWRITES    => APBmslave0_1_PWRITE,
        PENABLES   => APBmslave0_1_PENABLE,
        PWDATAS    => APBmslave0_1_PWDATA,
        PSELS0     => APBmslave0_1_PSELx,
        PSELS1     => OPEN,
        PSELS2     => OPEN,
        PSELS3     => OPEN,
        PSELS4     => OPEN,
        PSELS5     => OPEN,
        PSELS6     => OPEN,
        PSELS7     => OPEN,
        PSELS8     => OPEN,
        PSELS9     => OPEN,
        PSELS10    => OPEN,
        PSELS11    => OPEN,
        PSELS12    => OPEN,
        PSELS13    => OPEN,
        PSELS14    => OPEN,
        PSELS15    => OPEN,
        PSELS16    => OPEN 
        );
-- CORERESETP_0   -   Actel:DirectCore:CoreResetP:7.1.100
CORERESETP_0 : CoreResetP
    generic map( 
        DDR_WAIT            => ( 200 ),
        DEVICE_090          => ( 0 ),
        DEVICE_VOLTAGE      => ( 2 ),
        ENABLE_SOFT_RESETS  => ( 0 ),
        EXT_RESET_CFG       => ( 0 ),
        FDDR_IN_USE         => ( 0 ),
        MDDR_IN_USE         => ( 0 ),
        SDIF0_IN_USE        => ( 0 ),
        SDIF0_PCIE          => ( 0 ),
        SDIF0_PCIE_HOTRESET => ( 1 ),
        SDIF0_PCIE_L2P2     => ( 1 ),
        SDIF1_IN_USE        => ( 0 ),
        SDIF1_PCIE          => ( 0 ),
        SDIF1_PCIE_HOTRESET => ( 1 ),
        SDIF1_PCIE_L2P2     => ( 1 ),
        SDIF2_IN_USE        => ( 0 ),
        SDIF2_PCIE          => ( 0 ),
        SDIF2_PCIE_HOTRESET => ( 1 ),
        SDIF2_PCIE_L2P2     => ( 1 ),
        SDIF3_IN_USE        => ( 0 ),
        SDIF3_PCIE          => ( 0 ),
        SDIF3_PCIE_HOTRESET => ( 1 ),
        SDIF3_PCIE_L2P2     => ( 1 )
        )
    port map( 
        -- Inputs
        RESET_N_M2F                    => mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F,
        FIC_2_APB_M_PRESET_N           => mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N,
        POWER_ON_RESET_N               => POWER_ON_RESET_N_net_0,
        FAB_RESET_N                    => FAB_RESET_N,
        RCOSC_25_50MHZ                 => FABOSC_0_RCOSC_25_50MHZ_O2F,
        CLK_BASE                       => FIC_0_CLK_net_0,
        CLK_LTSSM                      => GND_net, -- tied to '0' from definition
        FPLL_LOCK                      => VCC_net, -- tied to '1' from definition
        SDIF0_SPLL_LOCK                => VCC_net, -- tied to '1' from definition
        SDIF1_SPLL_LOCK                => VCC_net, -- tied to '1' from definition
        SDIF2_SPLL_LOCK                => VCC_net, -- tied to '1' from definition
        SDIF3_SPLL_LOCK                => VCC_net, -- tied to '1' from definition
        CONFIG1_DONE                   => VCC_net,
        CONFIG2_DONE                   => VCC_net,
        SDIF0_PERST_N                  => VCC_net, -- tied to '1' from definition
        SDIF1_PERST_N                  => VCC_net, -- tied to '1' from definition
        SDIF2_PERST_N                  => VCC_net, -- tied to '1' from definition
        SDIF3_PERST_N                  => VCC_net, -- tied to '1' from definition
        SDIF0_PSEL                     => GND_net, -- tied to '0' from definition
        SDIF0_PWRITE                   => VCC_net, -- tied to '1' from definition
        SDIF0_PRDATA                   => SDIF0_PRDATA_const_net_0, -- tied to X"0" from definition
        SDIF1_PSEL                     => GND_net, -- tied to '0' from definition
        SDIF1_PWRITE                   => VCC_net, -- tied to '1' from definition
        SDIF1_PRDATA                   => SDIF1_PRDATA_const_net_0, -- tied to X"0" from definition
        SDIF2_PSEL                     => GND_net, -- tied to '0' from definition
        SDIF2_PWRITE                   => VCC_net, -- tied to '1' from definition
        SDIF2_PRDATA                   => SDIF2_PRDATA_const_net_0, -- tied to X"0" from definition
        SDIF3_PSEL                     => GND_net, -- tied to '0' from definition
        SDIF3_PWRITE                   => VCC_net, -- tied to '1' from definition
        SDIF3_PRDATA                   => SDIF3_PRDATA_const_net_0, -- tied to X"0" from definition
        SOFT_EXT_RESET_OUT             => GND_net, -- tied to '0' from definition
        SOFT_RESET_F2M                 => GND_net, -- tied to '0' from definition
        SOFT_M3_RESET                  => GND_net, -- tied to '0' from definition
        SOFT_MDDR_DDR_AXI_S_CORE_RESET => GND_net, -- tied to '0' from definition
        SOFT_FDDR_CORE_RESET           => GND_net, -- tied to '0' from definition
        SOFT_SDIF0_PHY_RESET           => GND_net, -- tied to '0' from definition
        SOFT_SDIF0_CORE_RESET          => GND_net, -- tied to '0' from definition
        SOFT_SDIF0_0_CORE_RESET        => GND_net, -- tied to '0' from definition
        SOFT_SDIF0_1_CORE_RESET        => GND_net, -- tied to '0' from definition
        SOFT_SDIF1_PHY_RESET           => GND_net, -- tied to '0' from definition
        SOFT_SDIF1_CORE_RESET          => GND_net, -- tied to '0' from definition
        SOFT_SDIF2_PHY_RESET           => GND_net, -- tied to '0' from definition
        SOFT_SDIF2_CORE_RESET          => GND_net, -- tied to '0' from definition
        SOFT_SDIF3_PHY_RESET           => GND_net, -- tied to '0' from definition
        SOFT_SDIF3_CORE_RESET          => GND_net, -- tied to '0' from definition
        -- Outputs
        MSS_HPMS_READY                 => MSS_READY_net_0,
        DDR_READY                      => OPEN,
        SDIF_READY                     => OPEN,
        RESET_N_F2M                    => CORERESETP_0_RESET_N_F2M,
        M3_RESET_N                     => OPEN,
        EXT_RESET_OUT                  => OPEN,
        MDDR_DDR_AXI_S_CORE_RESET_N    => OPEN,
        FDDR_CORE_RESET_N              => OPEN,
        SDIF0_CORE_RESET_N             => OPEN,
        SDIF0_0_CORE_RESET_N           => OPEN,
        SDIF0_1_CORE_RESET_N           => OPEN,
        SDIF0_PHY_RESET_N              => OPEN,
        SDIF1_CORE_RESET_N             => OPEN,
        SDIF1_PHY_RESET_N              => OPEN,
        SDIF2_CORE_RESET_N             => OPEN,
        SDIF2_PHY_RESET_N              => OPEN,
        SDIF3_CORE_RESET_N             => OPEN,
        SDIF3_PHY_RESET_N              => OPEN,
        SDIF_RELEASED                  => OPEN,
        INIT_DONE                      => INIT_DONE_net_0 
        );
-- FABOSC_0   -   Actel:SgCore:OSC:2.0.101
FABOSC_0 : mss_top_sb_FABOSC_0_OSC
    port map( 
        -- Inputs
        XTL                => GND_net, -- tied to '0' from definition
        -- Outputs
        RCOSC_25_50MHZ_CCC => FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC,
        RCOSC_25_50MHZ_O2F => FABOSC_0_RCOSC_25_50MHZ_O2F,
        RCOSC_1MHZ_CCC     => OPEN,
        RCOSC_1MHZ_O2F     => OPEN,
        XTLOSC_CCC         => OPEN,
        XTLOSC_O2F         => OPEN 
        );
-- mss_top_sb_MSS_0
mss_top_sb_MSS_0 : mss_top_sb_MSS
    port map( 
        -- Inputs
        MCCC_CLK_BASE          => FIC_0_CLK_net_0,
        MCCC_CLK_BASE_PLL_LOCK => FIC_0_LOCK_net_0,
        MSS_RESET_N_F2M        => CORERESETP_0_RESET_N_F2M,
        MMUART_0_RXD_F2M       => MMUART_0_RXD_F2M,
        SPI_0_DI_F2M           => SPI_0_DI_F2M,
        SPI_0_CLK_F2M          => SPI_0_CLK_F2M,
        SPI_0_SS0_F2M          => SPI_0_SS0_F2M,
        FIC_0_APB_M_PREADY     => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PREADY,
        FIC_0_APB_M_PSLVERR    => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSLVERR,
        FIC_2_APB_M_PREADY     => VCC_net, -- tied to '1' from definition
        FIC_2_APB_M_PSLVERR    => GND_net, -- tied to '0' from definition
        FIC_0_APB_M_PRDATA     => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA,
        FIC_2_APB_M_PRDATA     => FIC_2_APB_M_PRDATA_const_net_0, -- tied to X"0" from definition
        -- Outputs
        MSS_RESET_N_M2F        => mss_top_sb_MSS_TMP_0_MSS_RESET_N_M2F,
        MMUART_0_TXD_M2F       => MMUART_0_TXD_M2F_net_0,
        SPI_0_DO_M2F           => SPI_0_DO_M2F_net_0,
        SPI_0_CLK_M2F          => SPI_0_CLK_M2F_net_0,
        SPI_0_SS0_M2F          => SPI_0_SS0_M2F_net_0,
        SPI_0_SS0_M2F_OE       => SPI_0_SS0_M2F_OE_net_0,
        FIC_0_APB_M_PSEL       => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx,
        FIC_0_APB_M_PWRITE     => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWRITE,
        FIC_0_APB_M_PENABLE    => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PENABLE,
        FIC_2_APB_M_PRESET_N   => mss_top_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N,
        FIC_2_APB_M_PCLK       => OPEN,
        FIC_2_APB_M_PWRITE     => OPEN,
        FIC_2_APB_M_PENABLE    => OPEN,
        FIC_2_APB_M_PSEL       => OPEN,
        FIC_0_APB_M_PADDR      => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR,
        FIC_0_APB_M_PWDATA     => mss_top_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWDATA,
        FIC_2_APB_M_PADDR      => OPEN,
        FIC_2_APB_M_PWDATA     => OPEN 
        );
-- SYSRESET_POR
SYSRESET_POR : SYSRESET
    port map( 
        -- Inputs
        DEVRST_N         => DEVRST_N,
        -- Outputs
        POWER_ON_RESET_N => POWER_ON_RESET_N_net_0 
        );

end RTL;
