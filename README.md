<div align="center">
  <h1 style="margin: auto">Discord Webhook</h1>

  <p>Super simple interface for sending Discord messages through webhooks using VLang.</p>

  [![vlang](https://img.shields.io/badge/Made%20with-V-536b8a)](https://vlang.io)
</div>

## Overview

This lightweight interface allows you to quickly send messages to Discord channels via webhooks using VLang. It's perfect for automating notifications, updates, or any other kind of message you want to share on your Discord server.

## Features

- **Easy to Use**: You don't need to be a VLang expert to get started. The interface is designed to be simple and straightforward.

- **Webhook Integration**: Send messages directly to your Discord channels through webhooks.

- **Customizable**: You can easily adapt the code to fit your specific needs and message formats.

## Getting Started

Follow these steps to start sending Discord messages with VLang:

1. **Install VLang**: If you haven't already, install VLang by following the instructions on the [official website](https://vlang.io/).

2. **Installation**: To use discordwebhook in your V project, simply install it with:

   ```sh
   v install "https://github.com/ysdragon/discordwebhook"
   ```

3. **Usage**: Incorporate the VLang Discord webhook sender into your project and start sending messages to your Discord channels.

## Example

Here's a quick example of how to send a message using this interface:

```v
module main

import discordwebhook

fn main() {   
    // Replace with your Discord webhook URL
    webhook_url := "YOUR_DISCORD_WEBHOOK_URL"

    // Create a message with the content you want to send
    message := discordwebhook.Message{ 
        content: "Hello, Discord!",
    }

    resp := discordwebhook.send_message(webhook_url, message) !
    println(resp)
}
```

## Contribution

Contributions are welcome! If you have ideas for improvements or new features, feel free to open an issue or submit a pull request. Let's make this interface even better together.

## License

This project is open-source and available under the MIT License. See the [LICENSE](LICENSE) file for more details.