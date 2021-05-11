***Settings ***
Resource            ${EXECDIR}/resources/base.robot

Test Setup          Start Session
Test Teardown       Take Screenshot

* Test Cases *
Buscar um único restaurante

    Go To Restaurantes
    Search By                           Debuger
    Restaurante Should Be Visible       DEBUGER KING
    Restaurante Count Should Be         1

Deve buscar por categoria

    Go To Restaurantes
    Search By                           Cafe
    Restaurante Should Be Visible       STARBUGS COFFEE

Deve buscar todos os restaurantes

    Go To Restaurantes
    Search By                           a
    Restaurante Should Be Visible       a
    Restaurante Count Should Be         5