Data Mining com MapReduce em Dados Não Estruturados

Baixar o livro no site ( https://gutenberg.org/ -  livro baixado: https://gutenberg.org/ebooks/1342)

# Coplocar o dataset no HDFS
hdfs dfs -put Datasets/PrideandPrejudice.txt /mapred

# Executar o Job MapReduce
python Analytics/MR-DataMining-1.py hdfs:///mapred/PrideandPrejudice.txt -r hadoop

# Uma parte do Resultado:

"credit"	22
"credit,"	1
"credit."	3
"credit.\""	1
"credit;"	1
"creditable"	1
"creditable,"	1
"creditably.\""	1

# Várias palavras aparecem mais de uma vez. Como exemplo ("credit", "credit,", "credit.", "credit.\"
","credit;".) porém, faremos um filtro pois so queremos as palavras sem caracteres especiais.

# Resolução 01 - APlicar expressões regulares para trazer somente a palavra:
# Aplicamos expressões regulares no Job MapReduce
python Analytics/MR-DataMining-2.py hdfs:///mapred/PrideandPrejudice.txt -r hadoop

"creating"	4
"creation"	1
"creative"	1
"creature"	14
"creatures"	3
"credit"	28
"creditable"	2
"creditably"	1
"creditors"	2

# Resoluçõ 2 - Entregar com a ordenação pelo número de ocorrências: