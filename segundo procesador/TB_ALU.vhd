
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_ALU IS
END TB_ALU;
 
ARCHITECTURE behavior OF TB_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         Modo : IN  std_logic_vector(5 downto 0);
         S0 : IN  std_logic_vector(31 downto 0);
         S1 : IN  std_logic_vector(31 downto 0);
         ALU_Out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Modo : std_logic_vector(5 downto 0) := (others => '0');
   signal S0 : std_logic_vector(31 downto 0) := (others => '0');
   signal S1 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal ALU_Out : std_logic_vector(31 downto 0);
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Modo => Modo,
          S0 => S0,
          S1 => S1,
          ALU_Out => ALU_Out
        );


   -- Stimulus process
   stim_proc: process
   begin		
      Modo <="000000"; --suma
		S0 <= "00000000000000000000000001001000";
		S1 <= "00000000000000000000000000101000";
      wait for 100 ns;
		Modo <="000100";--resta
		S0 <= "00000000000000000000000001001000";
		S1 <= "00000000000000000000000000001000";
    
      wait;
   end process;

END;
