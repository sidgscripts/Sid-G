Floating Holograms - FiveM resource

==================================
          Developer

          | Sid G |
==================================
          Discord
     
    discord.gg/3Uc9MvjeMb
==================================


Install

1\. Put the folder `floating\_holograms` into your server's resources directory.

2\. Add `ensure floating\_holograms` to your server.cfg (or start it via console).

3\. Start the server and visit the coords listed in config.lua to see holograms.



Config

\- Edit `config.lua` to add/remove hologram entries.

\- `coords` must be a `vector3(x,y,z)`.

\- `label` supports `\\n` for new lines.

\- Tweak `scale`, `distance`, `r,g,b,a` for behaviour/appearance.

\- `bob` enables a subtle floating up/down motion.


-----------------------------------------------------------

color letters

| Code  | Color            | Example Text       |
| ----- | ---------------- | ------------------ |
| `~r~` | Red              | `~r~Red Text`      |
| `~g~` | Green            | `~g~Green Text`    |
| `~b~` | Blue             | `~b~Blue Text`     |
| `~y~` | Yellow           | `~y~Yellow Text`   |
| `~w~` | White            | `~w~White Text`    |
| `~s~` | Reset to default | `~r~Red~s~ Normal` |

------------------------------------------------------------


# Floating Holograms (Standalone FiveM Script)

A lightweight, standalone FiveM script that lets you display **floating 3D text (holograms)** anywhere on the map.  
Fully configurable — add unlimited messages, set coordinates, colors, sizes, and optional bobbing animation.

---

## ?? Features
- Works **standalone** (no framework required)
- Add **unlimited holograms** across the map
- Adjustable distance, color, scale, and font
- Optional floating / bobbing animation
- Supports multiple text lines (`\n`)
- Text color codes supported (`~r~`, `~g~`, `~b~`, etc.)

---

## ?? Installation

1. Download or copy the `floating_holograms` folder into your FiveM server’s `resources` directory.
2. Add this line to your `server.cfg`:


