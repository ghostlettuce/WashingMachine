library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity Regi is 

	port(	clk :in std_logic;
			reset: in std_logic;
			P1: in std_logic;
			P2: in std_logic;
			P3: in std_logic;
			startStop:in std_logic;
			
			outRset: out std_logic;				
			outP1: out std_logic;
			outP2 :out std_logic;
			outP3 :out std_logic;
			outSS :out std_logic);
			
end Regi;

architecture Behavioral of Regi is
	begin
	clk_proc : process(clk)
				begin	
		if (rising_edge(clk))then
			outRset<= reset;
			outP1 <= P1;
			outP2 <= P2;
			outP3 <= P3;
			outSS <= startStop;
		end if;	
	end process;		
	
	
end Behavioral;