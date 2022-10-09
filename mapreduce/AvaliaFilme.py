# Escrever o Job do MapReduce
from mrjob.job import MRJob

class MRAvaliaFilme(MRJob):

	# Mapeamento
	def mapper(self, key, line):
		(userID, movieID, rating, timestamp) = line.split('\t')
		yield rating, 1

	# Reducao	
	def reducer(self,rating, occurences):
		yield rating, sum(occurences)

if __name__ == '__main__':
	MRAvaliaFilme.run()