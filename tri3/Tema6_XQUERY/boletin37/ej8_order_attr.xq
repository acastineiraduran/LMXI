for $x in //alumno
order by $x/@dni
(:tienes que poner el atributo con data, si no da error:)
return <nombre-dni>{$x/nombre/text(),",",data($x/@dni)} </nombre-dni>
