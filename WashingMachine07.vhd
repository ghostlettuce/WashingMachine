library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity WashingMachine07 is
	port(	SW			: in	std_logic_vector(4 downto 0);
			KEY		: in	std_logic_vector(1 downto 0);
			CLOCK50	: in	std_logic;
			LEDG		: out	std_logic_vector(3 downto 0);
			LEDR		: out	std_logic_vector(0 downto 0));
end WashingMachine07;

architecture Structural of WashingMachine07 is
	-- Timer signals
	signal s_timeExp, s_timeEnable, s_newTime, s_timeEn	: std_logic;
	signal s_timeVal	: std_logic_vector(7 downto 0);
	
	-- Actuators signals
	signal s_waterValve, s_waterPump, s_spin, s_rinse	: std_logic;
	
	signal s_p1, s_p2, s_p3, s_porta, s_reset, s_startStop	: std_logic;
	
begin

	-- Debounce input signals

	d_p1			:	entity work.DebounceUnit(Behavioral)
						port map(refClk 		=> CLOCK50,
									dirtyIn 		=> SW(0),
									pulsedOut 	=> s_p1);

	d_p2			:	entity work.DebounceUnit(Behavioral)
						port map(refClk 		=> CLOCK50,
									dirtyIn 		=> SW(1),
									pulsedOut 	=> s_p2);	
	
	d_p3			:	entity work.DebounceUnit(Behavioral)
						port map(refClk 		=> CLOCK50,
									dirtyIn 		=> SW(2),
									pulsedOut 	=> s_p3);
	
	d_porta		:	entity work.DebounceUnit(Behavioral)
						port map(refClk 		=> CLOCK50,
									dirtyIn 		=> SW(3),
									pulsedOut 	=> s_porta);
	
	d_reset		:	entity work.DebounceUnit(Behavioral)
						port map(refClk 		=> CLOCK50,
									dirtyIn 		=> SW(4),
									pulsedOut 	=> s_reset);
		
	d_startStop	:	entity work.DebounceUnit(Behavioral)
						port map(refClk 		=> CLOCK50,
									dirtyIn 		=> KEY(0),
									pulsedOut 	=> s_startStop);
	
	-- FSM and timer
	
	
	fsm	: 	entity work.WashingMAchineFSM(Behavioral)
				port map(reset 		=> s_reset,
							startStop  	=> s_startStop,
							clk   		=> CLOCK50,
							P1    		=> s_p1,
							P2    		=> s_p2,
							P3    		=> s_p3,
							porta       => s_porta,
							timeExp		=> s_timeExp,
							timeVal		=> s_timeVal,
							timeEnable 	=> s_timeEnable,
							newTime		=> s_newTime,
							waterValve	=> s_waterValve,
							waterPump	=> s_waterPump,	
							spin			=> s_spin,
							rinse 		=> s_rinse);
							
	timer	:	entity work.TimerAuxFSM(Behavioral)
				port map(reset		=> s_reset,
							clk		=> CLOCK50,
							newTime	=> s_newTime,
							timeEn	=> s_timeEn,
							timeVal	=> s_timeVal,
							timeExp	=> s_timeExp);
							
	

end Structural;