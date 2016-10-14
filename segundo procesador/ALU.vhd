library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
    Port ( Modo : in  STD_LOGIC_VECTOR (5 downto 0);
           S0 : in  STD_LOGIC_VECTOR (31 downto 0);
           S1 : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_Out : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
process(Modo,S0,S1)
begin
	case Modo is 
		when "000000" =>  --Suma
			ALU_Out <= S0+S1;
		when "000100" =>  --Resta
			ALU_Out <= S0-S1;
		when "000001" =>  --And
			ALU_Out <= S0 and S1;
		when "000010" =>  --Or
			ALU_Out <= S0 or S1;
		when "000110" =>  --NOr
			ALU_Out <= not(S0 or S1);		
		when "000011" =>  --Xor
			ALU_Out <= S0 xor S1;
		when "000111" =>  --XNOr
			ALU_Out <= not(S0 xor S1);
		when "000101" =>  -- NAnd
			ALU_Out <= not(S0 and S1);
		when others => ALU_Out<="11111111111111111111111111111111";
	end case;
end process;


end Behavioral;
