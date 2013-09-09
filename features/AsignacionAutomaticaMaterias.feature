Feature: Asignar materias autmaticas para nuevos estudiantes basado en una preinscripcion

Scenario: Asignar nuevos estudiantes a curso (curso vacio sin restricciones)

  Given I am in the Toplclass subject simulator page
  And  the some students did preincription  
  When I press "Generar nuevo semestre" button
  Then I should see everyone in each respective course

 Scenario: Asignar nuevos estudiantes a curso (curso lleno)

  Given I am in the Toplclass subject simulator page
  And  the some students did preincription  
  When I press "Generar nuevo semestre" button
  And the classroom of is full
  Then I should see some students in each respective course
  And the other ones in their respective available courses