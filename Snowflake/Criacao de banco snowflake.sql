create database novadrive;
create schema stage;
 
CREATE WAREHOUSE DEFAULT_WH;
 
CREATE TABLE veiculos (
    id_veiculos INTEGER,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(100) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    data_atualizacao TIMESTAMP_LTZ,
    data_inclusao TIMESTAMP_LTZ
);
 
CREATE TABLE estados (
    id_estados INTEGER,
    estado VARCHAR(100) NOT NULL,
    sigla CHAR(2) NOT NULL,
    data_inclusao TIMESTAMP_LTZ,
    data_atualizacao TIMESTAMP_LTZ
);
 
CREATE TABLE cidades (
    id_cidades INTEGER,
    cidade VARCHAR(255) NOT NULL,
    id_estados INTEGER NOT NULL,
    data_inclusao TIMESTAMP_LTZ,
    data_atualizacao TIMESTAMP_LTZ
 
);
 
CREATE TABLE concessionarias (
    id_concessionarias INTEGER,
    concessionaria VARCHAR(255) NOT NULL,
    id_cidades INTEGER NOT NULL,
    data_inclusao TIMESTAMP_LTZ,
    data_atualizacao TIMESTAMP_LTZ
);
 
CREATE TABLE vendedores (
    id_vendedores INTEGER,
    nome VARCHAR(255) NOT NULL,
    id_concessionarias INTEGER NOT NULL,
    data_inclusao TIMESTAMP_LTZ,
    data_atualizacao TIMESTAMP_LTZ
);
 
CREATE TABLE clientes (
    id_clientes INTEGER,
    cliente VARCHAR(255) NOT NULL,
    endereco TEXT NOT NULL,
    id_concessionarias INTEGER NOT NULL,
    data_inclusao TIMESTAMP_LTZ,
    data_atualizacao TIMESTAMP_LTZ
);
 
CREATE TABLE vendas (
    id_vendas INTEGER,
    id_veiculos INTEGER NOT NULL,
    id_concessionarias INTEGER NOT NULL,
    id_vendedores INTEGER NOT NULL,
    id_clientes INTEGER NOT NULL,
    valor_pago DECIMAL(10, 2) NOT NULL,
    data_venda TIMESTAMP_LTZ,
    data_inclusao TIMESTAMP_LTZ,
    data_atualizacao TIMESTAMP_LTZ
);