# Atividade 1: Prática de SQL DDL

Esta atividade tem como objetivo aprimorar suas habilidades com a Linguagem de Definição de Dados (DDL) do SQL, focando na criação de tabelas.

Para cada exercício, você deve criar um script SQL com a instrução `CREATE TABLE`, definindo as colunas, tipos de dados e restrições (chaves primárias, chaves estrangeiras, `NOT NULL`, `UNIQUE`, `AUTO-INCREMENT`, etc.).

---

### **Exercício 1: Loja de Roupas**

**Contexto:** Uma pequena loja online de roupas precisa de um sistema para organizar seus produtos, gerenciar o estoque e registrar os preços. O banco de dados servirá como o catálogo principal da loja.

## Tabela `produtos`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `id_produto` | `INT` | **Chave Primária**, Auto Incremento | Identificador único do produto. |
| `nome` | `VARCHAR(50)` | Não Nulo | Nome do produto. |
| `descricao` | `VARCHAR(255)` | Nenhuma | Detalhes do produto. |
| `preco` | `DECIMAL(10, 2)` | Não Nulo | Preço de venda do produto. |
| `estoque` | `INT` | Não Nulo, Padrão `0` | Quantidade de unidades disponíveis. |

### Modelagem Lógica
![Modelagem Lógica da Tabela Produtos](https://github.com/WeslynFigueiredo/SistemasParaInternet-BancoDeDadosII-2025.2/blob/main/Atividade%201:%20Pr%C3%A1tica%20de%20SQL%20DDL/imagens/q1.png?raw=true)

---

### **Exercício 2: Sistema de Biblioteca**

**Contexto:** Uma biblioteca pública quer modernizar sua gestão, criando um banco de dados para catalogar todos os livros e registrar informações essenciais como título, autor e o ISBN, que é um identificador único internacional.

## Tabela `livros`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `id_livro` | `INT` | **Chave Primária** | Identificador único do livro. |
| `titulo` | `VARCHAR(100)` | Não Nulo | Título do livro. |
| `autor` | `VARCHAR(100)` | Não Nulo | Nome do autor. |
| `ano_publicacao` | `INT` | Nenhuma | Ano de publicação. |
| `isbn` | `VARCHAR(20)` | **Único**, Não Nulo | Número de identificação único. |

### Modelagem Lógica
![Modelagem Lógica da Tabela Livros](https://github.com/WeslynFigueiredo/SistemasParaInternet-BancoDeDadosII-2025.2/blob/main/Atividade%201:%20Pr%C3%A1tica%20de%20SQL%20DDL/imagens/q2.png?raw=true)

---

### **Exercício 3: Gestão de Projetos**

**Contexto:** Uma equipe de desenvolvimento de software precisa de uma forma simples de acompanhar o andamento de seus projetos. Este banco de dados permitirá registrar o nome de cada projeto e as datas de início e fim.

## Tabela `projetos`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `id_projeto` | `INT` | **Chave Primária** | Identificador único do projeto. |
| `nome_projeto` | `VARCHAR(100)` | Não Nulo | Nome do projeto. |
| `data_inicio` | `DATE` | Nenhuma | Data em que o projeto começou. |
| `data_fim` | `DATE` | Nenhuma | Data prevista ou real de término. |

### Modelagem Lógica
![Modelagem Lógica da Tabela Projetos](https://github.com/WeslynFigueiredo/SistemasParaInternet-BancoDeDadosII-2025.2/blob/main/Atividade%201:%20Pr%C3%A1tica%20de%20SQL%20DDL/imagens/q3.png?raw=true)

---

### **Exercício 4: Academia de Ginástica**

**Contexto:** Uma academia de ginástica quer gerenciar as informações de seus alunos. O sistema deve armazenar dados pessoais e um campo que indique se a mensalidade do aluno está ativa.

## Tabela `alunos`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `id_aluno` | `INT` | **Chave Primária** | Identificador único do aluno. |
| `nome` | `VARCHAR(100)` | Não Nulo | Nome completo do aluno. |
| `data_nascimento` | `DATE` | Nenhuma | Data de nascimento do aluno. |
| `email` | `VARCHAR(50)` | **Único** | Endereço de e-mail para contato. |
| `ativo` | `BOOLEAN` | Padrão `TRUE` | Indica se a matrícula está ativa. |

### Modelagem Lógica
![Modelagem Lógica da Tabela Alunos](https://github.com/WeslynFigueiredo/SistemasParaInternet-BancoDeDadosII-2025.2/blob/main/Atividade%201:%20Pr%C3%A1tica%20de%20SQL%20DDL/imagens/q4.png?raw=true)

---

### **Exercício 5: Vendas Online**

**Contexto:** Para controlar as transações de um e-commerce, é fundamental ter um sistema que conecte os clientes aos pedidos que eles realizam. Este modelo de banco de dados cria essa relação entre as duas tabelas.

## Tabela `clientes`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `id_cliente` | `INT` | **Chave Primária** | Identificador único do cliente. |
| `nome` | `VARCHAR(100)` | Não Nulo | Nome completo do cliente. |
| `email` | `VARCHAR(100)` | **Único**, Não Nulo | E-mail do cliente para login e contato. |

## Tabela `pedidos`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `id_pedido` | `INT` | **Chave Primária** | Identificador único do pedido. |
| `id_cliente` | `INT` | **Chave Estrangeira** (`clientes`) | Chave de ligação com a tabela de clientes. |
| `data_pedido` | `DATE` | Não Nulo, Padrão a data atual | Data em que o pedido foi feito. |
| `valor_total` | `DECIMAL(10, 2)` | Não Nulo | Valor total do pedido, incluindo taxas. |

### Modelagem Lógica
![Modelagem Lógica das Tabelas Clientes e Pedidos](https://github.com/WeslynFigueiredo/SistemasParaInternet-BancoDeDadosII-2025.2/blob/main/Atividade%201:%20Pr%C3%A1tica%20de%20SQL%20DDL/imagens/q5.png?raw=true)

---

### **Exercício 6: Blog de Notícias**

**Contexto:** Um blog online precisa organizar seus artigos e os autores. Este banco de dados cria a estrutura para associar cada publicação ao seu autor, armazenando o título, o conteúdo e a data de publicação.

## Tabela `autores`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `id_autor` | `INT` | **Chave Primária** | Identificador único do autor. |
| `nome` | `VARCHAR(100)` | Não Nulo | Nome completo do autor. |

## Tabela `posts`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `id_post` | `INT` | **Chave Primária** | Identificador único do post. |
| `titulo` | `VARCHAR(150)` | Não Nulo | Título da publicação. |
| `conteudo` | `TEXT` | Não Nulo | Corpo do texto do post. |
| `data_publicacao` | `TIMESTAMP` | Não Nulo, Padrão a data e hora atuais | Data e hora em que o post foi publicado. |
| `id_autor` | `INT` | **Chave Estrangeira** (`autores`) | Chave de ligação com a tabela de autores. |

### Modelagem Lógica
![Modelagem Lógica das Tabelas Autores e Posts](https://github.com/WeslynFigueiredo/SistemasParaInternet-BancoDeDadosII-2025.2/blob/main/Atividade%201:%20Pr%C3%A1tica%20de%20SQL%20DDL/imagens/q6.png?raw=true)

---

### **Exercício 7: Sistema Escolar**

**Contexto:** Uma escola quer um sistema para gerenciar alunos e as disciplinas que eles cursam. A tabela de `matriculas` será responsável por conectar os alunos às disciplinas, formando uma relação de "muitos para muitos".

## Tabela `alunos`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `matricula` | `VARCHAR(10)` | **Chave Primária** | Número de identificação do aluno. |
| `nome` | `VARCHAR(100)` | Não Nulo | Nome completo do aluno. |
| `data_nascimento` | `DATE` | Nenhuma | Data de nascimento. |

## Tabela `disciplinas`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `id_disciplina` | `INT` | **Chave Primária** | Identificador da disciplina. |
| `nome_disciplina` | `VARCHAR(50)` | Não Nulo | Nome da disciplina. |
| `carga_horaria` | `INT` | Não Nulo, com valor mínimo de 10 | Carga horária total da disciplina. |

## Tabela `matriculas`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `matricula_aluno` | `VARCHAR(10)` | **Chave Estrangeira** (`alunos`), parte da **Chave Primária Composta** | Referência à matrícula do aluno. |
| `id_disciplina` | `INT` | **Chave Estrangeira** (`disciplinas`), parte da **Chave Primária Composta** | Referência à disciplina. |

### Modelagem Lógica
![Modelagem Lógica das Tabelas Alunos, Disciplinas e Matrículas](https://github.com/WeslynFigueiredo/SistemasParaInternet-BancoDeDadosII-2025.2/blob/main/Atividade%201:%20Pr%C3%A1tica%20de%20SQL%20DDL/imagens/q7.png?raw=true)

---

### **Exercício 8: Clínica Médica**

**Contexto:** Uma clínica médica precisa de um sistema para registrar consultas, associando um paciente e um médico para cada agendamento. O banco de dados deve ser capaz de registrar quem foi atendido por quem, e em que momento.

## Tabela `pacientes`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `id_paciente` | `INT` | **Chave Primária**, Auto Incremento | Identificador único do paciente. |
| `nome` | `VARCHAR(100)` | Não Nulo | Nome completo do paciente. |
| `cpf` | `VARCHAR(11)` | **Único**, Não Nulo | CPF para identificação. |
| `data_nascimento` | `DATE` | Nenhuma | Data de nascimento do paciente. |

## Tabela `medicos`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `crm` | `VARCHAR(15)` | **Chave Primária** | Número de registro do médico (CRM). |
| `nome` | `VARCHAR(100)` | Não Nulo | Nome do médico. |
| `especialidade` | `VARCHAR(50)` | Nenhuma | Área de especialização do médico. |

## Tabela `consultas`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `id_consulta` | `INT` | **Chave Primária** | Identificador único da consulta. |
| `id_paciente` | `INT` | **Chave Estrangeira** (`pacientes`) | Referência ao paciente atendido. |
| `crm_medico` | `VARCHAR(15)` | **Chave Estrangeira** (`medicos`) | Referência ao médico que atendeu. |
| `data_hora` | `DATETIME` | Não Nulo | Data e hora da consulta. |

---

### **Exercício 9: Rede Social**

**Contexto:** Para o lançamento de uma nova rede social, é preciso criar a estrutura básica de dados. O objetivo é armazenar as informações dos usuários e as publicações que eles fazem, garantindo a ligação entre quem postou o quê.

## Tabela `usuarios`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `id_usuario` | `INT` | **Chave Primária**, Auto Incremento | Identificador único do usuário. |
| `nome_usuario` | `VARCHAR(50)` | **Único**, Não Nulo | Nome de usuário (login). |
| `email` | `VARCHAR(100)` | **Único**, Não Nulo | Endereço de e-mail do usuário. |
| `data_cadastro` | `TIMESTAMP` | Padrão a data e hora atuais | Data em que a conta foi criada. |

## Tabela `posts`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `id_post` | `INT` | **Chave Primária** | Identificador único da publicação. |
| `id_usuario` | `INT` | **Chave Estrangeira** (`usuarios`) | Referência ao usuário que criou o post. |
| `conteudo` | `TEXT` | Não Nulo | Conteúdo do texto ou mídia do post. |
| `data_post` | `TIMESTAMP` | Não Nulo, Padrão a data e hora atuais | Data e hora em que o post foi publicado. |

---

### **Exercício 10: Sistema de RH**

**Contexto:** Um departamento de Recursos Humanos precisa de um sistema para organizar a força de trabalho da empresa. O objetivo é registrar cada funcionário e associá-lo ao departamento correto.

## Tabela `departamentos`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `id_departamento` | `INT` | **Chave Primária** | Identificador único do departamento. |
| `nome_departamento` | `VARCHAR(50)` | **Único**, Não Nulo | Nome do departamento. |

## Tabela `funcionarios`

| Nome da Coluna | Tipo de dados | Restrições | Descrição |
| :--- | :--- | :--- | :--- |
| `id_funcionario` | `INT` | **Chave Primária** | Identificador único do funcionário. |
| `nome` | `VARCHAR(100)` | Não Nulo | Nome completo do funcionário. |
| `data_contratacao` | `DATE` | Não Nulo | Data em que o funcionário foi contratado. |
| `salario` | `DECIMAL(10, 2)` | Não Nulo, com valor mínimo de 0 | Salário mensal do funcionário. |
| `id_departamento` | `INT` | **Chave Estrangeira** (`departamentos`) | Chave de ligação com o departamento do funcionário. |
