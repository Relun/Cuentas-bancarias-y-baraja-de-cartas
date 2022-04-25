class Usuario  
    attr_accessor :nombre, :cuentas
    def initialize(nombre, *cuentas) 
        @nombre = nombre
        @cuentas = cuentas
    end
    def saldo_total
        saldo_final = @cuentas.map {|cuenta| cuenta.saldo}.sum
        "La suma de todos los saldos del usuario es de #{saldo_final}"
    end   
end

class CuentaBancaria
    attr_accessor :banco, :numero_de_cuenta, :saldo
    def initialize(banco, numero_de_cuenta, saldo = 0)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta 
        @saldo = saldo
    end

    def transferir(monto, otra_cuenta) 
        @saldo = @saldo - monto
        otra_cuenta.saldo = monto + otra_cuenta.saldo
    end
end
#prueba método saldo_total
cuenta1 = CuentaBancaria.new('Banco 1', '123-456', 5000)
cuenta2 = CuentaBancaria.new('Banco 2', '789-012', 5000)
cuenta3 = CuentaBancaria.new('Banco 3', '123-012', 4000)
cuenta4 = CuentaBancaria.new('Banco 4', '123-012', 2000)
cliente1 = Usuario.new('Pepita', cuenta1, cuenta2, cuenta3, cuenta4)
puts cliente1.saldo_total

#prueba método transferir
puts "saldo inicial cuenta origen: #{cuenta1.saldo}" 
puts "saldo inicial cuenta destino: #{cuenta2.saldo}" 
cuenta1.transferir(5000, cuenta2)
puts "saldo cuenta origen después de la transferencia: #{cuenta1.saldo}" 
puts "saldo cuenta destino después de la transferencia: #{cuenta2.saldo}" 


