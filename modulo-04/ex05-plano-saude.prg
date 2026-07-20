FUNCTION Main()
    LOCAL cIdade, cDependentes
    LOCAL nIdade, nDependentes, nValorPlano, nTotal

    ACCEPT "Digite a idade: " TO cIdade
    ACCEPT "Digite o numero de dependentes: " TO cDependentes

    nIdade := Val(cIdade)
    nDependentes := Val(cDependentes)

    IF nIdade <= 25
        nValorPlano := 180
    ELSEIF nIdade <= 40
        nValorPlano := 260
    ELSEIF nIdade <= 60
        nValorPlano := 380
    ELSE
        nValorPlano := 520
    ENDIF

    nTotal := nValorPlano + (nDependentes * 90)

    QOut ("Valor mensal total do plano: R$", Alltrim(Str(nTotal, 10, 2)))

RETURN NIL