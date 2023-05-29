for $x in //libro
return if ($x/autores/count(autor)>1)
then <autor>{data($x/titulo)}</autor>
else <autores>{data($x/titulo)}</autores>
