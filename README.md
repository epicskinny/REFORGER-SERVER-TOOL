<img width="1730" height="1161" alt="Screenshot 2026-07-31 022113" src="https://github.com/user-attachments/assets/da0fb66e-bfb3-422f-9fa4-b92a292465cd" />
<img width="1552" height="972" alt="Screenshot 2026-07-31 022048" src="https://github.com/user-attachments/assets/1968d297-65bd-4a1b-b81c-1ee207d26ab3" />
<img width="1552" height="972" alt="Screenshot 2026-07-31 022027" src="https://github.com/user-attachments/assets/ab884789-8f52-406f-b094-44a165a53257" />

# REFORGER SERVER TOOL

A desktop management application for **Arma Reforger Dedicated Servers**
inspired by the Longbow workflow while providing an expanded interface
for server administration, mod management, configuration editing, and
deployment.

------------------------------------------------------------------------

# Current Version

**Version:** 1.8

------------------------------------------------------------------------

# Features

## Server Management

-   Install and update Arma Reforger Dedicated Server
-   Start, Stop, Restart and Force Kill server
-   Open server folder
-   Live console
-   Longbow-compatible launch process
-   Automatic server.json generation
-   Automatic server validation for current Reforger versions

------------------------------------------------------------------------

## Configuration

-   Full server.json editor
-   Visual configuration pages
-   Raw JSON editor
-   Import existing server.json
-   Save profiles
-   Automatic config repair
-   Reforger 1.7+ compatible JSON generation

------------------------------------------------------------------------

## Mods

-   Manual Workshop mod management
-   Import mods from server.json
-   Mods table automatically synchronizes with JSON
-   Dedicated Mods JSON editor
-   Supports:
    -   modId
    -   modID
    -   id
    -   workshopId
-   Duplicate mod detection
-   Manual drag/order support
-   Manual mod editing

### Auto Update Mods (New)

When enabled:

-   Removes every `"version"` field
-   Generates unpinned Workshop mods
-   Always downloads the newest available version
-   Applies to:
    -   Mods table
    -   Mods JSON editor
    -   Imported configs
    -   Generated server.json

------------------------------------------------------------------------

## Scenarios (New)

The Scenario page now includes a scenario browser.

Features:

-   Scan installed mods
-   Detect scenario resource IDs
-   Dropdown list of detected scenarios
-   Apply selected scenario automatically
-   Includes common vanilla scenarios
-   Searches downloaded addon metadata
-   Reads scenario references from mod JSON

Supported JSON fields:

-   scenarioId
-   scenario
-   scenarios
-   missions
-   missionIds

------------------------------------------------------------------------

## Theme System

Top-right theme selector.

Available themes:

-   Reforger
-   Dark
-   Blue
-   Red
-   Light

Theme selection is automatically saved.

------------------------------------------------------------------------

# Recent Updates

## Version 1.8

### Added

-   Mod Scenario dropdown
-   Scan Mod Scenarios
-   Apply Selected Scenario button
-   Auto Update Mods
-   Automatic removal of pinned mod versions

------------------------------------------------------------------------

## Version 1.7

### Added

-   Automatic Workshop version removal
-   Auto Update Mods option
-   Remember Auto Update preference

------------------------------------------------------------------------

## Version 1.6

### Fixed

-   Startup crash caused by missing QSizePolicy import
-   Theme selector startup issue
-   Mods JSON editor startup issue

------------------------------------------------------------------------

## Version 1.5

### Added

-   Dedicated Mods JSON Editor
-   Apply Mods JSON directly into server.json
-   Refresh Mods JSON from table
-   JSON formatting and validation
-   Table synchronization

------------------------------------------------------------------------

## Version 1.4

### Added

-   Theme selector
-   Persistent themes
-   Five built-in themes

------------------------------------------------------------------------

## Version 1.3

### Added

-   Manual server.json import
-   Manual mod synchronization
-   Automatic Mods page population
-   Better profile loading

------------------------------------------------------------------------

# Roadmap

Planned features:

-   Steam Workshop browser
-   Automatic Workshop downloads
-   Server browser
-   One-click mod collection import
-   Mission browser with previews
-   Preset manager
-   Automatic backup scheduler
-   Plugin support 
-   RCON console
-   Performance graphs
-   Server monitoring
-   Remote management
-   Automatic update checker

------------------------------------------------------------------------

# Requirements

-   Windows 10/11
-   Python 3.11+ (source)
-   Built executable (recommended)
-   SteamCMD
-   Arma Reforger Dedicated Server

------------------------------------------------------------------------

# Credits

Designed for the Arma Reforger community.

Built to simplify dedicated server management while remaining compatible
with modern Reforger server builds.
