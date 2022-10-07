 Conferência no HDFS
$ hdfs dfs -ls /

# Conectar com arquivo
$ hdfs dfs -ls /user/hadoop/emp

# Arquivo
part-m-00000

# Conectar com o SO
$ hdfs dfs -get /user/hadoop/emp/part-m-00000

# Em seguida abrimos o arquivo
$ gedit part-m-00000

# Dados do arquivo
Peter Bruce,dbhsqoop
Aurelien Geron,dbhscikit
Wes McKinney,dbdados
Daniel Mendes,dbdata