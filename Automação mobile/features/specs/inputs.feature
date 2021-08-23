#language: pt

Funcionalidade: Inputs

    Cenario: Radio Button

        Dado que acesso a tela de Botões de Radio
        Quando eu escolho a opcao Ruby
        Então a opcao deve ser marcada

    Cenario: Checkbox

        Dado que acesso a tela Checkbox
        Quando eu marco a opcao Ruby
        Então esta opcao deve estar marcada

    
    Cenario: Todas as techs que usam Appium
        Dado que acesso a tela Checkbox
        Quando eu marco as seguintes techs:
            |tech|
            |Ruby|
            |Python|
            |Java|
            |Javascript|
            |C#|
            |Robot Framework|
        Então todas essas opcoes devem estar marcadas