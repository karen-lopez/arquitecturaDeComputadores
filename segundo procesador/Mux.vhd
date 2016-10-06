-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux is
    Port ( Crs32 : in  STD_LOGIC_VECTOR (31 downto 0);
           imm32 : in  STD_LOGIC_VECTOR (31 downto 0);
           i : in  STD_LOGIC;
           Data_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end Mux;

architecture Behavioral of Mux is

begin
	
	process(Crs32,imm32,i)
	begin 
	
		if(i = '1') then 
			Data_Out <= imm32;
		else
			if(i = '0') then
			Data_Out <= Crs32;
			end if;
		end if;
		
	end process;

end Behavioral;

