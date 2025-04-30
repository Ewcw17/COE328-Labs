LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY C IS
	PORT (y : IN STD_LOGIC_VECTOR(3 DOWNTO 1);
			SW : IN STD_LOGIC;
			Yout : OUT STD_LOGIC_VECTOR(3 DOWNTO 1) );
END C;

ARCHITECTURE Behavior OF C IS
BEGIN
	Yout(3) <= ((NOT SW) AND y(3)) OR (y(3) AND (NOT y(2)) AND (NOT y(1))) OR (SW AND y(2) AND y(1)) OR (SW AND (NOT y(3)) AND y(2));
	Yout(2) <= ((NOT SW) AND y(2)) OR (SW AND (NOT y(3)) AND (NOT y(1))) OR (SW AND (NOT y(2)) AND (NOT y(1))) OR (SW AND y(3) AND (NOT y(2)));
	Yout(1) <= ((NOT SW) AND y(1)) OR (SW AND y(2) AND (NOT y(1))) OR (SW AND (NOT y(3)) AND y(2)) OR (SW AND (NOT y(3)) AND (NOT y(1)));
END Behavior;