<html>
<body>

<ul>
{
for $x in //baile
return
  <li><b>Profesor:</b>{$x/profesor}-<b>Nombre baile:</b>{$x/nombre}</li>
}
</ul>
</body>
</html>