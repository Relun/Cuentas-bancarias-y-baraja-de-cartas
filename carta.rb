class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
end
# cartas = []
# pintas = ['C', 'D', 'E', 'T']
# carta = 5

# carta.times do |i|
#     cartas.push Carta.new(Random.rand(1..13), pintas.sample)
# end
# print cartas

