Feature: Visualizar el dashboard de materias por semestre 

Scenario: Ver semestres y programas

  Given I am in the Toplclass dashboard page
  And there are preincriptions in the system
  When I press "View Dashboard" button
  Then I should see dashboard diagrams with its respective ID