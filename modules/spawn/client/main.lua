CreateThread(function()
    if not Config.UseMulticharacter then
        exports.spawnmanager:spawnPlayer({
            x = Config.DefaultSpawnPoint[1],
            y = Config.DefaultSpawnPoint[2],
            z = Config.DefaultSpawnPoint[3],
            heading = Config.DefaultSpawnPoint[4],
            model = 'mp_m_freemode_01',
            skipFade = false
        })

        NX.CreatePlayer()

    end
end)