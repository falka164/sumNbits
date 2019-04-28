----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:10:43 04/28/2019 
-- Design Name: 
-- Module Name:    sum1bitFullAdder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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

entity sum1bitFullAdder is
		Port (a, b, cin : in  STD_LOGIC;
            sumFA, carry: out  STD_LOGIC);
end sum1bitFullAdder;

architecture Behavioral of sum1bitFullAdder is

begin
	sumFA<= a xor b  xor cin;
	carry <= (a and cin) or (b and cin) or (a and b);

end Behavioral;

