# Projeto End-to-End: Airflow em Docker, Snowflake e dbt

## Objetivo
Recentemente, concluí um projeto completo para integrar dados, utilizando o Airflow em um contêiner Docker hospedado em uma instância EC2 na AWS, Snowflake e dbt. O objetivo era criar um pipeline que extraísse dados de um banco transacional, os carregasse no Snowflake e, em seguida, estruturasse esses dados usando o dbt. As camadas resultantes incluem stage, dimensões, fato e analytics, prontas para serem consumidas por ferramentas de visualização de dados.

## Passos

### 1. Extração de Dados com Airflow em Docker na EC2
   - Desenvolvi uma DAG no Airflow, executando em um contêiner Docker hospedado em uma instância EC2 na AWS, para extrair dados do banco transacional.
   - Configurei as conexões necessárias para o banco transacional e Snowflake.
   - Implementei tarefas na DAG para a extração dos dados brutos.
   - Disponibilizei um arquivo chamado comandos_para_subir_airflow_no_docker.txt contendo os comandos para iniciar o Airflow.

### 2. Carregamento no Snowflake
   - Utilizei a DAG do Airflow, executando em Docker, para enviar os dados brutos para o Snowflake.
   - Certifiquei-me de configurar corretamente as credenciais do Snowflake.

### 3. Estruturação com dbt
   - Criei camadas de transformação no dbt para organizar os dados:
     - **Stage:** Armazenei os dados brutos.
     - **Dimensões e Fato:** Modelei as dimensões e fatos conforme a necessidade do projeto.
     - **Analytics:** Desenvolvi camadas específicas para análises avançadas.

### 4. Versionamento no Git
   - Inicializei um repositório Git para o meu projeto.
   - Adicionei todos os arquivos relevantes ao repositório.
   - Certifiquei-me de incluir documentação detalhada sobre a estrutura do projeto.

### 5. README.md
   - Criei um arquivo README.md para fornecer informações sobre como configurar e executar o pipeline.
   - Incluí dependências, configurações necessárias e instruções para replicação do ambiente.

### 6. Publicação no LinkedIn
   - Compartilhei meu projeto no LinkedIn para demonstrar minhas habilidades e conquistas.
   - Incluí uma breve descrição, destacando os principais pontos e desafios do projeto.

### 7. Manutenção
   - Mantive o repositório atualizado, respondendo a problemas e aceitando contribuições, se aplicável.
   - Documentei alterações significativas no histórico do Git.

## Conclusão
- Fico satisfeito por ter concluído esse projeto e estou ansioso para compartilhar meu conhecimento com a comunidade. Estou aberto a feedback e colaborações.

## Agradecimento
- Agradeço a Deus e a DSA que me deu a ideia de publicar em um site de forma totalmente gratuita, segue o link do meu github para poder visualisar os script do projeto. 
- https://github.com/Rafa2704
