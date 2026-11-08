# Dia 1 — Diagnóstico (faça amanhã, não hoje)

**Objetivo:** medir o que você consegue implementar e explicar **sem IA**.
Não é prova de velocidade: registre honestamente quando precisar de ajuda.

## Parte A — PHP (15 a 20 minutos)

Crie `src/calculo.php` com uma função que receba um preço (`float`) e um
percentual de desconto (`float`), e devolva o valor final (`float`).

Requisitos:
- Use `declare(strict_types=1);` e parâmetros/retorno tipados.
- Faça `0%` manter o preço e `100%` resultar em zero.
- Defina uma política coerente para preço negativo e percentual fora de 0–100
  (ex.: lançar `InvalidArgumentException`).
- Execute pelo menos **4 casos**, incluindo um inválido, e anote os resultados.

**Não há solução pronta neste kit.** Você vai escrevê-la e testá-la.

## Parte B — SQL (10 a 15 minutos)

Considere estas tabelas fictícias:

```text
clientes: id, nome
pedidos: id, cliente_id, total
```

Escreva em `sql/consulta.sql`:
1. Um `INNER JOIN` que liste `nome`, `pedido_id`, `total`.
2. Um `LEFT JOIN` que também traga clientes sem pedidos.
3. Explique em comentário a diferença entre as duas consultas.

Você pode escrever as consultas sem ter MySQL instalado. O exercício inicial
é de **raciocínio**, não de montar infraestrutura.

## Parte C — Ambiente (5 minutos)

Execute `git status`, `php -v`, `docker compose version` (se disponível)
e escreva em seu Markdown o que cada comando informa.

## Parte D — Recuperação de memória (15 minutos)

Sem pesquisa, responda no diário:
- O que `strict_types` muda na prática? O que ele **não** garante?
- Quando `LEFT JOIN` retorna linhas que um `INNER JOIN` não retornaria?
- Qual a diferença entre **imagem** e **container** Docker?

## Critério de conclusão

- [ ] Há arquivos próprios em `src/` e `sql/`.
- [ ] Consegue justificar comportamento da função em casos limite.
- [ ] Escreveu respostas de memória em `docs/diario/2026-11-09.md`.
- [ ] Fez um commit e marcou ☑ na planilha.

**Fontes para quando travar:**
- https://www.php.net/manual/en/language.types.declarations.php
- https://dev.mysql.com/doc/refman/8.4/en/join.html
- https://docs.docker.com/get-started/docker-concepts/the-basics/what-is-a-container/
