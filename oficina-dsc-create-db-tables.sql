-- DB Oficina DSC - Database Experience DIO

CREATE DATABASE OficinaDSC;

USE OficinaDSC;

CREATE TABLE Cliente(
	idCliente INT auto_increment PRIMARY KEY,
    idTipoPessoa INT,
    idVeiculo INT,
    Nome VARCHAR(120),
    Endereco VARCHAR(120),
	CPF CHAR (11) NOT NULL UNIQUE,
    CONSTRAINT unique_cpf_cliente UNIQUE (CPF),
    FOREIGN KEY (idTipoPessoa) REFERENCES TipoPessoa(idTipoPessoa),
    FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo)
    );
    
CREATE TABLE TipoPessoa(
	idTipoPessoa INT auto_increment PRIMARY KEY,
    TipoPessoa ENUM('Pessoa Física', 'Pessoa Jurídica')    
);

CREATE TABLE Veiculo(
	idVeiculo INT auto_increment PRIMARY KEY,
    Marca VARCHAR(30),
    Modelo VARCHAR(30),
    Ano INT
);

CREATE TABLE Peca(
	idPeca INT auto_increment PRIMARY KEY,
    idFornecedor INT,
    Valor DOUBLE,
    Quantidade INT,
    Descricao VARCHAR(300),
    FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idFornecedor)
);

CREATE TABLE Fornecedor(
	idFornecedor INT auto_increment PRIMARY KEY,
    Descricao VARCHAR(300),
    RazaoSocial VARCHAR(100),
    CNPJ VARCHAR(11)
);

CREATE TABLE OrdemServico(
	idOrdemServico INT auto_increment PRIMARY KEY,
    idCliente INT,
    idEquipe INT,
    idVeiculo INT,
    ValorFinal FLOAT,
    Descricao VARCHAR(200),
    Entrega DATETIME, 
    Emissao DATETIME,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (idEquipe) REFERENCES Equipe(idEquipe),
    FOREIGN KEY (idVeiculo) REFERENCES Veiculo(idVeiculo)
);

CREATE TABLE Equipe(
	idEquipe INT auto_increment PRIMARY KEY,
    idMecanico INT,
    idOrdemServico INT,
    Nome VARCHAR(45),
    Descricao VARCHAR(200),
    FOREIGN KEY (idMecanico) REFERENCES Mecanico(idMecanico),
    FOREIGN KEY (idOrdemServico) REFERENCES OrdemServico(idOrdemServico)
);

CREATE TABLE Mecanico(
	idMecanico INT auto_increment PRIMARY KEY,
    Nome VARCHAR(45),
    Endereco VARCHAR(45),
    Especialidade VARCHAR(45)
);

CREATE TABLE PecasOS(
    idPecasOS INT auto_increment PRIMARY KEY,
	idPeca INT,
    idOrdemServico INT,
    Quantidade FLOAT DEFAULT 1,
    FOREIGN KEY (idPeca) REFERENCES Peca(idPeca),
    FOREIGN KEY (idOrdemServico) REFERENCES OrdemServico(idOrdemServico)
);