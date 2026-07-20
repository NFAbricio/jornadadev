FUNCTION Main()
    LOCAL cVal
    LOCAL nVal

    WHILE .T.
        ACCEPT "Digite um valor inteiro (0 ou negativo para sair): " TO cVal
        nVal := Val(cVal)

        IF nVal <= 0
            EXIT
        ENDIF

        QOut("O dobro de", nVal, "é", Alltrim(Str(nVal * 2)))
    ENDDO

RETURN NIL