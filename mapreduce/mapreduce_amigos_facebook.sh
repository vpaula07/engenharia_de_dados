# Copiar o arquivo para o HDFS
hdfs dfs -put Datasets/amigos_facebook.csv /mapred

# Processar o Job mapReduce
python Analytics/AmigosIdade.py hdfs:///mapred/amigos_facebook.csv -r hadoop

# Resultado
"18"	343.375
"19"	213.2727272727
"20"	165.0
"21"	350.875
"22"	206.4285714286
"23"	246.3
"24"	233.8
"25"	197.4545454545
"26"	242.0588235294
"27"	228.125
"28"	209.1
"29"	215.9166666667
"30"	235.8181818182
"31"	267.25
"32"	207.9090909091
"33"	325.3333333333
"34"	245.5
"35"	211.625
"36"	246.6
"37"	249.3333333333
"38"	193.5333333333
"39"	169.2857142857
"40"	250.8235294118
"41"	268.5555555556
"42"	303.5
"43"	230.5714285714
"44"	282.1666666667
"45"	309.5384615385
"46"	223.6923076923
"47"	233.2222222222
"48"	281.4
"49"	184.6666666667
"50"	254.6
"51"	302.1428571429
"52"	340.6363636364
"53"	222.8571428571
"54"	278.0769230769
"55"	295.5384615385
"56"	306.6666666667
"57"	258.8333333333
"58"	116.5454545455
"59"	220.0
"60"	178.875
"61"	256.2222222222
"62"	220.7692307692
"63"	384.0
"64"	281.3333333333
"65"	298.2
"66"	276.4444444444
"67"	214.625
"68"	269.6
"69"	235.2