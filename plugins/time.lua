function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = '🕒 ساعت '..jdat.FAtime..' \n📅 امروز '..jdat.FAdate..' میباشد.\n    ----\n🕒TIME '..jdat.ENtime..'\n📆 '..jdat.ENdate.. '\n#ID SUDO: @zZz_ADMIN_SHOMARE_MAJAZEE_zZz
#ID Channel: @iD_SHOMARE_MAJaZE_iD
منتظر شمادوستان گل هستیم ❤️🌹💋'
return text
end
return {
  patterns = {"^[/!]([Tt][iI][Mm][Ee])$"}, 
run = run 
}
