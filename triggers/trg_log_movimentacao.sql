CREATE OR REPLACE TRIGGER trg_log_movimentacao AFTER
    INSERT ON estoque_movimentacoes
    FOR EACH ROW
BEGIN
    INSERT INTO estoque_log (
        id_movimentacao,
        operacao
    ) VALUES ( :new.id_movimentacao,
               'INSERIR' );

    COMMIT;
END;