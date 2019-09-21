----------------------------------------------------------------------
-- Created by SmartDesign Mon Jul 22 19:13:39 2019
-- Version: v12.0 12.500.0.22
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library smartfusion2;
use smartfusion2.all;
----------------------------------------------------------------------
-- PLL_Sound_Speed entity declaration
----------------------------------------------------------------------
entity PLL_Sound_Speed is
    -- Port list
    port(
        -- Inputs
        CLK0 : in  std_logic;
        -- Outputs
        GL0  : out std_logic;
        LOCK : out std_logic
        );
end PLL_Sound_Speed;
----------------------------------------------------------------------
-- PLL_Sound_Speed architecture body
----------------------------------------------------------------------
architecture RTL of PLL_Sound_Speed is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- PLL_Sound_Speed_PLL_Sound_Speed_0_FCCC   -   Actel:SgCore:FCCC:2.0.201
component PLL_Sound_Speed_PLL_Sound_Speed_0_FCCC
    -- Port list
    port(
        -- Inputs
        CLK0 : in  std_logic;
        -- Outputs
        GL0  : out std_logic;
        LOCK : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal GL0_net_0  : std_logic;
signal LOCK_net_0 : std_logic;
signal GL0_net_1  : std_logic;
signal LOCK_net_1 : std_logic;
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal GND_net    : std_logic;
signal PADDR_const_net_0: std_logic_vector(7 downto 2);
signal PWDATA_const_net_0: std_logic_vector(7 downto 0);

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 GND_net            <= '0';
 PADDR_const_net_0  <= B"000000";
 PWDATA_const_net_0 <= B"00000000";
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 GL0_net_1  <= GL0_net_0;
 GL0        <= GL0_net_1;
 LOCK_net_1 <= LOCK_net_0;
 LOCK       <= LOCK_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- PLL_Sound_Speed_0   -   Actel:SgCore:FCCC:2.0.201
PLL_Sound_Speed_0 : PLL_Sound_Speed_PLL_Sound_Speed_0_FCCC
    port map( 
        -- Inputs
        CLK0 => CLK0,
        -- Outputs
        GL0  => GL0_net_0,
        LOCK => LOCK_net_0 
        );

end RTL;
