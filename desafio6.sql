SELECT  if(MIN(valor_plano) = TRUE, '0.00', 0.00) AS faturamento_minimo,
		    MAX(valor_plano) AS faturamento_maximo,
        ROUND(AVG(valor_plano), 2) AS faturamento_medio,
        ROUND(SUM(valor_plano), 2) AS faturamento_total
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u ON u.plano_id = p.plano_id;