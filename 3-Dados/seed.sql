INSERT INTO clientes (nome) VALUES
     ('ReiterLog'), 
     ('Hortti');

INSERT INTO vendedores (nome, telefone) VALUES 
    ('Thiago Cascaes', '51999264942'), 
    ('Daniel Giacomelli', '51981948730'),
    ('Jully', null);

INSERT INTO produtos (descricao, precounitario) VALUES 
    ('Latromi Starter', 1250),
    ('Latromi Impulse', 1550),
    ('Latromi Growth', 1950),
    ('Latromi Full', 2500);

INSERT INTO pedidos (idcliente, idvendedor, dtpedido, valortotal, usuarioinc)
    VALUES (
        (SELECT id FROM clientes WHERE nome = 'Hortti'),
        (SELECT id FROM vendedores WHERE nome = 'Daniel Giacomelli'),
        CURRENT_DATE,
        1950,
        'latromi\daniel.giacomelli'
    );