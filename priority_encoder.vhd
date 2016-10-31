library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity priority_encoder is

port(a: in std_logic_vector(8 downto 0);
	  o: out std_logic_vector(2 downto 0);
	  a1: out std_logic_vector(8 downto 0);
	  sig: out std_logic);

end entity;

architecture basic of priority_encoder is

begin

	process(a)
	
	variable a1_temp: std_logic_vector(8 downto 0);
	variable o_temp: std_logic_vector(2 downto 0);
	variable sig_temp: std_logic;

	
	begin
	
		a1_temp(7 downto 0) := a(7 downto 0);
		a1_temp(8) := '0';
		o_temp := "000";
		sig_temp := '0';
		
		if(a(0) = '1') then
			o_temp := "000";
			a1_temp(0) := '0';
		elsif(a(1) = '1') then
			o_temp := "001";
			a1_temp(1) := '0';
		elsif(a(2) = '1') then
			o_temp := "010";
			a1_temp(2) := '0';
		elsif(a(3) = '1') then
			o_temp := "011";
			a1_temp(3) := '0';
		elsif(a(4) = '1') then
			o_temp := "100";
			a1_temp(4) := '0';
		elsif(a(5) = '1') then
			o_temp := "101";
			a1_temp(5) := '0';
		elsif(a(6) = '1') then
			o_temp := "110";
			a1_temp(6) := '0';
		elsif(a(7) = '1') then
			o_temp := "111";
			a1_temp(7) := '0';
		end if;
		
		if(a1_temp = "000000000") then
			sig_temp := '1';	
		end if;
		
		a1 <= a1_temp;
		o <= o_temp;
		sig <= sig_temp;
		
	end process;
	

end basic;