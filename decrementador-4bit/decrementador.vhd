 ENTITY decrementador IS
 PORT(
	clk: IN BIT; --entrada de clock
	ld: IN BIT; --carrega os dados
	cnt: IN BIT; --decrementa o valor
	reset: IN BIT; --reseta 
	data: IN INTEGER RANGE 15 DOWNTO 0; --entrada de dados
	tc: OUT BIT; --indicativo de termino
	q: OUT INTEGER RANGE 15 DOWNTO 0); --saída de dados
 END decrementador;
 
 
 ARCHITECTURE comportamento OF decrementador IS
	BEGIN PROCESS(clk,reset)
		VARIABLE qv: INTEGER RANGE 15 DOWNTO 0; --variável para a saida
	BEGIN
		IF(reset='1')THEN
			qv:=15;
		ELSIF(clk'event and clk='1')THEN
			IF(ld='1')THEN
				qv := data;
			ELSE
				IF(qv < 0) THEN
					qv := 15;
				ELSE
					IF(cnt < '1') THEN
						qv := qv - 1;
						IF(qv = 0) THEN
							tc <= '1';
						ELSE
							tc <= '0';
						END IF;
					END IF;
				END IF;
			END IF;
		END IF;
		q <= qv;
	END PROCESS;
 END;