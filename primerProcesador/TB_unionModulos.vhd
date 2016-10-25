
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_unionModulos IS
END TB_unionModulos;
 
ARCHITECTURE behavior OF TB_unionModulos IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT unionModulos
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         RESULT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';

 	--Outputs
   signal RESULT : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: unionModulos PORT MAP (
          CLK => CLK,
          RESET => RESET,
          RESULT => RESULT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
     RESET <='1';
      wait for 100 ns;
		RESET <='0';
		wait;
   end process;

END;
