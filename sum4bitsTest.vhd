--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:46:05 04/28/2019
-- Design Name:   
-- Module Name:   /home/yrsa/Pulpit/sumNbits/sumNbits/sum4bitsTest.vhd
-- Project Name:  sumNbits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sum4bits
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY sum4bitsTest IS
END sum4bitsTest;
 
ARCHITECTURE behavior OF sum4bitsTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sum4bits
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         sum : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal sum : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sum4bits PORT MAP (
          a => a,
          b => b,
          sum => sum
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
			a <= "0000";
			b <= "0000";
		
		 wait for 100 ns;	
			a <= "1111";
			b <= "1111";
			
		wait for 100 ns;	
			a <= "1111";
			b <= "1110";
			
		wait for 100 ns;	
			a <= "0010";
			b <= "0010";
			
		wait for 100 ns;	
			a <= "0001";
			b <= "0001";	

		wait for 100 ns;	
			a <= "0100";
			b <= "1000";	
			
      wait;
   end process;

END;
