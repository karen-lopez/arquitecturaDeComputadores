
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_RegisterFile IS
END TB_RegisterFile;
 
ARCHITECTURE behavior OF TB_RegisterFile IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegisterFile
    PORT(
         Rs1 : IN  std_logic_vector(4 downto 0);
         Rs2 : IN  std_logic_vector(4 downto 0);
         Rsd : IN  std_logic_vector(4 downto 0);
         DataToWrite : IN  std_logic_vector(31 downto 0);
         Crs1 : OUT  std_logic_vector(31 downto 0);
         Crs2 : OUT  std_logic_vector(31 downto 0);
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rsd : std_logic_vector(4 downto 0) := (others => '0');
   signal DataToWrite : std_logic_vector(31 downto 0) := (others => '0');
   signal rst : std_logic := '0';

 	--Outputs
   signal Crs1 : std_logic_vector(31 downto 0);
   signal Crs2 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegisterFile PORT MAP (
          Rs1 => Rs1,
          Rs2 => Rs2,
          Rsd => Rsd,
          DataToWrite => DataToWrite,
          Crs1 => Crs1,
          Crs2 => Crs2,
          rst => rst
        );



   -- Stimulus process
   stim_proc: process
   begin		
-- hold reset state for 100 ns.
		Rs1 <= "00001";
		Rs2 <= "00010";
		Rsd <= "00000";
      wait for 100 ns;

		Rs1 <= "00011";
		Rs2 <= "00110";
		Rsd <= "00010";
		DataToWrite <= "00000000001111100000000001111100";
      wait for 100 ns;
		
		Rs1 <= "00011";
		Rs2 <= "01010";
		Rsd <= "00001";
      wait for 100 ns;
      -- insert stimulus here 
      wait;
   end process;

END;
