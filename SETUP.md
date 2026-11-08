# Setup — Dia 0 (08/11/2026)

## 1. Ferramentas necessárias para a primeira semana

| Ferramenta | Necessária para | Onde obter |
|---|---|---|
| VS Code | Navegação, terminal, Git, debug | https://code.visualstudio.com/ |
| Git | Histórico de estudos | https://git-scm.com/downloads |
| PHP (CLI) | Executar exercícios de PHP | https://www.php.net/downloads.php |
| Composer | Projetos PHP/Laravel posteriores | https://getcomposer.org/download/ |
| Docker / Docker Compose | Ambiente de containers | https://docs.docker.com/get-docker/ |

> Não precisa instalar MySQL localmente hoje; mais adiante usaremos containers.
> No Windows, confirme que Docker Desktop usa um backend compatível com sua instalação.
> Não é necessário configurar Xdebug, Node, Vue ou Laravel completo no Dia 0.

## 2. Conferir terminal (PowerShell, Bash ou Zsh)

Execute um por vez e observe **versão ou mensagem de erro**:

```sh
git --version
php -v
composer --version
docker --version
docker compose version
code --version
```

Se `code` não for encontrado, abra o VS Code pelo menu e use `File > Open Folder`.
No macOS, o comando `code` pode precisar ser habilitado pela Command Palette.

**Windows PowerShell:** `./scripts/doctor.ps1` (ou `powershell -NoProfile -File scripts/doctor.ps1`).
**Linux/macOS:** `bash scripts/doctor.sh`.
Os scripts apenas verificam comandos; não instalam nem modificam o sistema.

## 3. Abrir o repositório

- Extraia o ZIP para uma pasta permanente, por exemplo `Documentos/engineering-lab`.
- Abra essa pasta pelo VS Code, **não só um arquivo solto**.
- No terminal integrado (`Ctrl + crase`), confirme o diretório atual.
- Aceite a instalação das extensões recomendadas somente se fizer sentido para você.

## 4. Inicializar Git (somente uma vez)

```sh
git init
git status
git add .
git commit -m "chore: preparar engineering lab"
```

Se o commit exigir identidade, configure os dados que você deseja usar:

```sh
git config --global user.name "SEU NOME"
git config --global user.email "SEU EMAIL DE COMMITS"
```

E repita `git commit`. **Não cole seu e-mail/identidade neste chat se preferir privacidade.**

Criar um repositório no GitHub (privado ou público) é opcional. Se fizer isso,
use o URL do **seu próprio** repositório para `git remote add origin ...`.
Não publique projetos corporativos.

## 5. Teste simples antes de amanhã

Se `php -v` funcionar, crie temporariamente um arquivo `teste.php` com:

```php
<?php

declare(strict_types=1);

echo "Ambiente pronto!" . PHP_EOL;
```

Execute `php teste.php`. Apague `teste.php` depois; amanhã você escreverá
o código real do diagnóstico do zero.

## 6. Conferência final

- [ ] Abro a pasta `engineering-lab` pelo VS Code.
- [ ] Terminal integrado funciona.
- [ ] `git --version` e `git status` funcionam.
- [ ] `php -v` funciona **ou** registrei a pendência para resolver.
- [ ] Sei se Composer e Docker estão disponíveis.
- [ ] Consigo abrir `docs/diario/2026-11-09.md` e o desafio de amanhã.
- [ ] Primeiro commit de setup criado.

Se alguma ferramenta faltar, resolva primeiro **Git + PHP + VS Code**.
Composer e Docker precisam ficar prontos para as próximas aulas, mas não impedem
que você faça o diagnóstico conceitual de amanhã.
