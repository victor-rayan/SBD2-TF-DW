### UnB - Universidade de Brasilia 
### FGA - Faculdade do Gama
### SBD2 - DW e DM

## Componentes do grupo:
|Aluno  |  Matricula |
| --------- | ------------------------------------------------------ |
|Deivid Alves|190026758| 
| Paulo Batista| 180054554      | 
| Victor Ferreira| 190044390 |

# Motivação

Utilizar um datawarehouse traz vários benefícios. A base de dados "Instacart" é uma base de dados muito boa e suas análises no datawarehouse, como o BigQuery agregam valor. Abaixo algumaS das análises possíveis de se fazer.

* Análise de comportamento de compra: Armazenar a base de dados em um datawarehouse como o BigQuery permite uma análise  eficiente do comportamento de compra dos clientes. Foi possível identificar padrões de compra, recomendar produtos e prever a demanda futura.

* Personalização do atendimento ao cliente: A base de dados pode ser usada para personalizar a experiência de compra dos clientes, oferecendo recomendações de produtos personalizadas e melhorando o atendimento ao cliente.

* Tomada de decisões baseadas em dados: Armazenar a base de dados em um datawarehouse como o BigQuery permite aos usuários tomar decisões baseadas em dados, ao invés de intuição ou suposições, resultando em uma tomada de decisão mais precisa e informada.

### Abaixo fazemos algumas análises utilizando os benefícios que um datawarehouse pode trazer.


# Imagem com Análises de processamento de consulta do DW BIGQUERY 

* [Agrupar as compras por dia da semana (order_dow), horário de compra (order_hour_of_day) e tempo desde a última compra (days_since_prior_order), e calcular a média de itens reordenados](./bigquery/imgs_analises/calcular%20media%20de%20itens.PNG)
* [Produtos mais comprados:](./bigquery/imgs_analises/Produtos_mais_comprados.PNG)
* [Horário de compra, agrupa as compras por horário e conta o número total de compras em cada horário.](./bigquery/imgs_analises/horario_do_dia.PNG)


# Resultado(CSV) das análises no DW BIGQUERY

* [Agrupar as compras por dia da semana (order_dow), horário de compra (order_hour_of_day) e tempo desde a última compra (days_since_prior_order), e calcular a média de itens reordenados](./bigquery/csvs_results/mediadeitensreordenados.csv)
* [Produtos mais comprados:](./bigquery/csvs_results/Produtos_mais_comprados.csv)
* [Horário de compra, agrupa as compras por horário e conta o número total de compras em cada horário.](./bigquery/csvs_results/Horariodecompra.csv)
* [Dias da semana mais populares para compras](./bigquery/csvs_results/dias%20da%20semana%20mais%20populares%20para%20compras.csv)

# Arquivos com as consultas feitas utilizando sql (DQL.sql)

* [Consulta 1](./bigquery/dql.sql)
* [Consulta 2](./bigquery/queries_BQ.sql)
