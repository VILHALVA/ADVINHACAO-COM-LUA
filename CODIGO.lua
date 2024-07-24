function main()
    local max_tentativas = 3
    local numero_correto = math.random(1, 100)  
    local tentativas_restantes = max_tentativas
    local acertou = false

    print("Bem-vindo ao jogo de adivinhacao!")
    print("Tente adivinhar o numero entre 1 e 100.")
    print("Voce tem " .. max_tentativas .. " tentativas.")

    while tentativas_restantes > 0 and not acertou do
        io.write("Digite seu palpite (" .. tentativas_restantes .. " tentativas restantes):\n>>> ")  
        local palpite = io.read("*n")  

        if palpite == nil then
            print("Por favor, insira um número valido.")
            io.read()  
        elseif palpite < numero_correto then
            print("O numero correto e maior.")
            tentativas_restantes = tentativas_restantes - 1
        elseif palpite > numero_correto then
            print("O numero correto e menor.")
            tentativas_restantes = tentativas_restantes - 1
        else
            acertou = true
        end
    end

    if acertou then
        print("Parabens! Voce adivinhou o numero corretamente!")
    else
        print("Que pena! Voce nao conseguiu adivinhar o numero!")
        print("O numero correto era: " .. numero_correto)
    end
end

math.randomseed(os.time())  
main()
