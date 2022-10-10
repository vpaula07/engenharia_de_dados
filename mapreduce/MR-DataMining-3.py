from mrjob.job import MRJob
from mrjob.step import MRStep
import re

REGEXP_PALAVRA = re.compiler(r"[\w']+")

class