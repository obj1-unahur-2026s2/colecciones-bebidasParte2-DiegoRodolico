object whisky {
  method rendimientoQueOtorga(dosisConsumida) = 0.9 ** dosisConsumida
}

object terere {
  method rendimientoQueOtorga(dosisConsumida) = 1.max(0.1 * dosisConsumida)
}

object cianuro {
  method rendimientoQueOtorga(dosisConsumida) = 0
}
object licuadoFrutas{
  const ingredientes = []
  method agregarIngrediente(nuevoIngrediente){
    ingredientes.add(nuevoIngrediente)
  }
  method rendimientoQueOtorga(dosisConsumida) = dosisConsumida * ingredientes.sum()

}
object aguaSaborizada{
  const composicion = []
  //nose 0.75 de awa y 0.25 de algo
}
object coctel{
  const bebidas = []
  method rendimientoQueOtorga(dosis) = self.contarBebidas(dosis)  
  method contarBebidas(dosis){
    return bebidas.count({b=>b.rendimientoQueOtorga(dosis)})
  }
}