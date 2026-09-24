# VTEX Bar

Native macOS menu bar utility for VTEX IO and FastStore developers.

Monitors active session status, tracks token expiration in real time, provides instant Spotlight-style workspace switching, seamless account switching (always defaulting to `master`), and one-click shortcuts to Admin, GraphQL IDE, and Storefront.

## Features

- **Menu bar status**: Displays current account and workspace (`account/workspace`).
- **Spotlight-Style Workspace Switcher (`⇧⌘W`)**: Instant fuzzy search modal to quickly search and switch workspaces. Effortlessly handles accounts with hundreds of workspaces, showing `current` and `production` badges, with full keyboard navigation (`↑`/`↓`, `↵`, `Esc`).
- **Workspace manager**: Quick switch to `master`, recent workspaces history, workspace creation (dev or production), and deletion of unused workspaces.
- **Account switcher**: Seamlessly switch between cached VTEX accounts (always landing on `master`), add new accounts with validation, or log out per account.
- **Session monitor**: Shows active JWT expiration countdown and token status.
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
| Workspace | Search & Switch Workspace... | `⇧⌘W` |
| Workspace | Switch to Master | `⌘M` |
| Workspace | Create Workspace... | `⇧⌘N` |
| FastStore | Open Store | `⌘F` |
| FastStore | Open Headless CMS | `⌘H` |
| FastStore | Open WebOps | `⌘W` |
| VTEX IO | Open Storefront | `⌘O` |
| VTEX IO | Open Admin | `⌘A` |
| VTEX IO | Open GraphQL IDE | `⌘G` |
| Account | Add Account... | `⇧⌘A` |
| Auth | Re-login / Log In | `⌘L` |
| System | Refresh Status | `⌘R` |
| System | Quit VTEX Bar | `⌘Q` |

## Updating

If installed via Homebrew:

```bash
brew upgrade --cask vtexbar
```

If installed via install script, simply run the installation script again.

## Uninstall

```bash
curl -fsSL https://raw.githubusercontent.com/thiago-s-fernandes/vtexbar-app/main/uninstall.sh | bash
```

## License

MIT
