-- DB Oficina DSC - Database Experience DIO

USE OficinaDSC;

SELECT * FROM Cliente
ORDER BY Nome;

SELECT COUNT(*) FROM OrdemServico
HAVING ValorTotal >= 500;

SELECT Marca, Modelo FROM Veiculo;

SELECT * FROM Mecanico
WHERE Especialidade = 'Funilaria';

SELECT F.RazaoSocal, P.Valor, P.Quantidade FROM Pecas AS P
INNER JOIN Fornecedor AS F ON P.idFornecedor = F.idFornecedor
WHERE F.idFornecedor = 1
GROUP BY F.RazaoSocal, P.Valor, P.Quantidade;