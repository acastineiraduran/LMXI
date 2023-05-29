for $x in //book
where ($x/starts-with(title,"X"))
return $x/@category