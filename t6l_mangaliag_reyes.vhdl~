library IEEE;
use IEEE.std_logic_1164.all;

entity buzzer is
	port(inBoggis, inBunce, inBean, outBoggis, outBunce, outBean : in std_logic; alarm: out std_logic);
end buzzer;
	
architecture behavior of buzzer is
begin
	alarm <= (inBoggis and outBoggis) or (inBoggis and outBunce) or (inBoggis and outBean) or (inBunce and outBoggis) or (inBunce and outBunce) or (inBunce and outBean) or (inBean and outBoggis) or (inBean and outBunce) or (inBean and outBean);

end behavior;    
