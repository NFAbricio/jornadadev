FUNCTION Main()
    LOCAL cVal1, cVal2, cOperacao
    LOCAL nVal1, nVal2, nResultado

    ACCEPT "Digite o primeiro valor: " TO cVal1
    ACCEPT "Digite a operacao (+, -, *, /, ^, R): " TO cOperacao

    nVal1 := Val(cVal1)

    IF Upper(cOperacao) != "R"
        ACCEPT "Digite o segundo valor (nVal2): " TO cVal2
        nVal2 := Val(cVal2)
    ENDIF

    DO CASE
        CASE cOperacao == "+"
            nResultado := nVal1 + nVal2
            QOut ("Resultado:", nResultado)
        CASE cOperacao == "-"
            nResultado := nVal1 - nVal2
            QOut ("Resultado:", nResultado)
        CASE cOperacao == "*"
            nResultado := nVal1 * nVal2
            QOut ("Resultado:", nResultado)
        CASE cOperacao == "/"
            IF nVal2 == 0
                QOut ("Erro: Divisao por zero.")
            ELSE
                nResultado := nVal1 / nVal2
                QOut ("Resultado:", nResultado)
            ENDIF
        CASE cOperacao == "^"
            nResultado := nVal1 ^ nVal2
            QOut ("Resultado:", nResultado)
        CASE Upper(cOperacao) == "R"
            nResultado := Sqrt(nVal1)
            QOut ("Resultado:", nResultado)
        OTHERWISE
            QOut ("Operacao invalida.")
    ENDCASE

RETURN NIL