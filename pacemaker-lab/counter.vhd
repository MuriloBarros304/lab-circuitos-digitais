entity counter is
port(
	clk: in bit; --entrada de clock
	ld: in bit; --carrega os dados
	cnt: in bit; --decrementa o valor
	reset: in bit; --reseta 
	data: in integer range 7 downto 0; --entrada de dados
	tc: out bit; --indicativo de termino
	q: out integer range 7 downto 0); --saída de dados
end counter;

architecture behavior of counter is
begin process(clk,reset)
	variable qv: integer range 7 downto 0; --variável para a saida
begin
	if(reset='1') then
		qv:=7;
	elsif(clk'event and clk='1') then
		if(ld='1')then
			qv := data;
		else
			if(qv < 0) then
				qv := 7;
			else
				if(cnt < '1') then
					qv := qv - 1;
					if(qv = 0) then
						tc <= '1';
					else
						tc <= '0';
					end if;
				end if;
			end if;
		end if;
	end if;
	q <= qv;
end process;
end;