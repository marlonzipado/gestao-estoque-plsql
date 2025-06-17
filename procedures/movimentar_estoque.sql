CREATE OR REPLACE PROCEDURE movimentar_estoque (
    p_id_produto        IN NUMBER,
    p_tipo_movimentacao IN VARCHAR2,
    p_quantidade        IN NUMBER
) AS
BEGIN
    INSERT INTO estoque_movimentacoes (
        id_produto,
        tipo_movimentacao,
        quantidade
    ) VALUES ( p_id_produto,
               upper(p_tipo_movimentacao),
               p_quantidade );

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;