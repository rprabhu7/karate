Feature: print hello world feature

  Scenario: Hello world Scenario
    * print 'hello world'

  Scenario: declare and print variables
    * def balance = 200
    * def fee = 20
    * def tax = 10
    * print 'total amount->' + (balance + fee+ tax)
    
  Scenario: calculator scenario
		* def a = 200
		* def b = 20
		* def tax = 10
		* print 'mul->' + (a*b)
