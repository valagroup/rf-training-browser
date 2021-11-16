import os

class TestLibrary():

  def __init__(self)
    numbersFile = open('numbers.txt', 'r')
    numbersFileContent = numbersFile.read()
    numbersList = numbersFileContent.splitlines()
    resultsFile = open('sums.txt', 'r')
    resultsFileContent = resultsFile.read()
    resultsList = resultsFileContent.splitlines(

  def getFirstNummbers(self):
    return numbersList[0]

  def getListOfNumbers(self):
    return  numbersList

  def getFirstResult(self):
    return resultsList[0]

  def getListOfResults(self):
    return resultsList
