-- DB Oficina DSC - Database Experience DIO

USE OficinaDSC;

INSERT INTO Cliente (Nome, Endereco, CPF, TipoPessoa, idVeiculo) VALUES
('José Maria', 'Rua Sete - 221', '12345678909', 'Pessoa Fisica', 3),
('Maria José', 'Rua Nove - 357', '90876536211', 'Pessoa Fisica', 2),
('DSC Fretes', 'Rua Dois - 9863', '0987654321', 'Pessoa Juridica', 1);

INSERT INTO Veiculo (Marca, Modelo, Ano) VALUES
('Fiat', 'Palio', 2017),
('Vw', 'Gol', 2020),
('Ford', 'Escort XR3', 1988),
('Scania', 'S22', 1999);

INSERT INTO Mecanico (Nome, Endereco, Especialidade) VALUES
('Nikao', 'Rua Sete 22', 'Mecanica Geral'),
('Jao', 'Rua Nove 12', 'Funilaria'),
('Carlos', 'Rua Quatro 65', 'Eletrica');

INSERT INTO Fornecedor (Descricao, RazaoSocial, CNPJ) VALUES
('Forncedor1', 'DSC Peças Automotivas', '1234567890'),
('Fornecedor2', 'Brasil Caminhões', '0987654321');

INSERT INTO Pecas (Valor, Quantidade, idFornecedor, Descricao) VALUES
(780.00, 10, 1, 'Porta traseira Gol'),
(80.00, 10, 1, 'Botão farol Palio'),
(643.00, 10, 1, 'Parabrisa Ka'),
(89.00, 10, 1, 'Emblema lateral Gol'),
(130.00, 10, 2, 'Bateria'),
(1500.00, 10, 2, 'Alternador caminhão VW');

INSERT INTO OrdemServico (Status, Descricao, idCliente, idVeiculo, Entrega, ValorTotal, Emissao) VALUES
('FINALIZADO', '79865-50003', 1, 3, 2022-09-13, 1792.00, 2022-09-13),
('FINALIZADO', '79865-50003', 3, 5, 2022-09-13, 150.00, 2022-09-13),
('AGUARDANDO PECAS', '79865-50003', 1, 2, 2022-09-13, 600.00, 2022-09-13),
('ENTREGUE', '79865-50003', 9, 9, 2022-09-13, 657.00, 2022-09-13),
('ORCAMENTO', '79865-50003', 6, 8, 2022-09-13, 6500.00, 2022-09-13),
('FINALIZADO', '79865-50003', 1, 3, 2022-09-13, 2387.00, 2022-09-13),
('ORCAMENTO', '79865-50003', 8, 4, 2022-09-13, 99.99, 2022-09-13);

INSERT INTO PecasOS (idPecas, idOrdemServico) VALUES
(9, 5),
(34, 7),
(11, 1),
(2, 3),
(3, 3),
(9, 2),
(4, 2),
(6, 4),
(21, 1),
(1, 8);