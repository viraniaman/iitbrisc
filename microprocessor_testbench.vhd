library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
use STD.textio.all;
--use ieee.std_logic_textio.all;
use ieee.numeric_std.all;

entity microprocessor_testbench is
end entity;

architecture basic of microprocessor_testbench is

component microprocessor is
	port(clk, reset: in std_logic);
end component;

signal clk: std_logic := '1';
signal reset: std_logic := '0';

begin

	clk <= (not clk) after 10 ns;
	reset <= '0';
	
	
--	process
--	
--		file inputs: text open read_mode is "reg_file_text.txt";
--		file outputs: text open write_mode is "reg_file_vectors.out";
--		variable file_line: line;
--		variable out_line: line;
--		variable line_num: integer := 0;
--		variable A11: bit_vector(2 downto 0) := (others => '0');
--		variable A21: bit_vector(2 downto 0) := (others => '0');
--		variable A31: bit_vector(2 downto 0) := (others => '0');
--		variable D31: bit_vector(15 downto 0);
--		variable reg_write1: bit;
--		variable D11: bit_vector(15 downto 0);
--		variable D21: bit_vector(15 downto 0);
--
--	begin
--	
--		while not endfile(inputs) loop
--		
--			readline(inputs, file_line);
--			read(file_line, A11);
--			read(file_line, A21);
--			read(file_line, A31);
--			read(file_line, D31);
--			read(file_line, reg_write1);
--			read(file_line, D11);
--			read(file_line, D21);
--			
--			A1 <= to_stdlogicvector(A11);
--			A2 <= to_stdlogicvector(A21);
--			A3 <= to_stdlogicvector(A31);
--			D3 <= to_stdlogicvector(D31);
--			reg_write <= to_stdulogic(reg_write1);
--			
--			wait until clk='1';
--
--			if(D1 /= to_stdlogicvector(D11)) then
--				write(out_line, string'("D1 found error at line "));
--				write(out_line, integer'image(line_num));
--				write(out_line, string'(" expected output "));
--				write(out_line, (D11));
--				write(out_line, string'(" found output "));
--				write(out_line, to_bitvector(D1));
--				writeline(outputs, out_line);
--				
--			elsif(D2 /= to_stdlogicvector(D21)) then 
--				write(out_line, string'("D2 found error at line "));
--				write(out_line, integer'image(line_num));
--				write(out_line, string'(" expected output "));
--				write(out_line, (D21));
--				write(out_line, string'(" found output "));
--				write(out_line, to_bitvector(D2));
--				writeline(outputs, out_line);
--			
--			else 
--				write(out_line, string'("run successfully at line "));
--				write(out_line, integer'image(line_num));
--				writeline(outputs, out_line);
--				
--			end if;
--				
--			line_num := line_num + 1;
--		
--		end loop;
--		
--		wait;
--	
--	end process;
	
	module_microprocessor: microprocessor port map(clk, reset);
end basic;
