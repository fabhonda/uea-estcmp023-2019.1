
ALTER TABLE DEPT
        ADD CONSTRAINT dept_id_regiao_fk
        FOREIGN KEY (id_regiao) REFERENCES regiao(id);

ALTER TABLE EMP
        ADD CONSTRAINT emp_id_gerente_fk
        FOREIGN KEY (id_gerente) REFERENCES emp(id);

ALTER TABLE EMP
        ADD CONSTRAINT emp_id_dept_fk   
        FOREIGN KEY (id_dept) REFERENCES dept(id);

ALTER TABLE EMP
       ADD CONSTRAINT emp_cargo_fk
       FOREIGN KEY (cargo) REFERENCES cargos(cargo);

ALTER TABLE cliente
        ADD CONSTRAINT cliente_id_vendedor_fk
        FOREIGN KEY (id_vendedor) REFERENCES emp(id);

ALTER TABLE cliente
        ADD CONSTRAINT cliente_id_regiao_fk
        FOREIGN KEY (id_regiao) REFERENCES regiao(id);

ALTER TABLE pedido
        ADD CONSTRAINT pedido_id_cliente_fk
        FOREIGN KEY (id_cliente) REFERENCES cliente(id);

ALTER TABLE pedido
        ADD CONSTRAINT pedido_id_vendedor_fk
        FOREIGN KEY (id_vendedor) REFERENCES emp(id);

ALTER TABLE produto
       ADD CONSTRAINT produto_id_imagem_fk
       FOREIGN KEY (id_imagem) REFERENCES imagem(id);

ALTER TABLE produto
       ADD CONSTRAINT produto_id_textolongo_fk
       FOREIGN KEY (id_textolongo) REFERENCES textolongo(id);

ALTER TABLE item
        ADD CONSTRAINT item_id_pedido_fk
        FOREIGN KEY (id_pedido) REFERENCES pedido(id);

delete from item
where id_produto not in ( select id from produto );
commit;

ALTER TABLE item
        ADD CONSTRAINT item_id_produto_fk
        FOREIGN KEY (id_produto) REFERENCES produto(id);

ALTER TABLE almoxarifado
        ADD CONSTRAINT almoxarifado_id_gerente_fk
        FOREIGN KEY (id_gerente) REFERENCES emp(id);

ALTER TABLE almoxarifado
        ADD CONSTRAINT almoxarifado_id_regiao_fk
        FOREIGN KEY (id_regiao) REFERENCES regiao(id);

delete from inventario 
where id_produto not in ( select id from produto);
commit;

ALTER TABLE inventario
        ADD CONSTRAINT inventario_id_produto_fk
        FOREIGN KEY (id_produto) REFERENCES produto (id);

ALTER TABLE inventario
        ADD CONSTRAINT inventario_id_almoxarifado_fk
        FOREIGN KEY (id_almoxarifado) REFERENCES almoxarifado(id);

COMMIT;
