#!/bin/bash
# Emergency Restore Script Template

echo "Restarting Tailscale service..."
sudo systemctl restart tailscaled

echo "Restarting Docker service..."
sudo systemctl restart docker

echo "Restarting Cloudflare Tunnel (if any)..."
sudo systemctl restart cloudflared

echo "Completed emergency restore tasks."
