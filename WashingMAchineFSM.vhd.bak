library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity of WashingMAchineFSM is
	port(reset 				: 	in std_logic;
				startStop  	:  in std_logic;
				clk   		:	in std_logic;
				start 		: 	in std_logic;
				P1    		:	in std_logic;
				P2    		:	in std_logic;
				P3    		:	in std_logic;
				porta       :	in std_logic;
				timeExp		:	in std_logic;
				timeVal		:	out std_logic;
				timeEnable 	: 	out std_logic;
				newTime		:	out std_logic;
				water_valve	:	out std_logic;
				water_pump	:	out std_logic;	
				spin			:	out std_logic;
				rinse 		:	out std_logic
			);
		
end  WashingMAchineFSM

archictecture MelyArchy of  WashingMAchineFSM is

	constant waterVAlve_Time  	: std_logic_vector(7 downto 0) := "00000111";	--7 seg	
	constant waterPump_TIME		: std_logic_vector(7 downto 0) := "00000100"; 	-- 4 seg
	constant rinse_TIME			: std_logic_vector(7 downto 0) := "00001100"; 	-- 10 seg
	constant spin_TIME			: std_logic_vector(7 downto 0) := "00000101"; 	-- 5 seg
	constant Finish_Time			: std_logic_vector(7 downto 0) := "00000010"; 	-- 2 seg
		

	

	type state is(S0, MA1, E1, RA1, Ma2, E2, Ra2, S3, RA3, W2s, W );
	signal s_pState, s_nState, s_bStop;
	signal s_stateChanged : std_logic := '1';


	
	
	begin
		
	sync_proc : process(clk)
			begin
				
					
						if(rising_edge(clk))then
							if(reset='1')then
							elsif(rising_edge(startStop)then
							else
								if (s_pState /= s_nstate) then
									s_stateChanged <= '1';
								else
									s_stateChanged <= '0';
								end if;
								s_currentState	<= s_nextState;
							end if;
						end if;
	end process;

	newTime <= s_stateChanged and newTime;
	
	
	
	comb_proc : process(s_pState, intermit, timeExp)
	begin
	
	case (p_state) is	
	
	when s0 => 	

					water_pump 	<= '0';
					water_valve <= '0';
					spin			<= '0';
					rinse 		<= '0';
					newTime 		<= '0';
					timeVal 		<= (others => '-');
					timeEnable 	<=	'1'
					
					if (porta ='1')then 
						if(p1 ='1')then
							s_nState		<= MA1;
						elsif(p2 = '1)then
							s_nState		<= MA2;
						elsif(p3 = '1)then
							s_nState		<= s3;
						else 
							s_nstate <= s0;
						end if;	
					end if;
					
	
	
	
	when MA1 => 

					water_pump 	<= '0';
					water_valve <= '1';
					spin			<= '0';
					rinse 		<= '0';
					newTime 		<= '1';
					timeVal 		<= waterVAlve_Time;
					timeEnable 	<=	'1'
					
					if(timeExp ='1')then
						s_nState <= E1;
					else
						s_nState <= MA1;	
					end if;
										
					
	when E1 => 

					water_pump 	<= '0';
					water_valve <= '0';
					spin			<= '0';
					rinse 		<= '1';
					newTime 		<= '1';
					timeVal 		<= rinse_TIME;
					timeEnable 	<=	'1'
					
					if(timeExp ='1')then
						s_nState <= RA1;
					else
						s_nState <= E1;	
					end if;
									
	when RA1 => 

					water_pump 	<= '1';
					water_valve <= '0';
					spin			<= '0';
					rinse 		<= '1';
					newTime 		<= '1';
					timeVal 		<= waterPump_TIME;
					timeEnable 	<=	'1'
					
					if(timeExp ='1')then
						s_nState <= MA2;
					else
						s_nState <= RA1;
					end if;
					
													
							
	when MA2 => 

					
					water_pump 	<= '0';
					water_valve <= '1';
					spin			<= '0';
					rinse 		<= '0';
					newTime 		<= '1';
					timeVal 		<= waterVAlve_Time;
					timeEnable 	<=	'1'
					
					if(timeExp ='1')then
						s_nState <= E2;
					else
						s_nState <= MA2;
					end if;
					
							
	when E2 => 

					water_pump 	<= '0';
					water_valve <= '0';
					spin			<= '0';
					rinse 		<= '1';
					newTime 		<= '1';
					timeVal 		<= rinse_TIME;
					timeEnable 	<=	'1'
					
					if(timeExp ='1')then
						s_nState <= RA2;
					else
						s_nState <= E2;
					end if;
					
																					
							
									
	when RA2 => 

					water_pump 	<= '1';
					water_valve <= '0';
					spin			<= '0';
					rinse 		<= '1';
					newTime 		<= '1';
					timeVal 		<= waterPump_TIME;
					timeEnable 	<=	'1'
					
					if(timeExp ='1')then
						s_nState <= s3;
					else
						s_nState <= RA2;
					end if;
					
					
					
	when s3 => 

					water_pump 	<= '1';
					water_valve <= '0';
					spin			<= '1';
					rinse 		<= '0';
					newTime 		<= '1';
					timeVal 		<= spin_TIME;
					timeEnable 	<=	'1'
					
					if(timeExp ='1')then
						s_nState <= RA3;
					else
						s_nState <= s3;
					end if;
						
				
				
	when RA3 => 

					water_pump 	<= '1';
					water_valve <= '0';
					spin			<= '0';
					rinse 		<= '1';
					newTime 		<= '1';
					timeVal 		<= waterPump_TIME;
					timeEnable 	<=	'1'
					
					if(timeExp ='1')then
						s_nState <= W2s;
					else
						s_nState <= RA3;
					end if;
					
					
	when W2s =>
					water_pump 	<= '0';
					water_valve <= '0';
					spin			<= '0';
					rinse 		<= '0';
					newTime 		<= '1';
					timeVal 		<= Finish_Time;
					timeEnable 	<=	'1'
					
					if(timeExp ='1')then
						s_nstate <= s0;
					else 
						s_nstate <= W2s
					
					
			
			
	when W =>
					water_pump 	<= '0';
					water_valve <= '0';
					spin			<= '0';
					rinse 		<= '0';
					newTime 		<= '0';
					timeVal 		<= (others => '-');
					timeEnable 	<=	'0'
					
		end case;
	end process;
end MelyArchy;	

									
