#!/bin/bash
set -e

# ==============================================================================
# VTEX Bar — macOS Uninstaller
# ==============================================================================

APP_NAME="VTEX Bar"
APP_PATH="/Applications/$APP_NAME.app"
PLIST_LABEL="com.thiagofernandes.vtexbar"
PLIST_PATH="$HOME/Library/LaunchAgents/$PLIST_LABEL.plist"

echo "==> Uninstalling $APP_NAME..."

# 1. Stop and remove LaunchAgent
if [ -f "$PLIST_PATH" ]; then
    launchctl unload "$PLIST_PATH" 2>/dev/null || true
    rm -f "$PLIST_PATH"
fi

# 2. Terminate running process
pkill -f "$APP_NAME" 2>/dev/null || true
pkill -f "vtexbar" 2>/dev/null || true

# 3. Remove application bundle
if [ -d "$APP_PATH" ]; then
    rm -rf "$APP_PATH"
fi

echo "$APP_NAME has been successfully uninstalled."
