FUNCTION FatorialN(nN)
    LOCAL nFat := 1
    LOCAL i

    IF nN < 0
        RETURN 0
    ENDIF

    FOR i := 1 TO nN
        nFat := nFat * i
    NEXT
RETURN nFat

FUNCTION EhPrimo(nN)
    LOCAL i

    IF nN <= 1
        RETURN .F.
    ENDIF

    FOR i := 2 TO Sqrt(nN)
        IF nN % i == 0
            RETURN .F.
        ENDIF
    NEXT
RETURN .T.

FUNCTION MDC(nA, nB)
    LOCAL nResto

    WHILE nB != 0
        nResto := nA % nB
        nA := nB
        nB := nResto
    ENDDO
RETURN nA

FUNCTION MMC(nA, nB)
    IF nA == 0 .OR. nB == 0
        RETURN 0
    ENDIF
RETURN Abs(nA * nB) / MDC(nA, nB)