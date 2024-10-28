--[[

Linha de comando
C:\Scripts_Lua\lua54.exe "C:\Scripts_Lua\Scripts\CursoLua\DesafioLua.lua"

Nome da criatura
Descrição
Som que faz
Atributos
    Ataque
    Defesa
    Vitalidade
    Velocidade
    Inteligência
Habilidades
    Furtividade
    Explosão

===================================================
|
| CREEPER
| Um monstro muito sagaz que explode na sua cara.
|
| Som: Tssssss
|
| Atributos:
|   Ataque: ########00
|   Defesa: ###0000000
|   ...
|
===================================================

]]

-- Habilitar UTF-8 no terminal
-- para exibir emijis, que são caracteres UTF-8, manualmente no terminal do VSCode, digitar, no próprio terminal, chcp 65001
os.execute("chcp 65001")

-- Criatura
local monsterName = "CREEPER"
local description = "Um monstro furtivo com um temperamento explosivo."
-- para inserir um emoji, pressione a tecla Windows+"." e comece a digitar o nome do emoji desejado
local emoji = "💥"
local sound = "Tssssss"
local favoriteTime = "Noturno"
local item = "Pólvora"

-- Atributos
local attackAttribute = 10
local defenseAttribute = 1
local lifeAttribute = 5
local speedAttribute = 7
local inteligenceAttribute = 2

local function getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    if attribute >= 8 then
        fullChar = "🟩"
    --elseif attribute >= 6 then
    --    fullChar = "🟧"
    elseif attribute >= 6 then
        fullChar = "🟦"
    elseif attribute >= 4 then
        fullChar =  "🟨"
    else
        fullChar = "🟥"
    end

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

-- Cartão
-- o .. é usado para concatenar strings
print("┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓")
print("┃                    - " .. monsterName .. " -                    ┃")
print("┠───────────────────────────────────────────────────┨")
print("┃ " .. description .. " ┃")
print("┃                                                   ┃")
print("┃ Item: " .. item .. "                                     ┃")
print("┃ Som: " .. sound .. "                                      ┃")
print("┃ Emoji Favorito: " .. emoji .. "                                ┃")
print("┃ Horário Favorito: " .. favoriteTime .. "                         ┃")
--print("┃                                                   ┃")
print("┠───────────────────────────────────────────────────┨")
print("┃ Atributos" .. "                                         ┃")
-- chama função getProgressBar para criar a barra de progresso com o valor
print("┃    Ataque:       " .. getProgressBar(attackAttribute) .. "             ┃")
print("┃    Defesa:       " .. getProgressBar(defenseAttribute) .. "             ┃")
print("┃    Vida:         " .. getProgressBar(lifeAttribute) .. "             ┃")
print("┃    Velocidade:   " .. getProgressBar(speedAttribute) .. "             ┃")
print("┃    Inteligência: " .. getProgressBar(inteligenceAttribute) .. "             ┃")
print("┃                                                   ┃")
print("┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛")