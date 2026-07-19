FUNCTION Main()
   LOCAL cN1, cN2, cN3, cN4
   LOCAL nN1, nN2, nN3, nN4, nMedia

   ACCEPT "Nota do 1o bimestre: " TO cN1
   ACCEPT "Nota do 2o bimestre: " TO cN2
   ACCEPT "Nota do 3o bimestre: " TO cN3
   ACCEPT "Nota do 4o bimestre: " TO cN4

   nN1 := Val(cN1)
   nN2 := Val(cN2)
   nN3 := Val(cN3)
   nN4 := Val(cN4)

   nMedia := (nN1 * 1 + nN2 * 2 + nN3 * 3 + nN4 * 4) / (1 + 2 + 3 + 4)

   QOut("-------------------------------------")
   QOut("Media ponderada: " + AllTrim(Str(nMedia, 10, 2)))

RETURN NIL