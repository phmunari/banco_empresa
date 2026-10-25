ALTER TABLE funcionarios
    ADD CONSTRAINT uq_funcionarios_cpf UNIQUE (cpf),
    ADD CONSTRAINT uq_funcionarios_email UNIQUE (email);
    
ALTER TABLE funcionarios
    MODIFY COLUMN cpf CHAR(11) NOT NULL,
    MODIFY COLUMN email VARCHAR(254) NOT NULL;
    
ALTER TABLE funcionarios
    MODIFY COLUMN id_funcionario INT NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (id_funcionario);

ALTER TABLE departamentos
    MODIFY COLUMN id_departamento INT NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (id_departamento);

CREATE VIEW view_funcionarios_cargos_departamentos AS
SELECT
    f.nome AS funcionario,
    c.nome AS cargo,
    d.nome AS departamento
FROM funcionarios AS f
JOIN cargos AS c
    ON f.id_cargo = c.id_cargo
JOIN departamentos AS d
    ON f.id_departamento = d.id_departamento;
    
--- select * from view_funcionarios_cargos_departamentos

CREATE VIEW vw_total_salarios_departamento AS
SELECT
    d.nome AS departamento,
    SUM(f.salario) AS total_salarios
FROM departamentos AS d
JOIN funcionarios AS f
    ON d.id_departamento = f.id_departamento
GROUP BY d.id_departamento, d.nome;

--- SELECT * FROM vw_total_salarios_departamento ORDER BY total_salarios DESC;

ALTER TABLE produtos
    MODIFY COLUMN valor DECIMAL(10,2) NULL DEFAULT NULL;

ALTER TABLE material
    MODIFY COLUMN valor DECIMAL(10,2) NULL DEFAULT NULL;
