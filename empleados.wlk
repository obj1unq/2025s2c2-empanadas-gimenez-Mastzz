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
  var deuda=0
  var dinero=0

  method sueldo(){return sueldo}
  method sueldo(_sueldo){
    sueldo = _sueldo
  }
  method deuda(){return deuda}
  method dinero(){return dinero}

  method gastar(cantidad) {
    if(dinero >= cantidad){// tengo guita y puedo cubrir el gasto
      dinero = dinero - cantidad
    }
		
	else{ // no puedo cubrir el gasto (tenga o no guita)
    deuda = deuda + cantidad - dinero
    dinero = 0 // tanto (- dinero) como (dinero = 0) si previamente no tenia da igual, asi me ahorro un else if
  }
  }

  method cobrar(){
    if (deuda > 0 && sueldo >= deuda){ // tengo deuda y puedo cubrirla
      dinero = sueldo - deuda
      deuda = 0
    }
    else if (deuda > 0){ // tengo deuda pero no puedo cubrirla
      deuda = deuda - sueldo
      dinero = 0
    }
    else{ // directamente no tengo deuda
      dinero = sueldo
    }		
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