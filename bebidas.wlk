object whisky {
  var nutriente = 0
  method nutriente() = nutriente
  method rendimientoQueOtorga(dosisConsumida) = 0.9 ** dosisConsumida
}

object terere {
  var nutriente = 0
  method nutriente() = nutriente
  method rendimientoQueOtorga(dosisConsumida) = 1.max(0.1 * dosisConsumida)
}

object cianuro {
  var nutriente = 0
  method nutriente() = nutriente
  method rendimientoQueOtorga(dosisConsumida) = 0
}
object licuado{
  const ingredientes = []
  method rendimientoQueOtorga(dosisConsumida) {
    return self.sumaTotalDeNutrientesDeIngredientes() * dosisConsumida
  }
  method sumaTotalDeNutrientesDeIngredientes(){
    return ingredientes.sum({i=>i.nutriente()})
  }
  method agregar(nuevoIngrediente){ingredientes.add(nuevoIngrediente)}
}
object aguaSaborizada{
  var bebidaSaborizante = whisky // 1/4 del total o 0.25
  const agua = 1 // 3/4 del total o 0.75
  method cambiarSabor(nuevaBebida){bebidaSaborizante = nuevaBebida}
  method bebidaSaborizante() = bebidaSaborizante
  method rendimientoQueOtorga(dosisConsumida) = agua + bebidaSaborizante.rendimientoQueOtorga(dosisConsumida) * 0.25

}
object coctel{
  const bebidas = []
    method rendimientoQueOtorga(dosisConsumida) = bebidas.


}