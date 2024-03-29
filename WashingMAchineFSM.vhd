library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity WashingMAchineFSM is
	port(	reset 		: in 	std_logic;
			startStop  	: in 	std_logic;
			clk   		: in 	std_logic;
			P1    		: in 	std_logic;
			P2    		: in 	std_logic;
			P3    		: in 	std_logic;
			porta       : in 	std_logic;
			timeExp		: in 	std_logic;
			washLED		: out	std_logic;
			timeVal		: out std_logic_vector(7 downto 0);
			timeEnable 	: out std_logic;
			newTime		: out std_logic;
			waterValve	: out std_logic;
			waterPump	: out std_logic;	
			spin			: out std_logic;
			rinse 		: out std_logic);
		
end WashingMAchineFSM;

architecture Behavioral of WashingMAchineFSM is

	constant waterValve_TIME  	: std_logic_vector(7 downto 0) := "00000111";	-- 7 seg	
	constant waterPump_TIME		: std_logic_vector(7 downto 0) := "00000100"; 	-- 4 seg
	constant rinse_TIME			: std_logic_vector(7 downto 0) := "00001100"; 	-- 10 seg
	constant spin_TIME			: std_logic_vector(7 downto 0) := "00000101"; 	-- 5 seg
	constant Finish_TIME			: std_logic_vector(7 downto 0) := "00000010"; 	-- 2 seg

	type state is (S0, MA1, E1, RA1, Ma2, E2, Ra2, S3, RA3, W2s, W );
	signal s_pState, s_nState, s_bStop	: state;
	signal s_stateChanged : std_logic := '1';

	signal s_newTime	: std_logic;
	
	-- startStop rising edge detector
	signal startStop_1q, startStop_rE	: std_logic;
	
	
	begin
	
	PROC_RISING_EDGE_DETECT : process (clk,reset)
	begin

	  if rising_edge(clk) then
	  
		-- delay input by 1 clock
		startStop_1q <= startStop;

		-- detect rising edge
		startStop_rE <= startStop and (not startStop_1q);
		
	  end if;
	end process;
		
	sync_proc : process(clk)
	begin
					
		if(rising_edge(clk))then
			if(reset='1')then
				s_pState <= S0;
				s_stateChanged <= '1';
			--elsif (rising_edge(startStop)) then
				
			else
				if (s_pState /= s_nstate and s_pState /= w) then
					s_stateChanged <= '1';
				else
					s_stateChanged <= '0';
				end if;
				s_pState	<= s_nState;
			end if;
		end if;
				
	end process;

	newTime <= s_stateChanged and s_newTime;
	
	
	comb_proc : process(s_pState, timeExp, porta, P1, P2, P3, startStop)
	begin
	
	case (s_pState) is	
	
	when s0 => 	waterPump 	<= '0';
					waterValve 	<= '0';
					spin			<= '0';
					rinse 		<= '0';
					s_newTime 	<= '0';
					timeVal 		<= (others => '-');
					timeEnable 	<=	'1';
					washLED		<=	'0';
					
					if (porta ='1') then 
						if 	(p1 = '1') then	s_nState		<= MA1;
						elsif (p2 = '1') then	s_nState		<= MA2;
						elsif (p3 = '1') then	s_nState		<= s3;
						else 						s_nstate <= s0;
						end if;	
					end if;
					
	
	
	
	when MA1 => waterPump 	<= '0';
					waterValve 	<= '1';
					spin			<= '0';
					rinse 		<= '0';
					s_newTime 	<= '1';
					timeVal 		<= waterValve_TIME;
					timeEnable 	<=	'1';
					washLED		<=	'1';
					
					if(timeExp ='1')then
						s_nState <= E1;
					elsif(startStop_rE = '1')then
						s_nState <= W;
						s_bStop <= s_pState;
					else
						s_nState <= MA1;	
					end if;
										
					
	when E1 => 	waterPump 	<= '0';
					waterValve 	<= '0';
					spin			<= '0';
					rinse 		<= '1';
					s_newTime 	<= '1';
					timeVal 		<= rinse_TIME;
					timeEnable 	<=	'1';
					washLED		<=	'1';
					
					if(timeExp ='1')then
						s_nState <= RA1;
					elsif(startStop_rE = '1')then
						s_nState <= W;
						s_bStop <= s_pState;	
					else
						s_nState <= E1;	
					end if;
									
	when RA1 => waterPump 	<= '1';
					waterValve 	<= '0';
					spin			<= '0';
					rinse 		<= '1';
					s_newTime 	<= '1';
					timeVal 		<= waterPump_TIME;
					timeEnable 	<=	'1';
					washLED		<=	'1';
					
					if(timeExp ='1')then
						s_nState <= MA2;
					elsif(startStop_rE = '1')then
						s_nState <= W;
						s_bStop <= s_pState;		
					else
						s_nState <= RA1;
					end if;
					
													
							
	when MA2 => waterPump 	<= '0';
					waterValve 	<= '1';
					spin			<= '0';
					rinse 		<= '0';
					s_newTime 	<= '1';
					timeVal 		<= waterValve_TIME;
					timeEnable 	<=	'1';
					washLED		<=	'1';
					
					if(timeExp ='1')then
						s_nState <= E2;
					elsif(startStop_rE = '1')then
						s_nState <= W;
						s_bStop <= s_pState;		
					else
						s_nState <= MA2;
					end if;
					
							
	when E2 => 	waterPump 	<= '0';
					waterValve 	<= '0';
					spin			<= '0';
					rinse 		<= '1';
					s_newTime 	<= '1';
					timeVal 		<= rinse_TIME;
					timeEnable 	<=	'1';
					washLED		<=	'1';
					
					if(timeExp ='1') then
						s_nState <= RA2;
					elsif(startStop_rE = '1')then
						s_nState <= W;
						s_bStop <= s_pState;		
					else
						s_nState <= E2;
					end if;
					
																					
							
									
	when RA2 => waterPump 	<= '1';
					waterValve 	<= '0';
					spin			<= '0';
					rinse 		<= '1';
					s_newTime 	<= '1';
					timeVal 		<= waterPump_TIME;
					timeEnable 	<=	'1';
					washLED		<=	'1';
					
					if(timeExp ='1')then
						s_nState <= s3;
					elsif(startStop_rE = '1')then
						s_nState <= W;
						s_bStop <= s_pState;		
					else
						s_nState <= RA2;
					end if;
					
					
					
	when s3 => 	waterPump 	<= '1';
					waterValve 	<= '0';
					spin			<= '1';
					rinse 		<= '0';
					s_newTime 	<= '1';
					timeVal 		<= spin_TIME;
					timeEnable 	<=	'1';
					washLED		<=	'1';
					
					if(timeExp ='1')then
						s_nState <= RA3;	
					elsif(startStop_rE = '1')then
						s_nState <= W;
						s_bStop <= s_pState;	
					else
						s_nState <= s3;
					end if;
						
				
				
	when RA3 => waterPump 	<= '1';
					waterValve 	<= '0';
					spin			<= '0';
					rinse 		<= '1';
					s_newTime 	<= '1';
					timeVal 		<= waterPump_TIME;
					timeEnable 	<=	'1';
					washLED		<=	'1';
					
					if(timeExp ='1')then
						s_nState <= W2s;
					elsif(startStop_rE = '1')then
						s_nState <= W;
						s_bStop <= s_pState;		
					else
						s_nState <= RA3;
					end if;
					
					
	when W2s =>	waterPump 	<= '0';
					waterValve 	<= '0';
					spin			<= '0';
					rinse 		<= '0';
					s_newTime 	<= '1';
					timeVal 		<= Finish_TIME;
					timeEnable 	<=	'1';
					washLED		<=	'1';
					
					if(timeExp ='1')then
						s_nState <= s0;
					elsif(startStop_rE = '1')then
						s_nState <= W;
						s_bStop <= s_pState;		
					else 
						s_nState <= W2s;
					end if;
					
			
			
	when W =>	waterPump 	<= '0';
					waterValve 	<= '0';
					spin			<= '0';
					rinse 		<= '0';
					s_newTime 	<= '0';
					timeVal 		<= (others => '-');
					timeEnable 	<=	'0';
					washLED		<=	'0';
					
					if(startStop_rE = '1')then
						s_nState <= s_bStop;						
					else
						s_nState <= w;	
					end if;
	
	when others => s_nState <= s0;
	
	end case;
	
	end process;
end Behavioral;	

									
