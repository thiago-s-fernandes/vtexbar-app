# VTEX Bar for macOS 🚀

A lightweight, native macOS menu bar status application built for **VTEX IO** and **FastStore** developers.

Monitor your active session, switch accounts and workspaces instantly, verify token expiration countdowns, and jump directly to Admin, GraphQL IDE, or Storefront in one click.

---

## ✨ Features

- **⚡ Real-Time Status in Menu Bar**: View current account and workspace at a glance (`account/workspace`).
- **⏳ Session Countdown & Auto-Refresh**: Live token expiration tracker (`expires in 23h 12m`).
- **🔄 Instant Account Switching**: Switch between cached VTEX accounts with single-click ease or add new ones with automated pre-validation.
- **🌿 Workspace Management**: Switch workspaces, promote/switch to master, create dev/production workspaces, and safely delete unused workspaces.
- **🚀 FastStore Quick Links**: One-click shortcuts to Store, Headless CMS, and WebOps.
- **⚡ VTEX IO Quick Links**: Open Storefront, Admin, and GraphQL IDE instantly.
- **🍏 Native macOS HIG Design**: Aligned `<Key>: <Value>` profile header with native SF Symbols and dark/light mode support.
- **🖥️ Universal Binary**: Built natively for both **Apple Silicon (M1/M2/M3/M4)** and **Intel** Macs.

---

## 📦 Installation

### Method 1: One-Line Terminal Install (Recommended)

Run the following command in your macOS terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/thiago-s-fernandes/vtexbar-app/main/install.sh | bash
```

This downloads the latest universal app, installs it to `/Applications`, configures automatic login startup, and opens it immediately.

---

### Method 2: Homebrew Tap

```bash
brew tap thiago-s-fernandes/vtexbar-app
brew install --cask vtexbar
```

---

### Method 3: Manual Download (.dmg)

1. Download **`VTEX-Bar.dmg`** from the [Releases](https://github.com/thiago-s-fernandes/vtexbar-app/releases) page.
2. Open the `.dmg` and drag **VTEX Bar** to your **Applications** folder.
3. Open `VTEX Bar` from Applications.
   *(Note: If macOS displays an unidentified developer prompt on first launch, right-click the app > click **Open** > confirm **Open**).*

---

## ⌨️ Keyboard Shortcuts

| Section | Action | Shortcut |
| :--- | :--- | :--- |
| **FastStore** | Open Store | `⌘ F` |
| **FastStore** | Open Headless CMS | `⌘ H` |
| **FastStore** | Open WebOps | `⌘ W` |
| **VTEX IO** | Open Storefront | `⌘ O` |
| **VTEX IO** | Open Admin | `⌘ A` |
| **VTEX IO** | Open GraphQL IDE | `⌘ G` |
| **Workspace** | Switch to Master Workspace | `⌘ M` |
| **Workspace** | Create Workspace... | `⇧ ⌘ N` |
| **Account** | Add Account... | `⇧ ⌘ A` |
| **Authentication** | Re-login / Log In | `⌘ L` |
| **System** | Refresh Status | `⌘ R` |
| **System** | Quit VTEX Bar | `⌘ Q` |

---

## 🗑️ Uninstallation

To cleanly remove VTEX Bar:

```bash
curl -fsSL https://raw.githubusercontent.com/thiago-s-fernandes/vtexbar-app/main/uninstall.sh | bash
```

---

## 📄 License

MIT © [Thiago Fernandes](https://github.com/thiago-s-fernandes)
