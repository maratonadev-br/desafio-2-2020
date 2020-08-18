#Sistema Operacional
FROM ubuntu:18.04

#Dependências do sistema
RUN apt-get update -y
RUN apt-get install -y python3-dev python3-pip build-essential

#Pacotes do Python
RUN pip3 install --upgrade pip #Atualização do gerenciador de pacotes
RUN pip3 install jupyter #Instalação do pacote jupyter notebook
RUN pip3 install numpy matplotlib scipy requests pandas xgboost seaborn #Dependências

WORKDIR /desafio-2-2020
COPY . /desafio-2-2020
