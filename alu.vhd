library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
port(ALUop: in std_logic_vector(1 downto 0);
	  A,B: in std_logic_vector(15 downto 0);
--	  C_en, Z_en: out std_logic;
	  C, Z: out std_logic;
	  OUTPUT: out std_logic_vector(15 downto 0)
	  );
end alu;

architecture basic of alu is

--	signal a_temp, b_temp, 
	

begin

	process(ALUop, A, B)
		variable temp1, temp2: bit_vector(15 downto 0);
		variable out_temp: std_logic_vector(16 downto 0);
		variable z_temp: std_logic;
	begin
	
		out_temp := (others => '0');
		z_temp := '0';
		temp1 := (others => '0');
		temp2 := (others => '0');
	
		case ALUop is
			when "00" =>
				out_temp := std_logic_vector((unsigned("0" & A) + unsigned("0" & B)));
			when "01" =>
				out_temp(15 downto 0) := A nand B;
			when "10" =>
				temp1 := to_bitvector(A);
				temp2 := temp1 sll 7;
				out_temp(15 downto 0) := to_stdlogicvector(temp2);
			when "11" =>
				out_temp := std_logic_vector((unsigned("0" & A) - unsigned("0" & B)));
			when others => 
			    out_temp := (others => '0'); 
		end case;
		
		if(out_temp = "00000000000000000") then
			z_temp := '1';
--			Z_en <= '1';
		end if;
		
		C <= out_temp(16);
		Z <= z_temp;
		
		OUTPUT <= out_temp(15 downto 0);
		
	end process;

end basic;
