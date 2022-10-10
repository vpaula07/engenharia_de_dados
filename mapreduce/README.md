# Trabalhando com MapReduce

[Hadoop MapReduce](https://hadoop.apache.org/docs/r1.2.1/mapred_tutorial.html#Overview) é uma estrutura de software para escrever facilmente aplicativos que processam grandes quantidades de dados (conjuntos de dados de vários terabytes) em paralelo em grandes clusters (milhares de nós) de hardware comum de maneira confiável e tolerante a falhas.

Um trabalho MapReduce geralmente divide o conjunto de dados de entrada em partes independentes que são processadas pelas tarefas de mapa de maneira completamente paralela. A estrutura classifica as saídas dos mapas, que são então inseridas nas tarefas de redução . Normalmente, tanto a entrada quanto a saída do trabalho são armazenadas em um sistema de arquivos. A estrutura se encarrega de agendar tarefas, monitorá-las e reexecutar as tarefas com falha.


### Problemas de negócios

***1. Identificar através de uma base de dados: Quantos filmes tiveram de 1 a 5 estrelas?***

Baixar um conjunto de dados do [site](https://grouplens.org/datasets/movielens/). 

##### Nota:A GroupLens Research coletou e disponibilizou conjuntos de dados de classificação do site MovieLens (https://movielens.org). Os conjuntos de dados foram coletados em vários períodos de tempo, dependendo do tamanho do conjunto.

##### Executar o job MapReduce:

Ao baixar o arquivo copiar para o HDFS:

##### Copiar o arquivo para o HDFS 
hdfs dfs -put u.data /mapred

#### Executar o Job MapReduce

![job_mapreduce](img/job_mapreduce.png)

#### Executar o MapReduce ao dataset em um cluster Hadoop

python AvaliaFilme.py hdfs:///mapred/u.data - r hadoop

#### Resultado 
![resultado_stars](img/result_stars.png)

![resultado_grafico](img/result_movie.png)

***2. Gerar Média de Amigos no Facebook por Idade***

##### Copiar o arquivo para o HDFS
hdfs dfs -put Datasets/amigos_facebook.csv /mapred

#### Executar o Job MapReduce
![amigos_idade](img/AmigosIdade.png)

##### Processar o Job mapReduce
python Analytics/AmigosIdade.py hdfs:///mapred/amigos_facebook.csv -r hadoop

##### Resultado 
[AmigosIdade.csv](https://github.com/vpaula07/engenharia_de_dados/blob/main/mapreduce/AmigosIdade.csv)

***3. Data Mining com MapReduce em Dados Não Estruturados***

Baixar o livro no site ( https://gutenberg.org/ -  livro baixado: https://gutenberg.org/ebooks/1342)

##### Coplocar o dataset no HDFS
hdfs dfs -put Datasets/PrideandPrejudice.txt /mapred

#### Executar o Job MapReduce
![mr_00](img/mr01.png)

##### Processar o Job MapReduce
python Analytics/MR-DataMining-1.py hdfs:///mapred/PrideandPrejudice.txt -r hadoop

##### Uma parte do Resultado:

"credit"	22
"credit,"	1
"credit."	3
"credit.\""	1
"credit;"	1
"creditable"	1
"creditable,"	1
"creditably.\""	1

##### Várias palavras aparecem mais de uma vez. Como exemplo ("credit", "credit,", "credit.", "credit.\"","credit;".) porém, faremos um filtro pois so queremos as palavras sem caracteres especiais.

***3.1 - Resolução 01 - Aplicar expressões regulares para trazer somente a palavra:***

##### Aplicamos expressões regulares no Job MapReduce
![mr_02](img/mr02.png)

##### Processar o Job MapReduce
python Analytics/MR-DataMining-2.py hdfs:///mapred/PrideandPrejudice.txt -r hadoop

##### Resultado:
"creating"	4
"creation"	1
"creative"	1
"creature"	14
"creatures"	3
"credit"	28
"creditable"	2
"creditably"	1
"creditors"	2

***3.2 - Resolução 2 - Entregar com a ordenação pelo número de ocorrências:***
##### Aplicamos expressões regulares no Job MapReduce
![mr_03](img/mr03.png)

##### Processar o Job MapReduce
python Analytics/MR-DataMining-3.py hdfs:///mapred/PrideandPrejudice.txt -r hadoop

##### Resultado:
"1327"	"he"
"1395"	"you"
"1442"	"not"
"1550"	"it"
"1556"	"that"
"1695"	"she"
"1844"	"was"
"1937"	"in"
"2012"	"a"
"2064"	"i"
"2203"	"her"
"3658"	"and"
"3729"	"of"
"4242"	"to"
"4507"	"the"
