FUNCTION Main()
    LOCAL cMes
    LOCAL nMes

    ACCEPT "Digite o numero do mes (1 a 12): " TO cMes
    nMes := Val(cMes)

    DO CASE
        CASE nMes == 1
            QOut ("Mes:", "Janeiro")
        CASE nMes == 2
            QOut ("Mes:", "Fevereiro")
        CASE nMes == 3
            QOut ("Mes:", "Marco")
        CASE nMes == 4
            QOut ("Mes:", "Abril")
        CASE nMes == 5
            QOut ("Mes:", "Maio")
        CASE nMes == 6
            QOut ("Mes:", "Junho")
        CASE nMes == 7
            QOut ("Mes:", "Julho")
        CASE nMes == 8
            QOut ("Mes:", "Agosto")
        CASE nMes == 9
            QOut ("Mes:", "Setembro")
        CASE nMes == 10
            QOut ("Mes:", "Outubro")
        CASE nMes == 11
            QOut ("Mes:", "Novembro")
        CASE nMes == 12
            QOut ("Mes:", "Dezembro")
        OTHERWISE
            QOut ("Mes invalido")
    ENDCASE

    /* Usando array:
    IF nMes >= 1 .AND. nMes <= 12
        QOut ("Mes:", {"Janeiro", "Fevereiro", "Marco", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}[nMes])
    ELSE
        QOut ("Mes invalido")
    ENDIF
    */

RETURN NIL