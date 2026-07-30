# REFORGER SERVER TOOL V2

A larger Windows desktop manager for Arma Reforger dedicated servers.

## Major changes

- Larger 1550 x 940 interface
- Left-side navigation with dedicated configuration panels
- More server settings
- Expanded RCON, platform, voice, AI, operating, launch, queue, and mission settings
- Live console and command preview
- Profile saving
- Backups and restore
- Scheduled restarts
- Automatic crash restart
- SteamCMD installation/update
- Embedded official Reforger Workshop
- One-click mod adding

## One-click Workshop mod workflow

1. Open **Workshop** in the left navigation.
2. Open an individual mod page.
3. Click **ADD CURRENT MOD** at the top of the tool.
4. The tool reads the mod ID from the Workshop page URL.
5. The mod immediately appears in **Mods**.

When supported by the Workshop page, the app also injects a floating green
**ADD MOD TO HOSTING TOOL** button into the page.

## Build the executable

1. Install Python 3.11 or newer on Windows.
2. Enable **Add Python to PATH**.
3. Extract the ZIP.
4. Run `BUILD_EXE.bat`.
5. The executable is created at:

`dist\REFORGER SERVER TOOL.exe`

## Run from source

Run:

`RUN_FROM_SOURCE.bat`

## Server install

The tool uses SteamCMD and Arma Reforger Dedicated Server app ID `1874900`.

## Notes

- The tool writes `<server folder>\config.json`.
- Fast validation defaults to enabled.
- Server FPS defaults to 60 through `-maxFPS`.
- Router/firewall port forwarding is still required for public hosting.

## V2.1 first-boot configuration fix

- Blank A2S addresses are automatically written as `0.0.0.0`.
- Blank RCON addresses are automatically written as `0.0.0.0`.
- Existing saved profiles containing blank addresses are corrected when loaded/saved.
- Prevents the startup error: `/properties/a2s/address does not match the required pattern`.


## Arma-themed interface

- Olive-drab and dark military interface.
- Illuminated green Start Server button while stopped.
- Illuminated red Stop Server button while running.
- Dashboard indicators for:
  - server state
  - BattlEye
  - AI
  - RCON
  - Workshop mods
  - fast validation
  - crash auto-restart
  - scheduled restarts

## Reforger 1.7 corrections

- Removes `game.gameProperties.playerCountLimit`.
- Uses `game.maxPlayers`.
- Migrates older saved profiles automatically.
- Blank RCON password disables RCON instead of writing invalid JSON.
- A2S blank address becomes `0.0.0.0`.
- Validates the config before launch.


## Pro additions

- Bundled custom program icon.
- Full-window Arma background image with dark translucent panels.
- Bottom-left server presets.
- Two-step confirmed server wipe.
- Automatic SteamCMD and server-file troubleshooting.
- Automatic executable path detection and correction.
- Port-collision checks across profiles.
- Multi-server manager that can launch multiple saved profiles at once.
- Each concurrent server must use unique game, public, A2S, and RCON ports.


## SteamCMD repair update

- Searches the selected SteamCMD folder recursively.
- Searches PATH, LocalAppData, C:\SteamCMD, Program Files, and the tool data folder.
- Verifies the downloaded ZIP before extraction.
- Copies all SteamCMD bootstrap files.
- Runs SteamCMD self-update before installing Reforger.
- Uses a generated `+runscript` installation file.
- Searches recursively for `ArmaReforgerServer.exe`.
- Searches for the Steam app manifest.
- Shows install diagnostics and offers an automatic repair/retry.

## Theme tab

- Arma Reforger
- Command Center
- Night Operations
- Woodland
- Desert Deployment
- NVG / Thermal
- No Background


## Reforger 1.7 JSON schema correction

This build removes and automatically migrates these rejected legacy fields:

- `game.gameProperties.playerCountLimit`
- `operating.eventQueue`

Older profiles, presets, and raw JSON are sanitized before saving or launching.
The Raw Config page now includes a **Repair for Reforger 1.7** button.


## Kill Server button

A red **KILL SERVER** button is positioned beside the large server state controls.

- Requires confirmation.
- Immediately force-closes the main dedicated server process.
- Also closes active managed instance processes when used from the main toolbar.
- Stops automatic and scheduled restart timers.
- Disabled while no server is running.

Use **Stop Server** for normal shutdown. Use **Kill Server** only when the server is frozen or will not stop.


## Reforger-style interface rebuild

- Dark military layout inspired by Arma Reforger.
- Sharp rectangular controls and panels.
- Olive selected states and separators.
- Uppercase navigation and action labels.
- Dedicated Reforger-style brand header.
- Current page indicator in the top-right.
- Reworked status widgets and illuminated deployment controls.


## Stable Reforger 1.7 JSON repair

This version keeps the Reforger-style UI and automatically removes:

- `operating.eventQueue`
- `game.gameProperties.playerCountLimit`

Existing profiles are sanitized when loaded and again before every launch.


## Version 3.0 — Longbow-compatible launch mode

This build follows the working Longbow sequence:

- Writes `server.json` into the selected server directory.
- Never writes `operating.eventQueue`.
- Removes legacy `playerCountLimit`.
- Omits the entire RCON object when RCON is disabled.
- Creates `saves` and `addons` directories automatically.
- Launches using:
  `-profile <saves> -addonsDir <addons> -logStats 5000 -maxFPS 60 -addonsRepair -logLevel normal -config <server.json>`
- Verifies `server.json` before every launch and blocks launch if `eventQueue` somehow exists.
- Adds current persistence and `modsRequiredByDefault` fields used by the reference Longbow configuration.


## Branding update

- Window title: `REFORGER SERVER TOOL 3.2`
- Executable: `REFORGER SERVER TOOL.exe`
- Uses the supplied Arma Reforger logo as a multi-resolution Windows icon.
- The icon is applied to the EXE, taskbar, title bar, and application window.


## V3.3 — Manual Mod Sync

The Raw Config page now supports manually entered mod lists.

Supported mod examples:

```json
"mods": [
  {
    "modId": "595F2BF2F44836FB",
    "name": "RHS - Status Quo",
    "version": "1.0.0"
  },
  {
    "modId": "64610AFB74AA9842",
    "name": "WCS_Core"
  }
]
```

Changes:

- `Save Raw Config` parses the Raw Config editor before saving.
- Manually entered `game.mods` entries populate the Mods table.
- `Apply Raw JSON` immediately refreshes the Mods page.
- `Import server.json` loads configurations edited outside the program.
- Accepts `modId`, `modID`, `id`, or `workshopId`.
- Accepts bare 16-character mod ID strings.
- Duplicate mod IDs are removed automatically.


## V3.4 — Theme Selector

A theme dropdown is located on the top-right of the server controls toolbar.

Themes included:

- Reforger
- Dark
- Blue
- Red
- Light

The selected theme is saved automatically and restored when the tool starts.


## V3.5 — Mods JSON Editor

The Mods tab now includes a dedicated editor for the `game.mods` JSON array.

- View enabled table entries as formatted JSON.
- Edit the mod array directly.
- Apply edited JSON back to the mod table.
- Validate and format the JSON.
- Save the edited list directly to `server.json`.
- Changes made in the table refresh the JSON editor.


## V3.6 — Startup Crash Fix

Fixed the missing `QSizePolicy` import that caused both V3.4 and V3.5 to crash during startup.

This build includes:

- Theme selector
- Mods JSON editor
- Manual mod synchronization
- Longbow-compatible launch behavior
- Correct `server.json` generation


## V3.8

Added:

- Auto Update Mods checkbox that removes pinned mod versions.
- Detected Mod Scenarios dropdown on the Scenario tab.
- Scan Mod Scenarios button.
- Apply Selected Scenario button.
- Scenario detection from mod JSON fields and downloaded addon metadata.

Recognized mod JSON fields include `scenarioId`, `scenario`, `scenarios`,
`missions`, and `missionIds`.


## V3.9 — Scenario Discovery

The Scenario tab now shows a status row for every enabled mod.

For each mod it reports:

- Whether an addon folder was found
- How many addon folders were found
- How many files were scanned
- How many scenario paths were detected
- Whether the mod needs to be downloaded or manually configured

The scanner now searches text files and packed/binary addon files for
`{GUID}Missions/...conf` strings.

A new **Add Scenario for a Mod** section lets you save a scenario resource ID
against a selected mod. Manual mappings remain available after restarting the
tool and are included in the scenario dropdown.


## V3.10 — Scenario Page Crash Fix

Fixed the missing `QAbstractItemView` import that caused the Scenario Discovery
page to crash during startup.


## V3.11 — Cache Self-Repair

The Launch & Restart page now includes a Cache Self-Repair section.

### Automatic detection

The console watcher looks for errors such as:

- Inconsistent item table
- Missing or different replicated items
- Unrecoverable join-in-progress errors
- Corrupted addon/cache messages
- Resource or package checksum mismatches
- Workshop addon loading failures

### Repair process

When automatic repair is enabled:

1. The server is stopped.
2. Server addon and cache folders are moved into a timestamped quarantine.
3. Clean replacement folders are created.
4. The server restarts and redownloads required mods.

The original cache is not permanently deleted. It can be restored from the
Cache Quarantine folder.

An optional checkbox can also repair the local client addon cache when the
server and game client run on the same computer.


## V3.12 — Direct Scenario Add

The manual scenario section no longer checks enabled mods, addon folders,
GUID formatting, `.conf` extensions, file existence, or scenario existence.

Enter an optional source name, display name, and any scenario path. Press
**Add Directly To Dropdown** and the value is stored exactly as typed.

Direct entries remain available after restarting the tool.


## V3.13 — Monitoring and Player Management

### Dashboard

- Live dedicated-server CPU usage
- Live dedicated-server RAM usage
- System CPU and RAM usage
- Rolling CPU graph
- Rolling RAM graph
- Connected-player count card

### Players tab

- Requests the live player list with `#players`
- Parses player IDs, names, and identity IDs from server output
- Kick selected player
- Ban selected player with duration and reason
- Promote selected player by adding the identity ID to `game.admins`
- Remove selected player from `game.admins`

### Scenario page

Removed the mod-scanning table and scenario-discovery scroll area. The page now
contains only the scenario dropdown, direct scenario entry, and selected
scenario settings.


## V3.14 — Detachable Left Tabs

Every left-side navigation tab now includes:

- A descriptive tooltip
- A small `↗` button
- The ability to open the page in a separate window

Closing the detached window returns the page to its original position in the
main application. Selecting a detached page in the left navigation displays a
button that can return it to the main window.


## V3.15 — Detachable Tab Crash Fix

Added the missing `QListWidgetItem` import used by the custom left navigation
rows. This fixes the startup crash while preserving detachable tabs and
tooltips.


## V3.16 — Halo Navigation Fix

The detachable page buttons were removed. Every left-side navigation entry is
again a normal clickable tab.

### Navigation changes

- Full-row clickable tabs
- Detailed hover tooltips
- Dark Halo-inspired blue panel
- Cyan hover border
- Glowing blue selected indicator
- Removed white selection blocks and empty button boxes
- Selected tabs remain clearly readable when the window loses focus


## V3.17 — Hover Detach Tabs

Each left-side tab remains fully clickable. When the mouse hovers over a tab, a
small `↗` icon appears on the right.

- Click the tab row to open it in the main window.
- Click `↗` to open that page in a separate working window.
- Close the separate window to return the page to the main application.
- Detailed usage tooltips remain available on hover.
- The Halo-style cyan and dark-blue navigation appearance is preserved.


## V3.18 — Hover Window Fix

Fixed the duplicated left-navigation text by preventing the underlying
`QListWidgetItem` label from being painted beneath the custom Halo row.

Detached windows now explicitly reparent, show, and raise the selected page.
This fixes the blank detached-window problem.

The pop-out control was also replaced with a smaller Halo-style `⧉` icon that
only appears while hovering.


## V3.19 — Non-Modal Tab Windows

Detached tabs now open as explicit non-modal, independent windows.

You can continue using the main application, switch to other tabs, start or
stop the server, edit settings, and open additional detached pages while a
detached tab remains open.


## V3.20 — Working Floating Tabs

The previous modality implementation was removed.

Detached pages now use ordinary `Qt.Tool` windows owned by the main
application. They do not use `exec()`, `setModal()`, application modality, or
window modality.

Fixes:

- Main application remains enabled and clickable.
- Floating tabs appear visibly in front of the main application.
- Multiple floating tabs can remain open.
- Closing a floating tab safely returns its live page.
- Closing the main application also closes floating tab windows.


## V3.22 — Fixed Top Tabs and Image Themes

### Crash fix

Restored the shared `heading()` and `scroll_page()` helpers that were
accidentally removed during the previous navigation conversion.

### Navigation

- Removed all detachable and floating-window controls.
- Removed the left-side navigation.
- Added normal horizontal page tabs across the top.
- Added tab scroll arrows for smaller windows.
- Kept detailed hover tooltips.
- Tabs remain inside the main window and cannot disable it.

### New official Arma Reforger image themes

- Arma Barracks
- Arma Air Assault
- Arma Checkpoint
- Arma Pilot
- Arma Night Ops

The images are bundled locally with the application, so themes do not require
an internet connection after installation.


## Final V2 validation

The title bar is set to exactly **REFORGER SERVER TOOL V2**.

Completed checks:

- Python compilation and AST parsing
- MainWindow and required helper methods
- All 15 top navigation tabs and page builders
- Top-tab signal and stacked-page configuration
- Removal of all floating/detached-window code
- Five image-theme mappings and local image assets
- Theme dropdown integration
- PySide6 and psutil requirements
- Windows EXE build script output name

A live Qt launch test could not be run in the packaging environment because
PySide6 is not installed there. The project includes PySide6 in
`requirements.txt`, and `BUILD_EXE.bat` installs the project requirements
before building.
