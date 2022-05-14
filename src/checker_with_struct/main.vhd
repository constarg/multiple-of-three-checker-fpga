----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2022 08:07:05 PM
-- Design Name: 
-- Module Name: main - Behavioral
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

entity main is
    Port (
            D: in std_logic_vector(5 downto 0);
            F: out std_logic 
         );
end main;

architecture Behavioral of main is

    signal rem3_0_a: std_logic_vector(2 downto 0);
    signal rem3_0_q: std_logic_vector(1 downto 0);
    
    signal rem3_1_a: std_logic_vector(2 downto 0);

    signal rem3_1_q: std_logic_vector(1 downto 0);

    signal rem3_2_a: std_logic_vector(2 downto 0);
    signal rem3_2_q: std_logic_vector(1 downto 0);

    signal rem3_3_a: std_logic_vector(2 downto 0);
    signal rem3_3_q: std_logic_vector(1 downto 0);

    signal rem3_4_a: std_logic_vector(2 downto 0);
    signal rem3_4_q: std_logic_vector(1 downto 0);

    signal rem3_5_a: std_logic_vector(2 downto 0);
    signal rem3_5_q: std_logic_vector(1 downto 0);

begin
    rem3_0_a <= "00" & D(5);
    rem3_0: entity work.rem3(Behavioral)
            port map(
                        a => rem3_0_a, 
                        q => rem3_0_q
                     );

    rem3_1_a <= rem3_0_q & D(4);
    rem3_1: entity work.rem3(Behavioral)
            port map(
                        a => rem3_1_a, 
                        q => rem3_1_q
                     );

    rem3_2_a <= rem3_1_q & D(3);
    rem3_2: entity work.rem3(Behavioral)
            port map(
                        a => rem3_2_a, 
                        q => rem3_2_q
                     );

    rem3_3_a <= rem3_2_q & D(2);
    rem3_3: entity work.rem3(Behavioral)
            port map(
                        a => rem3_3_a, 
                        q => rem3_3_q
                     );

    rem3_4_a <= rem3_3_q & D(1);
    rem3_4: entity work.rem3(Behavioral)
            port map(
                        a => rem3_4_a, 
                        q => rem3_4_q
                     );
                     
   rem3_5_a <= rem3_4_q & D(0);
   rem3_5: entity work.rem3(Behavioral)
            port map(
                        a => rem3_5_a, 
                        q => rem3_5_q
                    );                

    F <= '1' when rem3_5_q = "00" else '0';

end Behavioral;
