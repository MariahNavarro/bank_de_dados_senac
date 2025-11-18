# 📚 Sistema de Banco de Dados Escolar  
### Projeto Acadêmico — SENAC

Este repositório contém a modelagem e implementação de um banco de dados para uma escola, desenvolvido como parte das atividades práticas do curso de **Banco de Dados do SENAC**.

O projeto utiliza comandos SQL das linguagens **DDL** (Data Definition Language) e **DML** (Data Manipulation Language), com foco na criação, organização e manipulação de dados relacionados ao ambiente escolar.

---

## 🚀 Objetivo do Projeto

O objetivo deste trabalho é:

- Criar um banco de dados funcional e organizado para um ambiente escolar.  
- Aplicar conceitos fundamentais de **DDL** e **DML**.  
- Desenvolver tabelas que representem entidades reais do contexto educacional.  
- Inserir e manipular dados através de comandos SQL.  
- Organizar um repositório profissional utilizando boas práticas de documentação.

---

## 🗂 Estrutura do Repositório

- bank_de_dados_senac/
- │
- ├── README.md
- └── bdEscola.sql

---


A pasta **sql_scripts** contém o arquivo principal do banco de dados, incluindo toda a estrutura (DDL) e exemplos de manipulação de dados (DML).

---

## 🏫 Descrição do Banco de Dados

O banco de dados escolar foi projetado para atender às principais necessidades de uma instituição de ensino, contemplando tabelas que representam:

- **Alunos**  
- **Professores**  
- **Cursos**  
- **Turmas**  
- **Matrículas**

Essas entidades permitem registrar informações acadêmicas essenciais e trabalhar os relacionamentos entre alunos, cursos, professores e turmas.

---

# 🧱 Estrutura das Tabelas

## **1. Alunos**  
Armazena informações dos estudantes matriculados.

| Campo          | Tipo      | Descrição                     |
|----------------|-----------|-------------------------------|
| AlunoID (PK)   | INT       | Identificador único do aluno |
| Nome           | VARCHAR   | Nome completo                |
| DataNascimento | DATE      | Data de nascimento           |
| Email          | VARCHAR   | Contato de e-mail            |

---

## **2. Professores**

| Campo            | Tipo    | Descrição                       |
|------------------|---------|---------------------------------|
| ProfessorID (PK) | INT     | Identificador do professor      |
| Nome             | VARCHAR | Nome completo                   |
| Especialidade    | VARCHAR | Disciplina ou área de atuação   |

---

## **3. Cursos**

| Campo          | Tipo    | Descrição                     |
|----------------|---------|-------------------------------|
| CursoID (PK)   | INT     | Identificador do curso        |
| Nome           | VARCHAR | Nome do curso                 |
| CargaHoraria   | INT     | Duração total em horas        |

---

## **4. Turmas**

| Campo            | Tipo | Descrição                      |
|------------------|------|--------------------------------|
| TurmaID (PK)     | INT  | Identificador da turma         |
| CursoID (FK)     | INT  | Associação com o curso         |
| ProfessorID (FK) | INT  | Professor responsável          |
| AnoLetivo        | YEAR | Ano da turma                   |

---

## **5. Matrículas**

| Campo             | Tipo | Descrição                       |
|-------------------|------|---------------------------------|
| MatriculaID (PK)  | INT  | Identificador da matrícula      |
| AlunoID (FK)      | INT  | Aluno matriculado               |
| TurmaID (FK)      | INT  | Turma vinculada                 |
| DataMatricula     | DATE | Data da matrícula               |

---

# 💾 Conteúdo Educacional

## **O que é DDL?**

**DDL (Data Definition Language)** reúne comandos utilizados para criar, alterar e excluir estruturas no banco de dados.

Principais comandos:

- `CREATE DATABASE`  
- `CREATE TABLE`  
- `ALTER TABLE`  
- `DROP TABLE`  

---

## **O que é DML?**

**DML (Data Manipulation Language)** inclui comandos usados para inserir, atualizar, consultar e remover dados.

Principais comandos:

- `INSERT INTO`  
- `UPDATE`  
- `DELETE`  
- `SELECT`  

O arquivo **escola.sql** contém exemplos práticos de todos esses comandos.

---

# ▶ Como Executar o Script

1. Abra seu SGBD MySQL (Workbench, DBeaver, phpMyAdmin, XAMPP etc.).  
2. Importe ou copie o conteúdo do arquivo:

---


3. Execute o script completo.  
4. Todas as tabelas e registros de exemplo serão criados automaticamente.

---

# 📘 Aprendizados

Durante o desenvolvimento deste projeto, foram consolidados os seguintes conhecimentos:

- Estruturação de bancos de dados relacionais.  
- Criação de tabelas com boas práticas de modelagem.  
- Uso de chaves primárias e estrangeiras.  
- Manipulação de dados via DML.  
- Organização profissional de projetos no GitHub.  
- Documentação clara, objetiva e profissional.

---

# 👤 Autor

**Mariah Navarro**  
Curso de Analise e Desenvolvimento de Sistemas — SENAC
