*** Settings ***
Resource            ${EXECDIR}/resources/base.robot

Test Setup          Start Session
Test Teardown       Take Screenshot

* Test Cases *
Deve adicionar um item ao carrinho

    ${name}             Set Variable        STARBUGS COFFEE 
    ${description}      Set Variable        Nada melhor que um café pra te ajudar a resolver um bug.

    ${product}          Set Variable        CAPPUCCINO COM CHANTILLY

    Go To Restaurantes
    Choose Restaurant       ${name}     ${description} 
    Choose Product          ${product}
    Check Product