for $x in //libro
order by $x/titulo
return <titulo>{data($x/titulo),",",data($x/autor)}</titulo> 