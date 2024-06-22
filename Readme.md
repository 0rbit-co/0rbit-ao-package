# 0rbit Package

**0rbit** is the Lua Module designed for interacting with [0rbit](https://0rbit.co) to **Access Real World Data** into your `ao` process. 

## Features 

- **GET Request**: Make a HTTP GET request to any valid URL.
- **POST Request**: Make a HTTP POST request to any valid URL.
- **Balance**: Get the balance of **0RBT POINTS** of your processId.

## Installation

### Using APM

1. Open your AOS and `laod` APM blueprint in to your process.

    ```bash
    .load-blueprint apm
    ```
2. Install the `0rbit` package.

    ```bash
    APM.install("_0rbit")
    ```

### Directly from Source

Copy `src/main.lua` file and paste it into your directory named as `_0rbit.lua`.

### Import Module
    
```lua
local _0rbit = require("_0rbit")
```

## Usage

### Creating a GET Request

```lua
_0rbit.sendGetRequest(GET_URL)
```

### Creating a POST Request

```lua
_0rbit.sendPostRequest(POST_URL, POST_BODY)
```

### Checking $0RBT Balance 

```lua
_0rbit.getBalance()
```

## Example

You can example implementation with 0rbit Package at [example](example.lua) file.