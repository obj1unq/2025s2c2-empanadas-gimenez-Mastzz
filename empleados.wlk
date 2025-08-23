// Dueño
object gimenez {
  var fondo=300000

  method pagar(empleado) {
    fondo = fondo - empleado.sueldo()
  }
  method fondo(){return fondo}
}

// Empleados
object galvan {
  var sueldo=15000

  method sueldo(){return sueldo}
  method sueldo(_sueldo){
    sueldo = _sueldo
  }
}
object baigorria {
  var empanadasVendidas=0
  //var precioUnidad=15 ; en realidad precioUnidad es algo común al local de gimenez, no algo propio de baigorria (prefiero dejar el 15 como número mágico por ahora)
/*
Para la segunda parte hay que tener en cuenta el cierre de mes. El total cobrado y empanadas vendidas son válidas para cierto mes y luego deberán resetearse. Supongo que usaremos el objeto de Fecha para esto
*/

  method sueldo(){
    return empanadasVendidas * 15
  }
  method empanadasVendidas(){return empanadasVendidas}
  method venderEmpanadas(cantidad){
    empanadasVendidas = empanadasVendidas + cantidad
  }
}