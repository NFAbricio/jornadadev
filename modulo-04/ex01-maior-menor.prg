FUNCTION Main()
    LOCAL cVal1, cVal2
    LOCAL nVal1, nVal2

    ACCEPT "Digite o primeiro valor: " TO cVal1
    ACCEPT "Digite o segundo valor: " TO cVal2

    nVal1 := Val(cVal1)
    nVal2 := Val(cVal2)

    IF nVal1 == nVal2
        QOut ("Os dois valores sao iguais.")
    ELSEIF nVal1 > nVal2
        QOut ("Maior:", nVal1)
        QOut ("Menor:", nVal2)
    ELSE
        QOut ("Maior:", nVal2)
        QOut ("Menor:", nVal1)
    ENDIF

    RETURN NIL