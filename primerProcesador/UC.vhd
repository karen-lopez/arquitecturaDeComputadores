library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity UC is
    Port ( OP : in  STD_LOGIC_VECTOR (1 downto 0);
           OP3 : in  STD_LOGIC_VECTOR (5 downto 0);
           OPOut : out  STD_LOGIC_VECTOR (5 downto 0));
end UC;

architecture Behavioral of UC is

begin
process(OP,OP3)
begin
	if(OP = "10") then
		case OP3 is 
			when "000000" =>  --Suma
				OPOut <= "000000";
			when "000100" =>  --Resta
				OPOut <= "000100";
			when "000001" =>  --And
				OPOut <= "000001";
			when "000010" =>  --Or
				OPOut <= "000010";
			when "000110" =>  --NOr
				OPOut <= "000110";		
			when "000011" =>  --Xor
				OPOut <= "000011";
			when "000111" =>  --XNOr
				OPOut <= "000111";
			when "000101" =>  -- NAnd
				OPOut <= "000101";
			when others => OPOut<="111111";
		end case;
	else 
		OPOut<="111111";
	end if;
end process;

end Behavioral;
