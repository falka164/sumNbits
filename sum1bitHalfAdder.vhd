----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:14:24 04/28/2019 
-- Design Name: 
-- Module Name:    sum1bitHalfAdder - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sum1bitHalfAdder is
	Port ( a,b : in  STD_LOGIC;
           sumHA : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end sum1bitHalfAdder;

architecture Behavioral of sum1bitHalfAdder is

begin

	sumHA <= a xor b;
	carry <= a and b;

end Behavioral;

