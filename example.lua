_0rbit = require("src.main")
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
    Example function to be called when the response is received.
    @msg: The response message
]]
function onResponse(msg)
    print("Response: " .. json.encode(msg))
end

--[[
    Example Handler for sending a GET request.
    @GET_URL: The URL to send the GET request to
]]
Handlers.add(
    "TestGetRequest",
    Handlers.utils.hasMatchingTag("Action", "Test-Get-Request"),
    function()
        _0rbit.sendGetRequest(GET_URL)
    end
)


--[[
    Example Handler for sending a POST request.
    @BASE_URL: The URL to send the POST request to
    @BODY: The data body to be sent in the POST request
]]
Handlers.add(
    "Test-Post-Request",
    Handlers.utils.hasMatchingTag("Action", "Test-Post-Request"),
    function()
        _0rbit.sendPostRequest(BASE_URL, BODY)
    end
)

--[[
    Example Handler for receiving a response.
    @msg: The response message
    @onResponse (optional): The function to be called when the response is received
]]

Handlers.add(
    "Receive-Response",
    Handlers.utils.hasMatchingTag("Action", "Receive-Response"),
    function(msg)
        _0rbit.receiveResponse(msg, onResponse)
    end
)

--[[
    Example Handler for getting the balance of the current processId.
    @recepient (optional): The processId to get the balance of. If not passed, then the balance of the current processId is returned.
]]
Handlers.add(
    "Get-Balance",
    Handlers.utils.hasMatchingTag("Action", "Get-Balance"),
    function()
        _0rbit.getBalance()
    end
)
