library ieee;
use ieee.std_logic_1164.all;

entity parity_testbench is
end parity_testbench;

architecture sample_testbench of parity_testbench is
component parity_gate
port(
a, b, c, d, e, f, g, h, i: in std_logic;
evenparity, oddparity: out std_logic);
end component;

signal A, B, C, D, E, F, G, H, I: std_logic;
signal EVENPARITY, ODDPARITY: std_logic;

begin
U0: parity_gate port map(A=>a,B=>b,C=>c,D=>d,E=>e,F=>f,G=>g,H=>h,I=>i,evenparity=>EVENPARITY,oddparity=>ODDPARITY);
process
begin	
a<='0';
b<='0';
c<='1';
d<='0';
e<='0';
f<='0';
g<='0';
h<='1';
i<='0';
wait for 10 ns;
end process;
end sample_testbench;