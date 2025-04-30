LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE IEEE.std_logic_arith.all;
USE ieee.numeric_std.all;

entity ALU2 is -- ALU unit includes Reg. 3
	port (   clk, res : in std_logic ;
			 Reg1, Reg2 : in std_logic_vector(7 downto 0); -- 8-bit inputs A & B from Reg. 1 & Reg. 2
				  opcode : in std_logic_vector(7 downto 0); -- 8-bit opcode from Decoder
				  Result : out std_logic_vector(7 downto 0)); -- 8-bit Result
end ALU2 ;

architecture calculation of ALU2 is
begin
	process ( clk, res )
	begin
		if res = '1' then
			Result <= "00000000" ;
		end if ;
			case opcode is
				when "00000001" =>
					Result <= Reg1 + 2;
				when "00000010" =>
					Result(7) <= '0';
					Result(6) <= '0';
					Result(5) <= Reg2(7);
					Result(4) <= Reg2(6);
					Result(3) <= Reg2(5);
					Result(2) <= Reg2(4);
					Result(1) <= Reg2(3);
					Result(0) <= Reg2(2);
				when "00000100" =>
					Result(7) <= '1';
					Result(6) <= '1';
					Result(5) <= '1';
					Result(4) <= '1';
					Result(3) <= Reg1(7);
					Result(2) <= Reg1(6);
					Result(1) <= Reg1(5);
					Result(0) <= Reg1(4);
				when "00001000" =>
					if Reg1 >= Reg2 then
						Result <= Reg2;
					elsif Reg2 > Reg1 then
						Result <= Reg1;
					end if;
				when "00010000" =>
					Result(7) <= Reg1(1);
					Result(6) <= Reg1(0);
					Result(5) <= Reg1(7);
					Result(4) <= Reg1(6);
					Result(3) <= Reg1(5);
					Result(2) <= Reg1(4);
					Result(1) <= Reg1(3);
					Result(0) <= Reg1(2);
				when "00100000" =>
					Result(7) <= Reg2(0);
					Result(6) <= Reg2(1);
					Result(5) <= Reg2(2);
					Result(4) <= Reg2(3);
					Result(3) <= Reg2(4);
					Result(2) <= Reg2(5);
					Result(1) <= Reg2(6);
					Result(0) <= Reg2(7);
				when "01000000" =>
					Result <= (Reg1 XOR Reg2);
				when "10000000" =>
					Result <= (Reg1 + Reg2) - 4;
				when others =>
					-- Don’t care, do nothing
			end case ;
	end process ;
end calculation ;