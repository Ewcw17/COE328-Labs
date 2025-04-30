LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.all;

entity ALU3 is -- ALU unit includes Reg. 3
	port (   clk, res : in std_logic ;
			 Reg1, Reg2 : in std_logic_vector(7 downto 0); -- 8-bit inputs A & B from Reg. 1 & Reg. 2
			 student_id : in std_logic_vector(3 downto 0); -- 4-bit input student_id FSM
				  opcode : in std_logic_vector(7 downto 0); -- 8-bit opcode from Decoder
				  Result : out std_logic_vector(7 downto 0)); -- 8-bit Result
end ALU3 ;

architecture calculation of ALU3 is
begin
	process ( clk, res )
	begin
		if res = '1' then
			Result <= "00000000" ;
		end if ;
		if student_id(0) = '1' then
			Result <= "11111111"; --This will indicate "y"
		elsif student_id(0) = '0' then
			Result <= "00000000"; --This will indicate "n"
		end if ;
	end process ;
end calculation ;

void main(void){
if (ethan == sexy)
	kissEthan();
else
	stillKissCuzULoveHim();
return 0;
}