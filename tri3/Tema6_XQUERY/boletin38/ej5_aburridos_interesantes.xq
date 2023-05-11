for $x in //libro
return 
if($x/titulo/text()="Los irlandeses")
then <interesantes>{data($x/titulo)}</interesantes>
else(<aburridos>{data($x/titulo)}</aburridos>)
