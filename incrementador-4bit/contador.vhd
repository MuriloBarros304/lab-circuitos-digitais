 ENTITY contador IS
 PORT(
	clk: IN BIT; --entrada de clock
	ld: IN BIT;--carrega os dados
	cnt: IN BIT;--incrementa o valor
	reset: IN BIT;
	data: IN INTEGER RANGE 15 DOWNTO 0;--entrada de dados
	tc: OUT BIT;
	q: OUT INTEGER RANGE 15 DOWNTO 0);--saída de dados
 END contador;
 
 ARCHITECTURE comportamento OF contador IS
	BEGIN PROCESS(clk,reset)
		VARIABLE qv: INTEGER RANGE 15 DOWNTO 0;--variável para a saida
	BEGIN
		IF(reset='1')THEN
			qv:=0;
		ELSIF(clk'event and clk='1')THEN
			IF(ld='1')THEN
				qv := data;
			ELSE
				IF(qv > 15) THEN
					qv := 0;
				ELSE
					IF(cnt < '1') THEN
						qv := qv + 1;
						IF(qv = 15) THEN
							tc <= '1';
						ELSE
							tc <= '0';
						END if;
						
					END IF;
				END IF;
			END IF;
		END IF;
		q <= qv;
	END PROCESS;
 END;

	