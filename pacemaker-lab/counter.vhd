entity counter is
	port(
		c: in bit; -- entrada de clock
		cnt: in bit; -- decrementa o valor
		reset: in bit; -- reseta 
		tc: out bit; -- indicativo de termino
		q: out integer range 7 downto 0); -- saída de dados
end counter;

architecture behavior of counter is
begin
	process(c, reset)
		variable qv: integer range 7 downto 0; -- variável para a saída
	begin
		if (reset = '1') then
			qv := 7;
		elsif (c'event and c = '1') then
			if (cnt = '1') then
				qv := qv - 1;
				if (qv = 0) then
					tc <= '1';
				else
					tc <= '0';
				end if;
			end if;
		end if;
		q <= qv;
	end process;
end architecture behavior;
