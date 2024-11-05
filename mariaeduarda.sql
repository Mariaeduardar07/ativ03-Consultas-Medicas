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
    CONSTRAINT fk_paciente FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
    CONSTRAINT fk_medico FOREIGN KEY (id_medico) REFERENCES medicos(id_medico)
);


INSERT INTO pacientes (nome_completo, cpf, email) VALUES
('Ana Sofia Alves', 25478957803, 'ana.sofia@gmail.com'),
('Beatriz Roza', 54783849610, 'beatriz.roza@gmail.com'),
('Thiago Ferreira', 52803894608, 'thiago.ferreira@gmail.com'),
('Marcelo Carboni', 18437458809, 'marcelo.carboni@gmail.com'),
('Nicolle Cezar', 49801836418, 'nicolle.cezar@gmail.com');

INSERT INTO medicos (nome_completo, especialidade, crm) VALUES
('Dra Anna','Ortopedista',528496),
('Dra Mariana ','Demartologista', 184374),
('Dra Maria','Pediatra', 167832),
('Dr Felipe','Demartologista', 441573),
('Dr Fernando','Cardiologista', 246018);


INSERT INTO consultas (id_paciente, id_medico, data_consulta, horario_consulta) VALUES
(1, 3,'2024-11-09', '13:30:00'),
(3, 5, '2024-10-20','15:00:00' ),
(2, 2,'2024-12-14', '13:00:00'),
(4, 1,'2024-11-23', '14:30:00'),
(5, 5,'2024-10-18', '16:30:00');
