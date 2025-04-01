import personas.*
import objetos.*

object bolichito {
    var objetoEnVidriera = remera
    var objetoEnMostrador = pelota
    method esBrillante(){
        return objetoEnVidriera.esBrillante() and objetoEnMostrador.esBrillante()
    }
    method esMonocromatico(){
        return objetoEnVidriera.color() == objetoEnMostrador.color()
    }
    method estaEquilibrado(){
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }
    method tieneObjetosDeColor(unColor) {
        return objetoEnMostrador.color() == unColor or objetoEnVidriera.color() == unColor
    }
    method puedeMejorar(){
        return !self.estaEquilibrado() || self.esMonocromatico()
    }
    method tieneAlgoQueLeGustaA(persona){
        return persona.leGusta(objetoEnMostrador) || persona.leGusta(objetoEnVidriera)
    }
}
