library IEEE; use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity buzzer_tb is
	constant DELAY: time := 10 ns;
end buzzer_tb;

architecture behavior_buzzer_tb of buzzer_tb is
	signal inBoggis, inBunce, inBean, outBoggis, outBunce, outBean, alarm: std_logic;

	component buzzer is
		port(inBoggis, inBunce, inBean, outBoggis, outBunce, outBean : in std_logic; alarm: out std_logic);
	end component;
	
	begin
		uut: component buzzer port map(inBoggis, inBunce, inBean, outBoggis, outBunce, outBean, alarm);	
		process
			variable error_count : integer := 0; 
			variable inputs: unsigned(5 downto 0);
			variable expected: std_logic;

			begin
				report "start simulation";
				for i in 0 to 63 loop
					inputs := TO_UNSIGNED(i, 6);

					inBoggis <= inputs(5);
					inBunce <= inputs(4);
					inBean <= inputs(3);
					outBoggis <= inputs(2);
					outBunce <= inputs(1);
					outBean <= inputs(0);

					if(i <= 8 or i = 16 or i = 24 or i = 32 or i = 40 or i = 48 or i = 56) then expected := '0';
					else expected := '1';
					end if;

					wait for DELAY;
					assert (expected = alarm) 
						report "ERROR: Expected Alarm " & std_logic'image(expected) & " /= Actual Alarm " & 								std_logic'image(alarm) & " at time " & time'image(now);
					
					if (expected /= alarm) then error_count := error_count + 1;
					end if;
				end loop;

				wait for DELAY;
				assert (error_count = 0)
					report "ERROR: There were " &
						integer'image(error_count) & " errors!";
					if(error_count = 0)
						then report "Simulation completed with NO errors.";
					end if;
				wait;
		end process;
end architecture behavior_buzzer_tb;
