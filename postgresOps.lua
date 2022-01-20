local pgmoon = require("pgmoon")

local _M = {}

function _M.createNewConnection(
databaseName, hostUrl, portNumber, userName, passwordString, isSSL, sslVerify, sslRequired,socketType,appName)
    -- function args can be
    return pgmoon.new({
     database = databaseName or "default",
     host = hostUrl or "127.0.0.1",
     port = portNumber or "5432",
     user = userName or "postgres",
     password = passwordString or "postgres",
     ssl = isSSL or false,
     ssl_verify = sslVerify or nil,
     ssl_required = sslRequired or nil,
     socket_type = socketType or "nginx",
     application_name = appName or "pgmoon"
    })
end

return _M
