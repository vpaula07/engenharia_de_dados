# Descompactar o arquivo
unzip ml-100k.zip

# Copiar o arquivo para o HDFS
hdfs dfs -put u.data /mapred

# Executar o MapReduce ao dataset em um cluster Hadoop
python AvaliaFilme.py hdfs:///mapred/u.data - r hadoop

# Resultado
"1"	6110
"2"	11370
"3"	27145
"4"	34174
"5"	21201