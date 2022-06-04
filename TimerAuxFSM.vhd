library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerAuxFSM is
	port(reset		: in  std_logic;
		  clk			: in  std_logic;
		  newTime	: in  std_logic;
		  timeEn		: in	std_logic;
		  timeVal	: in  std_logic_vector(7 downto 0);
		  timeExp	: out std_logic);
end TimerAuxFSM;

architecture Behavioral of TimerAuxFSM is

	signal s_counter : unsigned(39 downto 0) := (others => '1');
	signal s_cntZero : std_logic := '0';
	
	constant pulsePerSec	: integer := 50000000; 

begin
	process(clk)
	begin
	
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_counter <= (others => '1');
				s_cntZero <= '0';
			elsif (newTime = '1') then
				s_counter <= (unsigned(timeVal) * unsigned(to_unsigned(pulsePerSec, 32))) - 1;
				s_cntZero <= '0';
			elsif (timeEn = '1') then
				if (unsigned(s_counter) = 0) then
					s_cntZero <= '1';
				else
					s_counter <= s_counter  - 1;
					s_cntZero <= '0';
				end if;
			else
				s_counter <= s_counter;
			end if;
		end if;
		
	end process;
	
	timeExp <= s_cntZero;
end Behavioral;