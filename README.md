# Banco de dados empresarial — MySQL

Scripts SQL de estudo para criar e consultar um banco de dados de uma empresa. O projeto organiza funcionários por departamento e cargo, mantém tabelas de produtos e materiais e cria consultas reutilizáveis por meio de views.

## Estrutura do banco

O banco `empresa_1` contém:

- `funcionarios`: dados dos funcionários, salário, departamento e cargo;
- `departamentos`: áreas da empresa;
- `cargos`: níveis profissionais;
- `produtos`: produtos cadastrados e seus valores;
- `material`: materiais cadastrados e seus valores.

Os scripts inserem 15 funcionários, cinco departamentos, três cargos, cinco produtos e cinco materiais.

## Arquivos

| Arquivo | Conteúdo |
| --- | --- |
| `data_base.sql` | Cria o banco, as tabelas e os usuários `usuario_junior` e `usuario_senior`. |
| `insert.sql` | Insere os dados de exemplo nas tabelas. |
| `regras_consulta.sql` | Adiciona restrições de unicidade e chave primária, configura `AUTO_INCREMENT`, permite valores nulos nos preços e cria duas views. |

As views são:

- `view_funcionarios_cargos_departamentos`: relaciona funcionário, cargo e departamento;
- `vw_total_salarios_departamento`: soma os salários por departamento.

## Requisitos

- MySQL 8 ou compatível;
- MySQL Workbench, linha de comando do MySQL ou outro cliente SQL;
- uma conta MySQL com permissão para criar bancos, tabelas, usuários, views e restrições.

## Como executar

Execute os arquivos nesta ordem:

1. `data_base.sql`
2. `insert.sql`
3. `regras_consulta.sql`

O primeiro script seleciona o banco com `USE empresa_1`. Nos clientes SQL, confirme que `empresa_1` está selecionado antes de executar os dois scripts seguintes. No Workbench, também é possível definir `empresa_1` como schema padrão.

Exemplo para consultar as views:

```sql
USE empresa_1;

SELECT * FROM view_funcionarios_cargos_departamentos;
SELECT * FROM vw_total_salarios_departamento
ORDER BY total_salarios DESC;
```

## Usuários e segurança

O script `data_base.sql` cria os usuários `usuario_junior` e `usuario_senior` com uma senha de exemplo que deve ser substituída antes da execução. Não use senhas reais em arquivos versionados. Os scripts fornecidos não incluem comandos `GRANT`; portanto, não definem permissões de acesso para esses usuários.

## Observações

- `data_base.sql` usa `CREATE DATABASE empresa_1` sem `IF NOT EXISTS`; uma segunda execução falhará se o banco já existir.
- As restrições e views de `regras_consulta.sql` também não foram preparadas para execução repetida. Para recriar o ambiente, remova o banco de teste antes de executar os scripts novamente.
- As relações entre funcionários, cargos e departamentos são usadas nas consultas das views, mas os scripts não declaram chaves estrangeiras.
- Os valores de `produtos.valor` e `material.valor` são alterados para aceitar `NULL` em `regras_consulta.sql`, apesar de terem sido criados inicialmente como `NOT NULL`.
