CREATE TABLE veiculo (
Id int(11) NOT NULL AUTO_INCREMENT,
Placa varchar(09) NOT NULL,
Marca varchar(20) NOT NULL,
Modelo varchar(20) NOT NULL,
PRIMARY KEY (Id)
);

CREATE TABLE funcionario (
Id int(11) NOT NULL AUTO_INCREMENT,
Nome varchar(60) NOT NULL,
Matricula int(08) NOT NULL,
VeiculoId Int(11) NOT NULL,
PRIMARY KEY (Id),
FOREIGN KEY (VeiculoId) REFERENCES veiculo(Id)
);

INSERT INTO veiculo (Placa, Marca, Modelo) VALUES
('VUW2624', 'FIAT', 'SIENA'),
('VUA8486', 'FORD', 'FORDKA'),
('VUK4512', 'GM', 'ASTRA'),
('VUS5459', 'JEEP', 'RENEGADE'),
('VUH3436', 'VW', 'POLO');

INSERT INTO funcionario (Nome, Matricula, VeiculoId) VALUES
('MARCOS', '5459', 1),
('LUIZ', '6467', 2),
('LIA', '4849', 3),
('IZOLDA', '9894', 4),
('IMAR', '4513', 5),
('HEITOR', '2328', 3),
('JESSE', '5461', 4);