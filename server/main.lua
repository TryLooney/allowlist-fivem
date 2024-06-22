local projectId = ""
local accessToken = ""
local projectUrl = "https://template-01.yorpex.app"

AddEventHandler("playerConnecting", function(name, setKickReason, deferrals)
  deferrals.defer()

  local source = source

  deferrals.update('Checando allowlist...')

  Wait(0)
  
  local steamId
  local identifiers = GetPlayerIdentifiers(source)
  deferrals.defer()

  for _, v in pairs(identifiers) do
      if string.find(v, "steam") then
          steamId = tonumber(v:sub(7), 16)
          break
      end
  end

  Wait(0)

  if not steamId then
      deferrals.done("Certifique-se que sua Steam está aberta.")
      return
  end

  PerformHttpRequest("https://api.yorpex.app/allowlist/get-by-identifier/" .. tostring(steamId) .. "?projectId="..projectId, function (errorCode, resultData, resultHeaders, errorData)
    local isApproved = json.decode(resultData)['isApproved'] == true

    if not isApproved then
      deferrals.done("Você ainda não fez sua allowlist, acesse "..projectUrl.."/allowlist para fazer.")
    else
      deferrals.done()
    end
  end, 'GET', '', {
    ['Content-Type'] = 'application/json',
    ['Authorization'] = 'Bearer ' .. accessToken
  })
end)