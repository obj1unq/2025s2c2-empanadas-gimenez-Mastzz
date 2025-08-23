//Escribir aqui los objetos

// Dueño

// Empleados
object galvan {
  var sueldo=15000

  method sueldo(){return sueldo}
}
object gimenez {
  var empanadasVendidas=1
  //const precioUnidad=15 ; en realidad precioUnidad es algo común al local, no algo propio de gimenez (prefiero dejar el 15 como número mágico)

  method sueldo(){
    return empanadasVendidas * 15
  } 
}