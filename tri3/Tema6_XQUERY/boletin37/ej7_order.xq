for $x in //alumno
order by $x/apells
return <nombre-apellido>{$x/nombre/text(), ", ", $x/apells/text()}</nombre-apellido>