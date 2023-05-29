for $x in //libro/autores/autor[1]
return <nom-apell>{data($x/nombre),", ", data($x/apellido)}</nom-apell>