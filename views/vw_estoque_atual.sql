CREATE OR REPLACE VIEW vw_estoque_atual AS
    SELECT
        p.id_produto,
        p.nome,
        SUM(
            CASE
                WHEN e.tipo_movimentacao = 'ENTRADA' THEN
                    e.quantidade
                ELSE
                    - e.quantidade
            END
        ) AS saldo_atual
    FROM
        produtos              p
        LEFT JOIN estoque_movimentacoes e ON p.id_produto = e.id_produto
    GROUP BY
        p.id_produto,
        p.nome;

COMMIT;