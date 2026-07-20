FUNCTION Main()
    LOCAL cVal
    LOCAL nVal, nTotal := 0, nQtd := 0

    WHILE .T.
        ACCEPT "Digite um valor (0 para sair): " TO cVal
        nVal := Val(cVal)

        IF nVal == 0
            EXIT
        ENDIF

        nTotal += nVal
        nQtd++
    ENDDO

    QOut("Soma total:", nTotal)
    QOut("Quantidade de valores somados:", nQtd)

RETURN NIL