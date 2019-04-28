----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:22:11 04/28/2019 
-- Design Name: 
-- Module Name:    sum4bits - Behavioral 
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

entity sum4bits is
    Port ( a, b : in  STD_LOGIC_VECTOR (3 downto 0);
           sum : out  STD_LOGIC_VECTOR (4 downto 0));
end sum4bits;

architecture Behavioral of sum4bits is
		component sum1bitHalfAdder is
			Port ( a,b : in  STD_LOGIC;
           sumHA : out  STD_LOGIC;
           carry : out  STD_LOGIC);
		end component;
		
		component sum1bitFullAdder is
			Port (a, b, cin : in  STD_LOGIC;
            sumFA, carry: out  STD_LOGIC);
		end component;
		
	signal cc :  STD_LOGIC_VECTOR (2 downto 0);
	
begin
		u1: sum1bitHalfAdder 
			port map (a => a(0), 
								  b => b(0), 
								  sumHA => sum(0), 
								  carry => cc(0)
								  );
		u2: sum1bitFullAdder 
			port map (a => a(1), 
								  b => b(1), 
								  cin => cc(0), 
								  sumFA => sum(1), 
								  carry => cc(1)
								  );
		u3: sum1bitFullAdder 
			port map (a => a(2), 
								  b => b(2), 
								  cin => cc(1), 
								  sumFA => sum(2), 
								  carry => cc(2)
								  );  
		u4: sum1bitFullAdder 
			port map (a => a(3), 
								  b => b(3), 
								  cin => cc(2), 
								  sumFA => sum(3), 
								  carry => sum(4)
								  );

end Behavioral;

