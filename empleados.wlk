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
  var montoPorUnidad=15
  var totalCobrado=0
  
  method totalCobrado(){return totalCobrado}
  method sueldo(){
    return empanadasVendidas * montoPorUnidad
  }
  method cobrar(){
    totalCobrado = totalCobrado + self.sueldo()
    empanadasVendidas = 0
  }
  method empanadasVendidas(){return empanadasVendidas}
  method venderEmpanadas(cantidad){
    empanadasVendidas = empanadasVendidas + cantidad
  }
}