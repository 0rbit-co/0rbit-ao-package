_0rbit = require("_0rbit")
local json = require("json")

-- The URL to send the GET request to
GET_URL = "https://0rbit.co"

-- The URL to send the POST request to
BASE_URL = "https://g8way.0rbit.co/graphql"

-- The data body to be sent in the POST request
BODY = json.encode({
    query = [[
                            query {
                                transactions(
                                    owners: ["vh-NTHVvlKZqRxc8LyyTNok65yQ55a_PJ1zWLb9G2JI"]
                                ) {
                                    edges {
                                        node {
                                            id
                                        }
                                    }
                                }
                            }
                        ]]
});

--[[
    Example Handler for sending a GET request.
]]
Handlers.add(
    "TestGetRequest",
    Handlers.utils.hasMatchingTag("Action", "Testing-Get-Request"),
    function()
        _0rbit.sendGetRequest(GET_URL)
    end
)


--[[
    Example Handler for sending a POST request.
]]
Handlers.add(
    "Test-Post-Request",
    Handlers.utils.hasMatchingTag("Action", "Testing-Post-Request"),
    function()
        _0rbit.sendPostRequest(BASE_URL, BODY)
    end
)

--[[
    Example Handler for getting the balance of the current processId.
]]
Handlers.add(
    "Get-Balance",
    Handlers.utils.hasMatchingTag("Action", "Get-Balance"),
    function()
        _0rbit.getBalance()
    end
)
