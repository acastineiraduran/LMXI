for $x in //book
where ($x/contains(title,"X")) or ($x/contains(title,"x"))
order by $x/title descending
return data($x/title)