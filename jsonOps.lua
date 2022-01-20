local cjson = require("cjson")
local util = require("cjson.util")
local fileDetails = {
  version = '1.0',
  description = 'Utility functions for handling json data and converting between json and Lua tables'
}

local _M = {}

function _M.moduleDetails()
  return _M.tableToJson(fileDetails)
end

function _M.tableToJson(tableObj)
   return cjson.encode(tableObj)
end

function _M.jsonToTable(jsonObj)
  return cjson.decode(jsonObj)
end

return _M
