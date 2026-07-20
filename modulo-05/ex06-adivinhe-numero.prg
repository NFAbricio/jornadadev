FUNCTION Main()
    LOCAL nSecreto, nPalpite, nI
    LOCAL cPalpite

    nSecreto := HB_RandomInt(1, 100)

    QOut("Bem-vindo ao Adivinhe o Numero!")
    QOut("Um numero foi sorteado de 1 a 100. Voce tem 7 tentativas.")

    FOR nI := 1 TO 7
        ACCEPT "Tentativa " + LTrim(Str(nI)) + " de 7. Numero -> " TO cPalpite
        nPalpite := Val(cPalpite)

        IF nPalpite == nSecreto
            QOut("Parabens! Voce acertou o numero:", Alltrim(Str(nSecreto)))
            EXIT
        ELSEIF nPalpite < nSecreto
            QOut("Errou! O numero secreto e MAIOR que", Alltrim(Str(nPalpite)))
        ELSE
            QOut("Errou! O numero secreto e MENOR que", Alltrim(Str(nPalpite)))
        ENDIF
    NEXT

    IF nPalpite != nSecreto
        QOut("Fim de jogo! Suas tentativas acabaram. O numero era:", Alltrim(Str(nSecreto)))
    ENDIF

RETURN NIL