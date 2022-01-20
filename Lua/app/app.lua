local jsonOps = require("modules.jsonOps")
local lapis = require("lapis")
local config = require("lapis.config")
config("development", {
  port = 8080
})

local app = lapis.Application()

app:get("/", function()
  return "Welcome to Lapis " .. require("lapis.version")
end)

app:get("/json_module", function()
  local response = jsonOps.moduleDetails()

  return { status = 200, content_type = "application/json", json = response }
end)

app:get("/health", function()
  local response = {
    healthcheck = "ok"
  }
  return { status = 200, content_type = "application/json", json = jsonOps.tableToJson(response) }
end)

return app
