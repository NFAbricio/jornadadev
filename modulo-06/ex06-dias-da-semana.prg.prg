PROCEDURE Main()
    LOCAL aDias := {"Domingo", "Segunda-feira", "Terca-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sabado"}
    LOCAL cEntrada
    LOCAL nDia := 0

    WHILE nDia < 1 .OR. nDia > 7
        ACCEPT "Digite um numero de 1 a 7: " TO cEntrada
        nDia := Val(cEntrada)

        IF nDia >= 1 .AND. nDia <= 7
            QOut(AllTrim("O dia correspondente e: " + aDias[nDia]))
        ELSE
            QOut(AllTrim("Numero invalido. Por favor, digite um valor entre 1 e 7."))
        ENDIF
    ENDDO
RETURN