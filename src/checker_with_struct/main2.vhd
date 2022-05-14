----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/14/2022 02:06:36 PM
-- Design Name: 
-- Module Name: main2 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main2 is
    Port (
            D: in std_logic_vector(5 downto 0);
            F: out std_logic  
         );
end main2;

architecture Behavioral of main2 is

    signal reminders_s: unsigned(12 downto 0);
    signal res: integer;
begin

proc_main2:
    process(D) is
    
    variable reminders: unsigned(12 downto 0) := "0110000000000";
    
    begin
        reminders(0) := D(5);
        reminders(1) := '0';
        
        for c_d in 1 to 5
        loop 
            -- See rem3 module.
            -- tmp < "011" 
            if (reminders((c_d * 2 - 1) downto ((c_d * 2) - 2)) & D(5 - c_d)) < "011"
            then
                -- reminder := tmp -- see rem3 module.
                reminders((c_d * 2 + 1) downto ((c_d * 2))) 
                    := reminders(c_d * 2 - 2) & D(5 - c_d);
            else
                -- tmp := tmp - "011" -- see rem3 module.
                reminders((c_d * 2 + 2) downto ((c_d * 2)))
                    := (reminders(c_d * 2 - 1) & reminders(c_d * 2 - 2) & D(5 - c_d)) - "011";
                
                -- if tmp < "011" -- see rem3 module.
                if reminders((c_d * 2 + 2) downto (c_d * 2)) < "011"
                then
                    -- reminder := tmp -- see rem3 module.
                    reminders((c_d * 2 + 2) downto ((c_d * 2)))
                        := reminders((c_d * 2 + 2) downto ((c_d * 2)));
                else
                    -- reminder := tmp - "011" -- see rem3 module.
                    reminders((c_d * 2 + 2) downto ((c_d * 2)))
                        := reminders((c_d * 2 + 2) downto ((c_d * 2))) - "011";
                end if;
            end if;
        end loop;
        
        if reminders(11 downto 10) = "00"
        then
            F <= '1';
        else
            F <= '0';
        end if;
    
    end process proc_main2;
   

end Behavioral;
