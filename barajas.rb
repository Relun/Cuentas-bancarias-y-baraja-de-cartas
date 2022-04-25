require_relative 'carta' 

class Baraja
    attr_accessor :cartas
     def initialize
        @cartas = ['C', 'D', 'E', 'T'].map{|nro| [1,2,3,4,5,6,7,8,9,10,11,12,13].map{|pint| Carta.new(nro,pint)}}.flatten
        #@cartas = []
        #['C', 'D', 'E', 'T'].product([1,2,3,4,5,6,7,8,9,10,11,12,13]).map(&:flatten).map(&:join)
        #¿@cartas.push(Carta.new(nro,pin))?

    end

    #método para desordenar el arreglo
    def barajar
        @cartas.shuffle!

    end

    #método para retirar la primera carta
    def sacar
        @cartas.shift
        #@cartas.pop #pop retira el último
    end

    #método que devuelve las primeras 5 cartas
    def repartir_mano
        mano = []
        (0..4).each {|i| mano.push (sacar)}
        return mano
    end    
end

juego = Baraja.new
print juego.barajar
print juego.sacar
print juego.repartir_mano



