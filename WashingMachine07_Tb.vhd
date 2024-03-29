library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity WashingMachine07_Tb is
end WashingMachine07_Tb;

architecture Stimulus of WashingMachine07_Tb is

	-- Input signals
	signal s_SW			: std_logic_vector(4 downto 0);
	signal s_KEY		: std_logic_vector(0 downto 0);
	signal s_CLOCK50	: std_logic;
		
	-- Output signals
	signal s_LEDG		: std_logic_vector(3 downto 0);
	signal s_LEDR		: std_logic_vector(0 downto 0);

begin 
	uut : 	
		entity work.WashingMachine07(Structural)
		port map(SW			=> s_SW,
					KEY		=> s_KEY,
					CLOCK50	=> s_CLOCK50,
					LEDG		=> s_LEDG,
					LEDR		=> s_LEDR);
								

	clk_process :
		process
		begin
			s_CLOCK50 <= '0'; wait for 20 ns;
			s_CLOCK50 <= '1'; wait for 20 ns;
		end process;

		
	stimulus_process : 
		process 
		begin

		wait for 100 ns;
		s_SW	<= "00001";
		s_KEY	<= "0";
		
		wait for 100 ns;
		s_SW	<= "00001";
		s_KEY	<= "1";
		
		wait for 100 ns;
		s_SW	<= "01001";
		s_KEY	<= "1";
		
		wait for 100 ns;
		s_SW	<= "00000";
		s_KEY	<= "0";
		
		end process;
		
end stimulus;