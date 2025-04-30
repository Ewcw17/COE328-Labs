LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity ALU is -- ALU unit includes Reg. 3
	port (   clk, res : in std_logic ;
			 Reg1, Reg2 : in std_logic_vector(7 downto 0); -- 8-bit inputs A & B from Reg. 1 & Reg. 2
				  opcode : in std_logic_vector(7 downto 0); -- 8-bit opcode from Decoder
				  Result : out std_logic_vector(7 downto 0)); -- 8-bit Result
end ALU ;

architecture calculation of ALU is
begin
	process ( clk, res )
	begin
		if res = '1' then
			Result <= "00000000" ;
		end if ;
		case opcode is
			when "00000001" =>
				Result <= Reg1 + Reg2;
			when "00000010" =>
				Result <= Reg1 - Reg2;
			when "00000100" =>
				Result <= (NOT Reg1);
			when "00001000" =>
				Result <= (NOT (Reg1 AND Reg2));
			when "00010000" =>
				Result <= (NOT (Reg1 OR Reg2));
			when "00100000" =>
				Result <= (Reg1 AND Reg2);
			when "01000000" =>
				Result <= (Reg1 XOR Reg2);
			when "10000000" =>
				Result <= Reg1 OR Reg2;
			when others =>
				-- Don’t care, do nothing
		end case ;
	end process ;
end calculation ;