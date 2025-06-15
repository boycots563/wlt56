
local obsah = "Ahoj, toto je testovaci subor vytvoreny cez Lua."
local cesta = os.getenv("TEMP") .. "\\chujtest.txt"

writefile(cesta, obsah)
print("Subor bol vytvoreny v:", cesta)