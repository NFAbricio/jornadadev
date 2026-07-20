FUNCTION Main()
    LOCAL nI //I normalmente significa iterator

    QOut("a) 1 a 100")
    FOR nI := 1 TO 100
        QOut(nI)
    NEXT

    QOut("b) -50 a 50")
    FOR nI := -50 TO 50
        QOut(nI)
    NEXT

    QOut("c) 80 a 5 em ordem decrescente")
    FOR nI := 80 TO 5 STEP -1
        QOut(nI)
    NEXT

RETURN NIL