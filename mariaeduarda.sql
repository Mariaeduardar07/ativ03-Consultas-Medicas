CREATE DATABASE hospital;

\c hospital;

CREATE TABLE pacientes (
    id_paciente SERIAL PRIMARY KEY,
    nome_completo_paciente VARCHAR(130) NOT NULL,
    cpf VARCHAR(11),
    email varchar(140) UNIQUE NOT NULL
)

CREATE TABLE medicos (
    id_medico SERIAL PRIMARY KEY,
    nome_completo_medico VARCHAR(130) NOT NULL,
   especialidade VARCHAR(130) NOT NULL,
    crm INT
);


CREATE TABLE consultas (
    id_consulta SERIAL PRIMARY KEY,
    id_medico INT NOT NULL,
    id_paciente INT NOT NULL
    data_consulta DATE NOT NULL,
    horario_consulta TIME NOT NULL
);
