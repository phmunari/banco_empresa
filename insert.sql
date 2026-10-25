INSERT INTO departamentos (id_departamento, nome) VALUES
(1, 'TI'),
(2, 'RH'),
(3, 'Financeiro'),
(4, 'Coordenação'),
(5, 'Produção');

INSERT INTO cargos (id_cargo, nome) VALUE
(1, 'Júnior'),
(2, 'Pleno'),
(3, 'Sênior');

INSERT INTO funcionarios (
    id_funcionario, nome, cpf, salario, email,
    data_contratacao, id_departamento, id_cargo
) VALUES
(1, 'Ana Silva', '00000000001', 2800.00,
 'ana.silva@empresa.com', '2025-02-10', 1, 1),

(2, 'Bruno Santos', '00000000002', 4500.00,
 'bruno.santos@empresa.com', '2023-06-15', 1, 2),

(3, 'Carla Oliveira', '00000000003', 7200.00,
 'carla.oliveira@empresa.com', '2020-03-02', 1, 3),

(4, 'Daniel Souza', '00000000004', 2300.00,
 'daniel.souza@empresa.com', '2025-05-05', 2, 1),

(5, 'Elisa Pereira', '00000000005', 3500.00,
 'elisa.pereira@empresa.com', '2022-08-22', 2, 2),

(6, 'Felipe Costa', '00000000006', 5200.00,
 'felipe.costa@empresa.com', '2019-11-18', 2, 3),

(7, 'Gabriela Almeida', '00000000007', 2600.00,
 'gabriela.almeida@empresa.com', '2025-01-13', 3, 1),

(8, 'Henrique Lima', '00000000008', 4000.00,
 'henrique.lima@empresa.com', '2023-04-03', 3, 2),

(9, 'Isabela Rocha', '00000000009', 6000.00,
 'isabela.rocha@empresa.com', '2020-09-14', 3, 3),

(10, 'João Martins', '00000000010', 3000.00,
 'joao.martins@empresa.com', '2024-07-01', 4, 1),

(11, 'Larissa Ferreira', '00000000011', 4800.00,
 'larissa.ferreira@empresa.com', '2021-10-11', 4, 2),

(12, 'Marcos Ribeiro', '00000000012', 6800.00,
 'marcos.ribeiro@empresa.com', '2018-02-19', 4, 3),

(13, 'Natália Gomes', '00000000013', 2200.00,
 'natalia.gomes@empresa.com', '2025-03-17', 5, 1),

(14, 'Pedro Barbosa', '00000000014', 3200.00,
 'pedro.barbosa@empresa.com', '2022-12-05', 5, 2),

(15, 'Renata Carvalho', '00000000015', 4600.00,
 'renata.carvalho@empresa.com', '2019-05-27', 5, 3);

 

INSERT INTO produtos (nome, valor) VALUES
('Mesa de escritório', 650.00),
('Cadeira de escritório', 450.00),
('Armário de aço', 900.00),
('Estante de madeira', 350.00),
('Balcão de atendimento', 1200.00);

INSERT INTO material (nome, valor) VALUES
('Chapa de madeira MDF', 180.00),
('Chapa de aço', 250.00),
('Caixa de parafusos', 35.00),
('Lata de tinta', 85.00),
('Cola para madeira', 28.00);
