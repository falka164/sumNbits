--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:12:40 04/28/2019
-- Design Name:   
-- Module Name:   /home/yrsa/Pulpit/sumNbits/sumNbits/sum1bitFullAdderTest.vhd
-- Project Name:  sumNbits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sum1bitFullAdder
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
 
ENTITY sum1bitFullAdderTest IS
END sum1bitFullAdderTest;
 
ARCHITECTURE behavior OF sum1bitFullAdderTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sum1bitFullAdder
    PORT(
         a: IN  std_logic;
         b : IN  std_logic;
         cin : IN  std_logic;
         sumFA : OUT  std_logic;
         carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal sumFA : std_logic;
   signal carry : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sum1bitFullAdder PORT MAP (
          a => a,
          b => b,
          cin => cin,
          sumFA => sumFA,
          carry => carry
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for 100 ns;	
			cin <= '0';
			a <= '0';
			b <= '0';
		
		wait for 100 ns;	
			cin <= '0';
			b <= '0';
			a <= '1';
			
		wait for 100 ns;	
			cin <= '0';
			b <= '1';
			a <= '0';
			
		wait for 100 ns;	
			cin <= '0';
			b <= '1';
			a <= '1';
			
		wait for 100 ns;	
			cin <= '1';
			b <= '0';
			a <= '0';
			
		wait for 100 ns;	
			cin <= '1';
			b <= '0';
			a <= '1';
			
		wait for 100 ns;	
			cin <= '1';
			b <= '1';
			a <= '0';
			
		wait for 100 ns;	
			cin <= '1';
			b <= '1';
			a <= '1';


      wait;
   end process;

END;
