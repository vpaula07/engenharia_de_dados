# Comandos Sqoop para listar bancos de dados no MySQL

sqoop list-databases --connect jdbc:mysql://localhost:3306/ --username root -P

# Comando Sqoop para importar dados do MySQL para o HDFS
sqoop import --connect jdbc:mysql://localhost:3306/dbhadoop?serverTimezone=UTC --username root --password Dsahadoop@1 --table emp --m 1
