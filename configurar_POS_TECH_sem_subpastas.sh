#!/bin/bash
# Script para configurar o repositório POS-TEC com os 3 projetos da coordenadora
# Tudo será colocado diretamente na raiz do repositório POS-TEC

# 1️⃣ Clonar o repositório principal
git clone https://github.com/Sonia-Andreia/POS-TECH.git
cd POS-TECH

# 2️⃣ Clonar os repositórios da coordenadora (fora da pasta POS-TEC)
git clone https://github.com/AnaRaquelCafe/POSTECH_AI_SCIENTIST ../POSTECH_AI_SCIENTIST
git clone https://github.com/AnaRaquelCafe/ConnectSummitHiperpersonalizacaoIA ../ConnectSummitHiperpersonalizacaoIA
git clone https://github.com/AnaRaquelCafe/Meetup_Arquitetura_Pipelines_Machine_Learning ../Meetup_Arquitetura_Pipelines_Machine_Learning

# 3️⃣ Remover diretórios .git dos projetos (para evitar conflitos)
rm -rf ../POSTECH_AI_SCIENTIST/.git
rm -rf ../ConnectSummitHiperpersonalizacaoIA/.git
rm -rf ../Meetup_Arquitetura_Pipelines_Machine_Learning/.git

# 4️⃣ Copiar conteúdo para dentro do POS-TEC (tudo na raiz)
cp -r ../POSTECH_AI_SCIENTIST/* .
cp -r ../ConnectSummitHiperpersonalizacaoIA/* .
cp -r ../Meetup_Arquitetura_Pipelines_Machine_Learning/* .

# 5️⃣ Commitar e enviar tudo para o GitHub
git add .
git commit -m "Adicionando conteúdo dos 3 projetos da coordenadora na raiz do POS-TEC"
git branch -M main
git remote add origin https://github.com/Sonia-Andreia/POS-TECH.git
git push -u origin main

echo "✅ Tudo concluído! Os 3 projetos foram adicionados diretamente na raiz do POS-TEC."
