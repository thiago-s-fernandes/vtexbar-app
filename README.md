# VTEX Bar

Native macOS menu bar utility for VTEX IO and FastStore developers.

Monitors active session status, tracks token expiration in real time, provides quick account and workspace switching, and shortcuts to Admin, GraphQL IDE, and Storefront.

## Features

- **Menu bar status**: Displays current account and workspace (`account/workspace`).
- **Session monitor**: Shows active JWT expiration countdown.
- **Account switcher**: Switch between cached VTEX accounts or add new ones with validation.
- **Workspace manager**: Switch to master, switch between workspaces, create dev/production workspaces, and delete unused workspaces.
- **Direct shortcuts**: One-click navigation to Storefront, Admin, GraphQL IDE, FastStore, Headless CMS, and WebOps.
- **Universal binary**: Native support for Apple Silicon (`arm64`) and Intel (`x86_64`) Macs on macOS 14+.

## Installation

### Script (Recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/thiago-s-fernandes/vtexbar-app/main/install.sh | bash
```

Installs `VTEX Bar.app` to `/Applications` and configures a LaunchAgent to start automatically at login.

### Homebrew

```bash
brew tap thiago-s-fernandes/vtexbar-app
brew install --cask vtexbar
```

### Manual Download

Download `VTEX-Bar.dmg` from [Releases](https://github.com/thiago-s-fernandes/vtexbar-app/releases), open it, and drag `VTEX Bar.app` to `/Applications`.

> Note: If macOS blocks the app on first launch, right-click `VTEX Bar.app` in `/Applications` and select **Open**.

## Keyboard Shortcuts

| Section | Action | Shortcut |
| :--- | :--- | :--- |
| FastStore | Open Store | `⌘F` |
| FastStore | Open Headless CMS | `⌘H` |
| FastStore | Open WebOps | `⌘W` |
| VTEX IO | Open Storefront | `⌘O` |
| VTEX IO | Open Admin | `⌘A` |
| VTEX IO | Open GraphQL IDE | `⌘G` |
| Workspace | Switch to Master | `⌘M` |
| Workspace | Create Workspace... | `⇧⌘N` |
| Account | Add Account... | `⇧⌘A` |
| Auth | Re-login / Log In | `⌘L` |
| System | Refresh Status | `⌘R` |
| System | Quit VTEX Bar | `⌘Q` |

## Uninstall

```bash
curl -fsSL https://raw.githubusercontent.com/thiago-s-fernandes/vtexbar-app/main/uninstall.sh | bash
```

## License

MIT
