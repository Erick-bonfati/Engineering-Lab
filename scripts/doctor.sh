#!/usr/bin/env bash
# Diagnóstico não destrutivo: apenas verifica se comandos estão disponíveis.
set -u
check() {
  local name="$1"; shift
  printf '
[%s] ' "$name"
  if command -v "$1" >/dev/null 2>&1; then
    "$@" 2>&1 | head -n 2
  else
    printf 'nao encontrado no PATH
'
  fi
}
check "Git" git --version
check "PHP" php --version
check "Composer" composer --version
check "Docker" docker --version
check "VS Code CLI" code --version
if command -v docker >/dev/null 2>&1; then
  printf '
[Docker Compose] '
  docker compose version 2>&1 | head -n 2
fi
printf '
Verificacao concluida. Nenhuma instalacao foi executada.
'
