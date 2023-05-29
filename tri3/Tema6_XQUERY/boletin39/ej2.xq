for $x in //libro
order by $x/autores/autor[1]/nombre
return $x/titulo