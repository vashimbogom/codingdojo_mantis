Feature: Guess

Scenario Outline: "Si me das cuatro numeros y son = 2713"
	Given I start a new app:
	When I Get a number for <numero>
	Then I should see <resultado>
	Scenarios:
	|numero|resultado|
	|"1234"|"Vuelve a intentarlo! -> __"|
	|"2431"|"Vuelve a intentarlo! -> X__"|
	|"4536"|"Vuelve a intentarlo! -> _"|
	|"7531"|"Vuelve a intentarlo! -> ___"|
	|"2135"|"Vuelve a intentarlo! -> X__"|
	|"2317"|"Vuelve a intentarlo! -> XX__"|
	|"2371"|"Vuelve a intentarlo! -> X___"|
	|"2713"|"Fecilidades Ganaste! -> XXXX"|
	|"2999"|"Vuelve a intentarlo! -> X"|
	|"9299"|"Vuelve a intentarlo! -> _"|
	|"9999"|"Vuelve a intentarlo! -> "|
	|"4569"|"Vuelve a intentarlo! -> "|
	

	
