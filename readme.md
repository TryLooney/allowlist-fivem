# FiveM Yorpex Allowlist Integration

This repository provides a simple integration between FiveM and the Yorpex allowlist system. Follow the steps below to configure your FiveM server to use the Yorpex allowlist.

## Requirements

- A Yorpex account and project.
- FiveM server with any base.

## Configuration Steps

### 1. Define Variables

Open the `server/main.lua` file and define the following variables:

- `projectId`: The ID of your Yorpex project.
- `accessToken`: The access token for your Yorpex project.
- `projectUrl`: The URL of your Yorpex project.

### 2. Update `server/main.lua`

In the `server/main.lua` file, define the variables `projectId`, `accessToken`, and `projectUrl` with your Yorpex project details.

### 3. Save and Restart

Save the changes to `server/main.lua` and restart your FiveM server.

## Support

For support or questions, please contact Yorpex support through their [website](https://yorpex.app/support).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

### 4. Testing

After configuring and restarting your server, test to ensure that players are correctly being allowed or denied based on your Yorpex allowlist.
To do this, simply create an allowlist on the website with your authenticated Steam account, approve it and try to enter the server

## Contribution

Feel free to submit issues or pull requests if you have suggestions or improvements for this integration.
