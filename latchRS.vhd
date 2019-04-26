library ieee;
use ieee.std_logic_1164.all;

entity latchRS is
port(
	R: in std_logic;
	S: in std_logic;
	Q: out std_logic;
	enable: in std_logic;
	Qbar: out std_logic
	
);
end latchRS;

architecture archlatchRS of latchRS is
	signal Qsignal, Qbarsignal : std_logic;
	
begin	

	Qsignal <= (S and enable) nand Qbarsignal;
	Qbarsignal <= (R and enable) nand Qsignal;
	Q <= Qsignal;
	Qbar <= Qbarsignal;
	
end archlatchRS;



