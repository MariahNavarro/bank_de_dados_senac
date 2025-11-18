-- ==========================================
-- TABELA: Alunos
-- ==========================================
CREATE TABLE Alunos (
    AlunoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    DataNascimento DATE,
    Email VARCHAR(100)
);
 
-- ==========================================
-- TABELA: Professores
-- ==========================================
CREATE TABLE Professores (
    ProfessorID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Especialidade VARCHAR(100)
);
 
-- ==========================================
-- TABELA: Cursos
-- ==========================================
CREATE TABLE Cursos (
    CursoID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    CargaHoraria INT NOT NULL
);
 
-- ==========================================
-- TABELA: Turmas
-- ==========================================
CREATE TABLE Turmas (
    TurmaID INT AUTO_INCREMENT PRIMARY KEY,
    CursoID INT NOT NULL,
    ProfessorID INT NOT NULL,
    AnoLetivo YEAR NOT NULL,
 
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID),
    FOREIGN KEY (ProfessorID) REFERENCES Professores(ProfessorID)
);
 
-- ==========================================
-- TABELA: Matrículas
-- ==========================================
CREATE TABLE Matriculas (
    MatriculaID INT AUTO_INCREMENT PRIMARY KEY,
    AlunoID INT NOT NULL,
    TurmaID INT NOT NULL,
    DataMatricula DATE NOT NULL,
 
    FOREIGN KEY (AlunoID) REFERENCES Alunos(AlunoID),
    FOREIGN KEY (TurmaID) REFERENCES Turmas(TurmaID)
);
 
-- ==========================================
-- INSERÇÃO DE DADOS (DML)
-- ==========================================
 
-- Alunos
INSERT INTO Alunos (Nome, DataNascimento, Email) VALUES
('Maria Santos', '2007-05-12', 'maria@gmail.com'),
('João Silva', '2006-09-23', 'joao@gmail.com');
 
-- Professores
INSERT INTO Professores (Nome, Especialidade) VALUES
('Ana Paiva', 'Matemática'),
('Carlos Lima', 'História');
 
-- Cursos
INSERT INTO Cursos (Nome, CargaHoraria) VALUES
('Matemática Básica', 60),
('História Geral', 80);
 
-- Turmas
INSERT INTO Turmas (CursoID, ProfessorID, AnoLetivo) VALUES
(1, 1, 2025),
(2, 2, 2025);
 
-- Matrículas
INSERT INTO Matriculas (AlunoID, TurmaID, DataMatricula) VALUES
(1, 1, '2025-02-10'),
(2, 2, '2025-02-11');
 
-- ==========================================
-- CONSULTAS (EXEMPLOS)
-- ==========================================
SELECT * FROM Alunos;
SELECT * FROM Professores;
SELECT * FROM Cursos;
SELECT * FROM Turmas;
SELECT * FROM Matriculas;
 
 
