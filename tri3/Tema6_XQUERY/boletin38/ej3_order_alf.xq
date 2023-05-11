for $x in //libro[precio>20]
order by $x/titulo
return $x/titulo/text()