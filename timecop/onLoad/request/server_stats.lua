-- This software, and it's associated files/documents, are protected by the General Public License v3, see LICENSE.txt for more information
-- Copyright (C) 2022 Trollface Security, all rights reserved.

task.spawn(function()
    while true do
        sendStatus("/server-stats", {
            ping = Services.Stats.Network.ServerStatsItem["Data Ping"]:GetValueString();
            players = #Services.Players:GetPlayers(),
        })
        task.wait( ENV.Statistics.RefreshRate )
    end
end)