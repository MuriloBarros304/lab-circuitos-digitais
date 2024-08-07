library ieee;
use ieee.std_logic_1164.all;

entity alext is
    Port(
        x, y, z : in std_logic;
        a, b : in std_logic;
        ia, ib : out std_logic);
end alext;

architecture behav of alext is
	
begin

    ia <= (not x and a) or (not y and a and b) or (not y and z and a) or
    (y and not z and a and not b) or (x and not y and z and b) or
    (x and y and not a and b) or (x and y and z and not a);
    ib <= (not x and not y and not z and b) or (not x and not y and z and not b);

end behav;