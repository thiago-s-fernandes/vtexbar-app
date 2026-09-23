#!/bin/bash
set -e

# ==============================================================================
# VTEX Bar — macOS Installer
# https://github.com/thiago-s-fernandes/vtexbar-app
# ==============================================================================

REPO="thiago-s-fernandes/vtexbar-app"
APP_NAME="VTEX Bar"
INSTALL_DIR="/Applications"
APP_PATH="$INSTALL_DIR/$APP_NAME.app"
PLIST_LABEL="com.thiagofernandes.vtexbar"
PLIST_PATH="$HOME/Library/LaunchAgents/$PLIST_LABEL.plist"

echo "----------------------------------------------------"
echo " Installing VTEX Bar for macOS"
echo "----------------------------------------------------"

# 1. Determine download URL from GitHub Releases (fallback to latest tag)
LATEST_TAG=$(curl -fsSL "https://api.github.com/repos/$REPO/releases/latest" 2>/dev/null | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/' || echo "")
if [ -z "$LATEST_TAG" ]; then
    LATEST_TAG="v1.0.0"
fi

ZIP_URL="https://github.com/$REPO/releases/download/$LATEST_TAG/VTEX-Bar.zip"
TMP_DIR=$(mktemp -d)

echo "==> Downloading $APP_NAME ($LATEST_TAG)..."
if ! curl -fsSL "$ZIP_URL" -o "$TMP_DIR/VTEX-Bar.zip"; then
    echo "ERROR: Failed to download release from $ZIP_URL"
    echo "Please download manually from https://github.com/$REPO/releases"
    exit 1
fi
# 1. Clean up legacy or running instances
echo "==> Cleaning up any existing instances..."
launchctl unload "$HOME/Library/LaunchAgents/com.user.vtexbar.plist" 2>/dev/null || true
rm -f "$HOME/Library/LaunchAgents/com.user.vtexbar.plist"
launchctl unload "$PLIST_PATH" 2>/dev/null || true
pkill -9 -f "vtexbar" 2>/dev/null || true
pkill -9 -f "$APP_NAME" 2>/dev/null || true

echo "==> Extracting to $INSTALL_DIR..."
rm -rf "$APP_PATH"
unzip -q "$TMP_DIR/VTEX-Bar.zip" -d "$INSTALL_DIR"
rm -rf "$TMP_DIR"

# 2. Clear Gatekeeper quarantine flag
echo "==> Clearing quarantine attributes..."
xattr -cr "$APP_PATH" 2>/dev/null || true

# 3. Configure LaunchAgent for automatic startup at login
echo "==> Configuring automatic startup at login..."
mkdir -p "$HOME/Library/LaunchAgents"

cat <<EOF > "$PLIST_PATH"
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>$PLIST_LABEL</string>
    <key>ProgramArguments</key>
    <array>
        <string>$APP_PATH/Contents/MacOS/vtexbar</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>StandardOutPath</key>
    <string>/tmp/vtexbar.out</string>
    <key>StandardErrorPath</key>
    <string>/tmp/vtexbar.err</string>
</dict>
</plist>
EOF

# 4. Launch Application via LaunchAgent
echo "==> Launching $APP_NAME..."
launchctl unload "$PLIST_PATH" 2>/dev/null || true
launchctl load "$PLIST_PATH" 2>/dev/null || true

echo ""
echo "===================================================="
echo " VTEX Bar installed and running successfully!"
echo " Look for the VTEX logo in your macOS menu bar."
echo "===================================================="

