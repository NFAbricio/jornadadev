SET PROCEDURE TO matematica.prg

FUNCTION Main()
    LOCAL nNumFat := 5
    LOCAL nNumPrimo := 7
    LOCAL nNumNaoPrimo := 8
    LOCAL nA := 12
    LOCAL nB := 15

    QOut("=== Testando Fatorial ===")
    QOut("Fatorial de " + AllTrim(Str(nNumFat)) + ": " + AllTrim(Str(FatorialN(nNumFat))))

    QOut("=== Testando E Primo ===")
    QOut("Numero " + AllTrim(Str(nNumPrimo)) + " e primo? " + If(EhPrimo(nNumPrimo), "Sim", "Nao"))
    QOut("Numero " + AllTrim(Str(nNumNaoPrimo)) + " e primo? " + If(EhPrimo(nNumNaoPrimo), "Sim", "Nao"))

    QOut("=== Testando MDC ===")
    QOut("MDC de " + AllTrim(Str(nA)) + " e " + AllTrim(Str(nB)) + ": " + AllTrim(Str(MDC(nA, nB))))

    QOut("=== Testando MMC ===")
    QOut("MMC de " + AllTrim(Str(nA)) + " e " + AllTrim(Str(nB)) + ": " + AllTrim(Str(MMC(nA, nB))))

RETURN NIL