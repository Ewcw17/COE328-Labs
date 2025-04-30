LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY ssegyn IS
	PORT ( bcd : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		   leds: OUT STD_LOGIC_VECTOR(1 TO 7) );
END ssegyn;

ARCHITECTURE Behavior OF ssegyn IS
BEGIN
	PROCESS (bcd)
	BEGIN
		CASE bcd IS             -- abcdefg
			WHEN "00000000" => leds <= "0010101";
			WHEN "11111111" => leds <= "0110011";
			WHEN OTHERS => leds <= "0100011";
		END CASE;
END PROCESS;
END Behavior;