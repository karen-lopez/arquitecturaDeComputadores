
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_InstructionMemory IS
END TB_InstructionMemory;
 
ARCHITECTURE behavior OF TB_InstructionMemory IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT InstructionMemory
    PORT(
         address : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         outInstruction : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal outInstruction : std_logic_vector(31 downto 0);
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: InstructionMemory PORT MAP (
          address => address,
          reset => reset,
          outInstruction => outInstruction
        );

  
   -- Stimulus process
   stim_proc: process
   begin		
     address <="00000000000000000000000000000001";
      reset <= '1';
      wait for 100 ns;
		address <="00000000000000000000000000000000";
      reset <= '0';
      wait for 100 ns;
		address <="00000000000000000000000000000110";
      reset <= '0';
      wait;	
      wait;
   end process;

END;
