for $x in //alumno
return <titulo-autor>{data($x/nombre),",", data($x/nota)}</titulo-autor>