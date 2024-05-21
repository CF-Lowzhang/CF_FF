RegisterServerEvent("CF_FF:Keybind:Crab")
AddEventHandler('CF_FF:Keybind:Crab', function()
	local src = source    
	local xPlayer = ESX.GetPlayerFromId(src)
	local srcid = xPlayer.identifier 
	MySQL.Async.fetchAll('SELECT * FROM cf_radial_keybinds WHERE `id`=@id;', {id = srcid}, function(keys)
		if keys[1] then
			TriggerClientEvent("CF_FF:Keybind:Send", src,keys[1].key1,keys[1].key2,keys[1].key3,keys[1].key4,keys[1].key5,keys[1].key6,keys[1].key7,keys[1].key8,keys[1].key9,keys[1].key10,keys[1].key11,keys[1].key12)
		else
			MySQL.Async.execute('INSERT INTO cf_radial_keybinds (`id`) VALUES (@id);',{id = srcid}, function(created) 
				local xx = json.encode('{type="未設定", value="未設定",label="未設定"}')
				TriggerClientEvent("CF_FF:Keybind:Send", src, xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx) 
			end)
		end
	end)
end)

RegisterServerEvent("CF_FF:Keybind:Update")
AddEventHandler("CF_FF:Keybind:Update", function(key,context)
	local src = source    
	local xPlayer = ESX.GetPlayerFromId(src)
	local myid = xPlayer.identifier -- local myid = GetPlayerIdentifier(source) 


    if key and context and myid then
        local query = string.format("UPDATE cf_radial_keybinds SET %s=@key WHERE id=@id", key)
        MySQL.Async.execute(query, { id = myid, key = json.encode(context) }, function()
            TriggerClientEvent("CF_FF:Keybind:Update", src, key, json.encode(context))
        end)
    end

	--if key == "key1" then
	--	MySQL.Async.execute("UPDATE cf_radial_keybinds SET key1=@key WHERE id=@id", {id = myid, key = key}, function() TriggerClientEvent("CF_FF:Keybind:Update", src, key, context) end)
	--elseif key == "key2" then
	--	MySQL.Async.execute("UPDATE cf_radial_keybinds SET key2=@key WHERE id=@id", {id = myid, key = key}, function() TriggerClientEvent("CF_FF:Keybind:Update", src, key, context) end)
	--elseif key == "key3" then
	--	MySQL.Async.execute("UPDATE cf_radial_keybinds SET key3=@key WHERE id=@id", {id = myid, key = key}, function() TriggerClientEvent("CF_FF:Keybind:Update", src, key, context) end)
	--elseif key == "key4" then
	--	MySQL.Async.execute("UPDATE cf_radial_keybinds SET key4=@key WHERE id=@id", {id = myid, key = key}, function() TriggerClientEvent("CF_FF:Keybind:Update", src, key, context) end)
	--elseif key == "key5" then
	--	MySQL.Async.execute("UPDATE cf_radial_keybinds SET key5=@key WHERE id=@id", {id = myid, key = key}, function() TriggerClientEvent("CF_FF:Keybind:Update", src, key, context) end)
	--elseif key == "key6" then
	--	MySQL.Async.execute("UPDATE cf_radial_keybinds SET key6=@key WHERE id=@id", {id = myid, key = key}, function() TriggerClientEvent("CF_FF:Keybind:Update", src, key, context) end)
	--elseif key == "key7" then
	--	MySQL.Async.execute("UPDATE cf_radial_keybinds SET key7=@key WHERE id=@id", {id = myid, key = key}, function() TriggerClientEvent("CF_FF:Keybind:Update", src, key, context) end)
	--elseif key == "key8" then
	--	MySQL.Async.execute("UPDATE cf_radial_keybinds SET key8=@key WHERE id=@id", {id = myid, key = key}, function() TriggerClientEvent("CF_FF:Keybind:Update", src, key, context) end)
	--elseif key == "key9" then
	--	MySQL.Async.execute("UPDATE cf_radial_keybinds SET key9=@key WHERE id=@id", {id = myid, key = key}, function() TriggerClientEvent("CF_FF:Keybind:Update", src, key, context) end)
	--elseif key == "key10" then
	--	MySQL.Async.execute("UPDATE cf_radial_keybinds SET key10=@key WHERE id=@id", {id = myid, key = key}, function() TriggerClientEvent("CF_FF:Keybind:Update", src, key, context) end)
	--elseif key == "key11" then
	--	MySQL.Async.execute("UPDATE cf_radial_keybinds SET key11=@key WHERE id=@id", {id = myid, key = key}, function() TriggerClientEvent("CF_FF:Keybind:Update", src, key, context) end)
	--elseif key == "key12" then
	--	MySQL.Async.execute("UPDATE cf_radial_keybinds SET key12=@key WHERE id=@id", {id = myid, key = key}, function() TriggerClientEvent("CF_FF:Keybind:Update", src, key, context) end)
	--end
end)