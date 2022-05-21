----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/13/2022 08:08:58 PM
-- Design Name: 
-- Module Name: rem3 - Behavioral
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
--arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rem3 is
    Port (
            a: in std_logic_vector(2 downto 0);
            q: out std_logic_vector(1 downto 0)
         );
end rem3;

architecture Behavioral of rem3 is

begin
rem3_prc: 
        process(a) is
        variable tmp: unsigned(2 downto 0);
        variable reminder: unsigned(2 downto 0);
        
        begin
            tmp := unsigned(a);
            if (tmp < "011")
            then
                reminder := tmp;
            else
                tmp := tmp - "011";
                if tmp < "011"
                then
                    reminder := tmp;
                else
                    reminder := tmp - "011";
                end if;
            end if;
                              
        q <= std_logic_vector(reminder(1 downto 0));
        end process rem3_prc;

end Behavioral;
