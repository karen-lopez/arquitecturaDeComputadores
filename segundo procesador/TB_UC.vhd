
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

ENTITY TB_UC IS
END TB_UC;
 
ARCHITECTURE behavior OF TB_UC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UC
    PORT(
         OP : IN  std_logic_vector(1 downto 0);
         OP3 : IN  std_logic_vector(5 downto 0);
         OPOut : OUT  std_logic_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal OP : std_logic_vector(1 downto 0) := (others => '0');
   signal OP3 : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal OPOut : std_logic_vector(5 downto 0);
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UC PORT MAP (
          OP => OP,
          OP3 => OP3,
          OPOut => OPOut
        );


   -- Stimulus process
   stim_proc: process
   begin		
      OP <="00";
		OP3 <="000100";
      wait for 100 ns;

		OP <="10";
		OP3 <="000110";
		wait;
   end process;

END;
