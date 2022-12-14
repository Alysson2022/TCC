insert into tb_usuario (nm_usuario, ds_email, ds_senha)
	VALUES ('andre', 'dede@gmail.com', '1234');
    
select id_usuario		id,
	   nm_usuario		nome,
       ds_email			email
  from tb_usuario
   where ds_email	    = 'dede@gmail.com'
	 and ds_senha		= '1234';

    insert into tb_produto (id_departamento, nm_produto, vl_preco, dt_criacao, bt_destaque)
                    values (1, 'Tenis A', 600.5, '2019-05-10', true);

    insert into tb_produto_categoria (id_categoria, id_produto)
                            values (1, 1);
                            
    insert into tb_produto_categoria (id_categoria, id_produto)
                            values (2, 1);                          


SELECT id_cupom         id,
       cod_cupom        cod,
       vl_cupom         valor,
       qtd_restante     restante
  FROM tb_cupom 
 WHERE cod_cupom = ?;

UPDATE tb_cupom
   SET qtd_restante = qtd_restante - 1
 WHERE id_cupom = ?


INSERT INTO tb_pedido (
	id_usuario,
	id_usuario_endereco,
	id_cupom,
	dt_pedido,
	cod_nota_fiscal,
	tp_frete,
	vl_frete,
	ds_status,
	tp_pagamento
)
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);


INSERT INTO tb_pedido_item (
	id_pedido,
	id_produto,
	qtd_itens,
	vl_produto
)
VALUES (?, ?, ?, ?);



INSERT INTO tb_pagamento_cartao
(
	id_pedido,
	nm_cartao,
	nr_cartao,
	dt_vencimento,
	cod_seguranca,
	nr_parcelas,
	ds_forma_pagamento
)
VALUES (?, ?, ?, ?, ?, ?, ?);