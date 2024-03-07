#1- Atualizar a lista de pacotes do APT:
sudo apt-get update
 
#2-Instalar pacotes necessários para adicionar um novo repositório via HTTPS:
sudo apt-get install ca-certificates curl gnupg lsb-release
 
#3- Criar diretório para armazenar as chaves de repositórios 
sudo mkdir -m 0755 -p /etc/apt/keyrings
 
#4- Adicionar a chave GPG do repositório do Docker:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
 
#5- Adicionar o repositório do Docker às fontes do APT:
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
 
#6- Atualiza a lista de pacotes após adicionar o novo repositório do Docker
sudo apt-get update
 
#7- Instalar o Docker e componentes
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
 
#8- Baixar o arquivo docker-compose.yaml do Airflow:
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/stable/docker-compose.yaml'
 
#9- Criar diretórios para DAGs, logs e plugins:
mkdir -p ./dags ./logs ./plugins
 
#10- Criar um arquivo .env com o UID do usuário, usado pelo docker para permissões
echo -e "AIRFLOW_UID=$(id -u)" > .env
 
#11- inicia o airflow
sudo  docker compose up airflow-init
 
#12 -subir o Airflow em modo desacoplado
sudo docker compose up -d
 
#aguardar até tudo estar healty
 
# copiar Public IPv4 DNS e colocar porta 8080, 
# este é só um exemplo:
http://ec2-35-175-126-189.compute-1.amazonaws.com:8080/
 
#editar
nano /home/ubuntu/docker-compose.yaml
 
#mudar para falso
AIRFLOW__CORE__LOAD_EXAMPLES: 'true'
 
#reiniciar
sudo docker compose stop
sudo docker compose up -d
sudo docker ps