<html>
<body>
<h1>Ejercicio 2</h1>
<a>
{
  
for $x in //modulo[horas<5]
return 
<texto text-transform="uppercase">
{
<nomb-horas>
  <p>{data($x/nombre),", ", data($x/horas)}</p></nomb-horas>
}
</texto>
}
</a>

</body>
</html>
