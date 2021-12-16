Feature:Prestamo Bancario compra de vivienda
  Yo como cliente
  Quiero solicitar dinero prestado
  Para poder comprar  vivienda

  Scenario Outline: Calcular el subsidio de vivienda segun salario
    Given El cliente desea saber cual sera su subsidio de vivienda segun su salario
    When El gana<salario>
    Then El cliente deberia ver que su subsidio de vivienda es <subsidio>
    Examples:
      |salario|subsidio|
      |      1500000    |  28000000 |
      |      2400000    |  18000000 |


  Scenario Outline: Calcular la cuota inicial
    Given El cliente quiere saber cual sera su cuota inicial  segun el valor de la vivienda
    When El escoje <valorVivienda>
    Then El cliente deberia ver cual es el valor de <cuotaInicial> conociendo el <porcentaje>
    Examples:
      |valorVivienda|porcentaje|cuotaInicial|
      |      90000000    |0.15 | 13500000 |
      |      110000000   |  0.15| 16500000 |
