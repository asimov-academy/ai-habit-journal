#!/bin/bash

# Diretório base do script (garante que funcione independentemente de onde ele é executado)
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Caminhos dos arquivos baseados no diretório do projeto
HEADER_FILE="$BASE_DIR/docs/header.md"
ALERT_FILE="$BASE_DIR/docs/alert.md"
DIAGRAM_FILE="$BASE_DIR/docs/user-flow-diagram.md"
README_FILE="$BASE_DIR/README.md"

# Verificar se os arquivos existem
if [ ! -f "$HEADER_FILE" ]; then
  echo "Erro: Arquivo header.md não encontrado em $HEADER_FILE!"
  exit 1
fi

if [ ! -f "$ALERT_FILE" ]; then
  echo "Erro: Arquivo alert.md não encontrado em $ALERT_FILE!"
  exit 1
fi

if [ ! -f "$DIAGRAM_FILE" ]; then
  echo "Erro: Arquivo user-flow-diagram.md não encontrado em $DIAGRAM_FILE!"
  exit 1
fi

# Sobrescrever o README.md com o conteúdo dos arquivos
echo "Gerando README.md com o conteúdo atualizado..."
{
  cat "$HEADER_FILE"
  echo -e "\n"  # Linha em branco
  cat "$ALERT_FILE"
  echo -e "\n---\n"  # Linha separadora
  cat "$DIAGRAM_FILE"
} > "$README_FILE"

echo "README.md atualizado com sucesso!"
