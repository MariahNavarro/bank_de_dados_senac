CREATE TABLE Alunos (
    AlunoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    DataNascimento DATE,
    Email VARCHAR(100)
);
CREATE TABLE Professores (
    ProfessorID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Especialidade VARCHAR(100)
);
CREATE TABLE Cursos (
    CursoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CargaHoraria INT NOT NULL
);
CREATE TABLE Turmas (
    TurmaID INT AUTO_INCREMENT PRIMARY KEY,
    CursoID INT NOT NULL,
    ProfessorID INT NOT NULL,
    AnoLetivo YEAR NOT NULL,
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID),
    FOREIGN KEY (ProfessorID) REFERENCES Professores(ProfessorID)
);
CREATE TABLE Matriculas (
    MatriculaID INT AUTO_INCREMENT PRIMARY KEY,
    AlunoID INT NOT NULL,
    TurmaID INT NOT NULL,
    DataMatricula DATE NOT NULL,
    FOREIGN KEY (AlunoID) REFERENCES Alunos(AlunoID),
    FOREIGN KEY (TurmaID) REFERENCES Turmas(TurmaID)
);
INSERT INTO Alunos (Nome, DataNascimento, Email) VALUES
('Maria Santos', '2007-05-12', 'maria@gmail.com'),
('João Silva', '2006-09-23', 'joao@gmail.com');
INSERT INTO Professores (Nome, Especialidade) VALUES
('Ana Paiva', 'Matemática'),
('Carlos Lima', 'História');
INSERT INTO Cursos (Nome, CargaHoraria) VALUES
('Matemática Básica', 60),
('História Geral', 80);
INSERT INTO Turmas (CursoID, ProfessorID, AnoLetivo) VALUES
(1, 1, 2025),
(2, 2, 2025);
INSERT INTO Matriculas (AlunoID, TurmaID, DataMatricula) VALUES
(1, 1, '2025-02-10'),
(2, 2, '2025-02-11');
SELECT * FROM Alunos;
SELECT * FROM Professores;
SELECT * FROM Cursos;
SELECT * FROM Turmas;
SELECT * FROM Matriculas;
 
 


