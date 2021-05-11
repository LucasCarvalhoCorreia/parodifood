* Settings *
Documentation       Ações da funcionalidade de compra de produtos.

* Keywords *
Choose Restaurant
    [Arguments]     ${name}     ${description}

    Click                       text=${name}
    Wait For Elements State     css=#detail     visible     10
    Get Text                    css=#detail     contains        ${description}

Choose Product
    [Arguments]     ${product}

    Wait For Elements State      text=${product}     visible     10
    Click       text=Adicionar

Check Product
    Wait For Elements State     css=div[class='table-responsive']       visible     10
    Get Text      css=a[class='btn btn-success']