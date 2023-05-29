for $x in //libro
where $x//autor/nombre="Axel"
return $x/titulo/text()