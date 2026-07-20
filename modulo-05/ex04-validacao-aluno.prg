FUNCTION Main()
    LOCAL cNome, cDisc, cNota1, cNota2
    LOCAL nNota1, nNota2, nMedia

    WHILE .T.
        ACCEPT "Digite o nome: " TO cNome
        IF Len(Trim(cNome)) > 0
            EXIT
        ENDIF
        QOut("Nome nao pode ser vazio. Tente novamente.")
    ENDDO

    WHILE .T.
        ACCEPT "Digite a disciplina (3 letras maiusculas): " TO cDisc
        cDisc := Trim(cDisc)
        IF Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
            EXIT
        ENDIF
        QOut("Disciplina invalida. Digite exatamente 3 letras maiusculas.")
    ENDDO

    WHILE .T.
        ACCEPT "Digite a primeira nota (0 a 10): " TO cNota1
        nNota1 := Val(cNota1)
        IF nNota1 >= 0 .AND. nNota1 <= 10
            EXIT
        ENDIF
        QOut("Nota invalida. Deve ser entre 0 e 10.")
    ENDDO

    WHILE .T.
        ACCEPT "Digite a segunda nota (0 a 10): " TO cNota2
        nNota2 := Val(cNota2)
        IF nNota2 >= 0 .AND. nNota2 <= 10
            EXIT
        ENDIF
        QOut("Nota invalida. Deve ser entre 0 e 10.")
    ENDDO

    nMedia := (nNota1 + nNota2) / 2

    QOut("====== Dados do Aluno ======")
    QOut("Nome:", Trim(cNome))
    QOut("Disciplina:", Alltrim(cDisc))
    QOut("Media:", Alltrim(Str(nMedia)))

RETURN NIL