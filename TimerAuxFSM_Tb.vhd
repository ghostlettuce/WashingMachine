library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity TimerAuxFSM_Tb is
end TimerAuxFSM_Tb;

architecture Stimulus of TimerAuxFSM_Tb is
	--Input signals
	signal s_reset, s_clk, s_newTime, s_timeEn	: std_logic;
	signal s_timeVal	: std_logic_vector(7 downto 0);
	
	--Output signals
	signal s_timeExp	: std_logic;
begin

	uut			: 	entity work.TimerAuxFSM(Behavioral)
						port map(reset		=>	s_reset,
									clk		=>	s_clk,
									newTime	=>	s_newTime,
									timeEn	=>	s_timeEn,
									timeVal	=>	s_timeVal,
									timeExp	=>	s_timeExp);
									
	
	clk_proc : process
		begin
			s_clk <= '0'; wait for 10 ns;
			s_clk <= '1'; wait for 10 ns;
		end process;
		
	stimulus_process: process	
						begin
						
				s_timeEn=>'0';
				s_newTime=>'1';
				s_timeVal=> "1010";
				wait for 100 ns;
				s_timeEn=>'1'
				s_newTime=>'1';
				s_timeVal=> "1010";
				wait for 100 ns;
						
	end Stimulus;