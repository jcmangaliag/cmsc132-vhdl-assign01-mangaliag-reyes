------------------------------------------------------------
-- Mangaliag, Juan Carlo M.				2013-57273		   -
-- Reyes, Anton-Renzo Benedict G.		2013-45594		   -
-- March 23, 2016						T-6L			   -
-- Alarm system for Mr.Fox's Farm (Main File)			   -
------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity buzzer is
	port(inBoggis, inBunce, inBean, outBoggis, outBunce, outBean : in std_logic; alarm: out std_logic);
end buzzer;
	
architecture behavior of buzzer is
begin
	alarm <= (inBoggis and outBoggis) or 
			 (inBoggis and outBunce)  or 
			 (inBoggis and outBean)   or 
			 (inBunce and outBoggis)  or 
			 (inBunce and outBunce)   or 
			 (inBunce and outBean)    or 
			 (inBean and outBoggis)   or 
			 (inBean and outBunce)    or 
			 (inBean and outBean);
			 
			 ---------------------------------------------------------------------
			 --Alarm is 1 if atleast 1 buzzer is ON and atleast 1 buzzer is OFF.--
			 ---------------------------------------------------------------------
end behavior;    
