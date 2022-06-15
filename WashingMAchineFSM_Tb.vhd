library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity WashingMAchineFSM_Tb is
end WashingMAchineFSM_Tb;

architecture Stimulus of WashingMAchineFSM_Tb is
		signal s_waterValve, s_waterpump, s_spin, s_rinse, s_newTime, s_timeEnable:std_logic;
		
		signal s_reset, s_startStop, s_clk, s_P1, s_P2, s_P3, s_porta, s_timeExp:std_logic;

begin 
	 uut : entity work.WashingMAchineFSM(Behavioral)
	port map( clk => s_clk,
								reset 		=> s_reset,
								startStop 	=>s_startStop,
								P1 			=> s_P1,
								p2 			=> s_p2,
								p3 			=> s_p3,
								porta 		=> s_porta,
								timeExp 		=>s_timeExp,
								water_Valve => s_waterValve,
								water_pump 	=> s_waterpump,
								spin 			=> s_spin,
								rinse 		=> s_rinse,
								newTime 		=> s_newTime,
								timeEnable	=> s_timeEnable);
								
								



clk_process:process
			begin
			s_clk <= '0'; wait for 20 ns;
			s_clk <= '1'; wait for 20 ns;
		end process;

		
stimulus_process : process 
						begin
						
						s_reset<='0';
						wait for 100ns;
						s_porta <='0';
						s_startStop <='0';
						s_p1<='1';
						s_timeExp <='1';						
						wait for 100 ns;
						--s_porta=>'1';
						s_startStop <='1';
						
						
						wait for 100ns;
						s_porta <='0';
						s_startStop <='0';
						s_p2 <='1';
						s_timeExp <='1';						
						wait for 100 ns;
						--s_porta=>'1';
						s_startStop <='1';
						
						
						wait for 100ns;
						s_porta <='0';
						s_startStop <='0';
						s_p3<='1';
						s_timeExp <='1';						
						wait for 100 ns;
						--s_porta=>'1';
						s_startStop <='1';
						
						
					
						
					
						wait for 100 ns;
end process;
end stimulus;						
						
	
						
						
						
						
						
						
						
						
		
		
		
		

		
		
		
		


		

