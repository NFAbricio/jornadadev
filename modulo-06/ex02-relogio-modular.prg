PROCEDURE main()
    LOCAL nInicio := Seconds()
    LOCAL cHoraAtual, cHoraFmt

    while (Seconds() - nInicio) < 30
        cHoraAtual := ObterHora()
        cHoraFmt := FormatarHora(cHoraAtual)

        ExibirHora(cHoraFmt)
        hb_idleSleep(1)
    EndDo
RETURN

FUNCTION ObterHora()
    LOCAL tDataHora := hb_Datetime()
RETURN tDataHora

FUNCTION FormatarHora(cHora)
RETURN SubStr(hb_TToC(cHora, "HH:MM:SS.fff"),12, 8)

PROCEDURE ExibirHora(cHora)
    QOut(cHora)
RETURN