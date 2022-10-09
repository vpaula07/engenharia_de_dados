# Trabalhando com MapReduce

[Hadoop MapReduce](https://hadoop.apache.org/docs/r1.2.1/mapred_tutorial.html#Overview) é uma estrutura de software para escrever facilmente aplicativos que processam grandes quantidades de dados (conjuntos de dados de vários terabytes) em paralelo em grandes clusters (milhares de nós) de hardware comum de maneira confiável e tolerante a falhas.

Um trabalho MapReduce geralmente divide o conjunto de dados de entrada em partes independentes que são processadas pelas tarefas de mapa de maneira completamente paralela. A estrutura classifica as saídas dos mapas, que são então inseridas nas tarefas de redução . Normalmente, tanto a entrada quanto a saída do trabalho são armazenadas em um sistema de arquivos. A estrutura se encarrega de agendar tarefas, monitorá-las e reexecutar as tarefas com falha.


### Problema de negócio

***Identificar através de uma base de dados: Quantos filmes tiveram de 1 a 5 estrelas?***

Baixar um conjunto de dados do [site](https://grouplens.org/datasets/movielens/). 

##### Nota:A GroupLens Research coletou e disponibilizou conjuntos de dados de classificação do site MovieLens (https://movielens.org). Os conjuntos de dados foram coletados em vários períodos de tempo, dependendo do tamanho do conjunto.

##### Executar o job MapReduce:

Ao baixar o arquivo copiar para o HDFS:

##### Copiar o arquivo para o HDFS 
hdfs dfs -put u.data /mapred

#### Executar o Job MapReduce


