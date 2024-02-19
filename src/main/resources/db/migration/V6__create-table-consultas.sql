CREATE TABLE consultas (
                           id bigint IDENTITY(1,1) NOT NULL,
                           medico_id bigint NOT NULL,
                           paciente_id bigint NOT NULL,
                           data datetime NOT NULL,

                           CONSTRAINT PK_consultas PRIMARY KEY (id),
                           CONSTRAINT FK_consultas_medico_id FOREIGN KEY (medico_id) REFERENCES medicos(id),
                           CONSTRAINT FK_consultas_paciente_id FOREIGN KEY (paciente_id) REFERENCES pacientes(id)
);
