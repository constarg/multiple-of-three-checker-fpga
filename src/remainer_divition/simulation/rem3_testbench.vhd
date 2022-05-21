----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2022 01:00:13 PM
-- Design Name: 
-- Module Name: rem3_testbench - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rem3_testbench is
--  Port ( );
end rem3_testbench;

architecture Behavioral of rem3_testbench is
    component rem3
       Port ( 
                a: in std_logic_vector(2 downto 0);
                q: out std_logic_vector(1 downto 0)
            );
    end component;
    
    signal a_s: std_logic_vector(2 downto 0);
    signal q_s: std_logic_vector(1 downto 0);
    
begin

rem3_t: rem3 port map(
          a => a_s,
          q => q_s
      );

proc: process is
      begin
        a_s <= "000";
        wait for 20ns;
        a_s <= "001";
        wait for 20ns;
        a_s <= "010";
        wait for 20ns;
        a_s <= "011";
        wait for 20ns;
        a_s <= "100";
        wait for 20ns;
        a_s <= "101";
        wait for 20ns;
        a_s <= "110";               
        wait for 20ns;
        a_s <= "111";
        wait;
        
      end process proc;


end Behavioral;
