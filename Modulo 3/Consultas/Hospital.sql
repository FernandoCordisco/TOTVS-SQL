CREATE DATABASE hospital_db;

USE hospital_db;

CREATE TABLE planos(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(255) NOT NULL UNIQUE,
	tefelone INT
);

CREATE TABLE pacientes(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	cpf CHAR(11) NOT NULL,
	data_nascimento DATE,
	id_plano INT NOT NULL
	FOREIGN KEY (id_plano) REFERENCES planos (id)
);

CREATE TABLE medicos(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	CRM VARCHAR(30) NOT NULL,
	especialidade VARCHAR(255) NOT NULL,
	id_plano INT NOT NULL
	FOREIGN KEY (id_plano) REFERENCES planos (id)
);

CREATE TABLE alas(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
);

CREATE TABLE enfermeiras_chefe(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	CRE VARCHAR(30) NOT NULL,
	id_ala INT NOT NULL,
	FOREIGN KEY (id_ala) REFERENCES alas (id)
);

ALTER TABLE alas ADD id_enf_chefe INT;
ALTER TABLE alas ADD FOREIGN KEY (id_enf_chefe) REFERENCES alas (id);

CREATE TABLE enfermeiras(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	CRE VARCHAR(30) NOT NULL,
	id_responsavel INT NOT NULL,
	FOREIGN KEY (id_responsavel) REFERENCES enfermeiras_chefe (id)
);

CREATE TABLE ala_recebe_paciente(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	id_paciente INT,
	id_ala INT,
);

CREATE TABLE medico_atende_paciente(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	id_paciente INT,
	id_medico INT,
	FOREIGN KEY (id_paciente) REFERENCES pacientes (id),
	FOREIGN KEY (id_medico) REFERENCES medicos (id),
);

ALTER TABLE ala_recebe_paciente ADD FOREIGN KEY (id_paciente) REFERENCES pacientes (id);
ALTER TABLE ala_recebe_paciente ADD FOREIGN KEY (id_ala) REFERENCES alas (id);

CREATE TABLE hospital(
	id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	cnpj CHAR(14)
);

