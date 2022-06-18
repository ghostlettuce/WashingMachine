library IEEE;
use IEEE.std_logic_1164.all;


entity Display is
    port(p1  		 : in std_logic;
			p2 		 :	in std_logic;
			p3 		 : in std_logic;
			timeval   : in std_logic_vector(7 downto 0);
			timeEnable:	in std_logic;
			
			D0 		:	out std_logic_vector(6 downto 0);
			D1       :	out std_logic_vector(6 downto 0);
			D2			:	out std_logic_vector(6 downto 0);
			D3			: 	out std_logic_vector(6 downto 0);
			D4			:	out std_logic_vector(6 downto 0);
			D5			:	out std_logic_vector(6 downto 0);
			D6			:	out std_logic_vector(6 downto 0);
	 
	 );
end Display;	
 
	 
architecture Behavioral of Display is

	 

	 
	 
	 