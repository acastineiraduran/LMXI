<html>
<body>

<table border="1">
  <tr><th>Nombre</th><th>Profesor</th><th>Plazas</th></tr>
  {
  for $x in //baile
  return
  <tr>
  <td>{$x/nombre}</td><td>{$x/profesor}</td><td>{$x/plazas}</td>
  </tr>
  }

</table>

</body>
</html>