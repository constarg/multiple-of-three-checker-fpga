----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2022 02:53:40 PM
-- Design Name: 
-- Module Name: main2_test_bench - Behavioral
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

entity main2_test_bench is
--  Port ( );
end main2_test_bench;

architecture Behavioral of main2_test_bench is
   component main2
    Port ( 
        D: in std_logic_vector(5 downto 0);
        F: out std_logic
     );
    end component;

    signal D_s: std_logic_vector(5 downto 0);
    signal F_s: std_logic;


begin
port_m: main2 port map(
          D => D_s,
          F => F_s
      );
      
proc: process is
      begin
           D_s <= "000000";
           wait for 20ns;
           D_s <= "000001";
           wait for 20ns;
           D_s <= "000010";
           wait for 20ns;
           D_s <= "000011";
           wait for 20ns;
           D_s <= "000100";
           wait for 20ns;
           D_s <= "000101";
           wait for 20ns;
           D_s <= "000110";
           wait for 20ns;
           D_s <= "000111";
           wait for 20ns;
           D_s <= "001000";
           wait for 20ns;
           D_s <= "001001";                 
           wait for 20ns;
           D_s <= "001010";
           wait for 20ns;
           D_s <= "001011";
           wait for 20ns;
           D_s <= "001100";
           wait for 20ns;
           D_s <= "001101";
           wait for 20ns;
           D_s <= "001110";
           wait for 20ns;
           D_s <= "001111";
           wait for 20ns;
           D_s <= "010000";
           wait for 20ns;
           D_s <= "010001";
           wait for 20ns;
           D_s <= "010010";
           wait for 20ns;
           D_s <= "010011";
           wait for 20ns;
           D_s <= "010100";
           wait for 20ns;
           D_s <= "010101";
           wait for 20ns;
           D_s <= "010110";
           wait for 20ns;
           D_s <= "010111";
           wait for 20ns;                   
           D_s <= "011000";
           wait for 20ns;
           D_s <= "011001";
           wait for 20ns;
           D_s <= "011010";
           wait for 20ns;
           D_s <= "011011";
           wait for 20ns;
           D_s <= "011100";
           wait for 20ns;                   
           D_s <= "011101";
           wait for 20ns;
           D_s <= "011110";
           wait for 20ns;
           D_s <= "011111";
           wait for 20ns;
           D_s <= "100000";
           wait for 20ns;
           D_s <= "110000";
           wait for 20ns;
           D_s <= "110001";
           wait for 20ns;
           D_s <= "110010";
           wait for 20ns;
           D_s <= "110011";
           wait for 20ns;
           D_s <= "110100";                 
           wait for 20ns;
           D_s <= "110101";
           wait for 20ns;
           D_s <= "110110";
           wait for 20ns;
           D_s <= "110111";
           wait for 20ns;                   
           D_s <= "111000";
           wait for 20ns;
           D_s <= "111001";
           wait for 20ns;
           D_s <= "111010";
           wait for 20ns;
           D_s <= "111011";
           wait for 20ns;
           D_s <= "111100";
           wait for 20ns;                   
           D_s <= "111101";
           wait for 20ns;
           D_s <= "111110";                 
           wait for 20ns;
           D_s <= "111111";
           wait;
      end process proc;

end Behavioral;
