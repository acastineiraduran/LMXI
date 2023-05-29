for $x in //libro
return <num-autores>{$x/titulo/text(),", ",$x/autores/count(autor)}</num-autores>
