import os

class TestLibrary():

  def __init__(self):
    numbersFile = open('numbers.txt', 'r')
    numbersFileContent = numbersFile.read()
    self.numbersList = numbersFileContent.splitlines()
    resultsFile = open('sums.txt', 'r')
    resultsFileContent = resultsFile.read()
    self.resultsList = resultsFileContent.splitlines()

  def getFirstNumberPair(self):
    firstPair = self.numbersList[0]
    firstNumbers = firstPair.split(',')
    return firstNumbers[0], firstNumbers[1]

  def getFirstResult(self):
    return self.resultsList[0]

  def getResultAtIndex(self, index):
    return self.resultsList[index]

  def getNumberPairAtIndex(self, index):
    firstPair = self.numbersList[index]
    firstNumbers = firstPair.split(',')
    return firstNumbers[0], firstNumbers[1]

  def getListLength(self):
    return len(self.numbersList)
