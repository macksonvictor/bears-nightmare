<div align="center">

![Bear's Nightmare Banner](bear%20art/urso.png)

#  BEAR'S NIGHTMARE

**A nightmare you can't wake up from.**

[![Godot](https://img.shields.io/badge/Godot-4.6.2-478CBF?style=flat-square&logo=godotengine&logoColor=white)](https://godotengine.org)
[![GDScript](https://img.shields.io/badge/GDScript-blue?style=flat-square)](https://docs.godotengine.org/en/stable/tutorials/scripting/gdscript/)
[![Platform](https://img.shields.io/badge/Platform-PC%20%7C%20Mobile-black?style=flat-square)](https://github.com/macksonvictor/bears-nightmare)
[![Rating](https://img.shields.io/badge/Rating-Mature%2017%2B-red?style=flat-square)](https://github.com/macksonvictor/bears-nightmare)
[![Studio](https://img.shields.io/badge/Studio-Tesseract%20Studios-222222?style=flat-square)](https://github.com/macksonvictor)
[![Status](https://img.shields.io/badge/Status-Active%20Development-brightgreen?style=flat-square)](https://github.com/macksonvictor/bears-nightmare)

*A dark pixel art infinite runner where survival means everything.*

[Gameplay](#gameplay) · [Story](#story) · [Features](#features) · [Roadmap](#roadmap) · [Tools](#tools) · [Setup](#setup) · [Team](#team)

---

</div>

## The World

The forest never sleeps.

**Bear's Nightmare** is a dark pixel art infinite runner set in a cursed nocturnal forest — a place where shadows breathe, the ground swallows the slow, and something always hunts from behind.

You are the bear. You don't know why you're running. You just know that if you stop, it's over.

Inspired by the relentless dread of **Little Nightmares**, the pure reflex loop of the **Chrome Dinosaur**, and the aesthetic brutality of classic pixel horror — Bear's Nightmare is built to be felt, not just played.

---

## Story

> *"He was just a bear in a forest. Then the moon turned black. And the forest turned wrong."*

### Act I — The Run *(current build)*
Something woke up in the forest. The bear runs. Logs, rocks, mud pits and darkness stand between him and survival. The creature follows. Always.

### Act II — The Forest Remembers *(Story Mode — coming)*
The forest isn't random. Hidden symbols on trees. Marks on the ground. The bear has been here before. Someone left clues. The nightmare has a beginning — and maybe an end.

### Act III — The Truth *(Story Mode — endgame)*
What is the creature? Why does it never stop? The answer is buried deep in the darkest part of the forest. Finding it will require surviving long enough to look.

---

## Gameplay

### Core Loop
```
Run → Obstacle → Jump or Die → Run Faster → Repeat
```

The bear runs automatically. The player controls only the jump. Simple input. Brutal execution.

### Obstacles
| Obstacle | Behavior |
|---|---|
| 🪵 Fallen Log | Static, low — requires clean jump |
| 🪨 Sharp Rocks | Clustered, unpredictable spacing |
| 💧 Mud Pit | Slows the bear, breaks rhythm |
| 🦇 Flying Creature | Aerial — requires timing, not height |
| 🌑 Shadow Burst | Sudden darkness — visual disruption |

### Difficulty
- Speed increases continuously with distance
- Obstacle frequency scales with score
- No checkpoints. No mercy.

---

## Features

### ✅ Implemented
- Pixel art monochromatic grayscale visual style
- 10-layer parallax background with physically-accurate depth speeds
- Animated bear with run and jump cycles
- Random obstacle spawner (logs + rocks)
- Global atmospheric tone via CanvasModulate
- Dark foreground silhouette layer for cinematic depth
- Original soundtrack (Glitchwood Chase, Moonlit Pixel Hunt)

### 🔨 In Development
- HUD — score counter + heart lives system
- 3-life system with temporary invincibility
- Game Over screen with final score
- Main menu with animated bear loop
- Progressive difficulty scaling

### 📋 Planned
- **Story Mode** — narrative chapters with environmental storytelling
- **Hidden secrets** — symbols, marks and collectibles scattered across runs
- **Mud/swamp mechanic** — ground hazard that slows movement
- **The Creature AI** — visible pursuer that gets closer as score increases
- **Multiple biomes** — Deep Forest → Swamp → Ruins → The Dark
- **Unlockable skins** — cosmetic bear variants
- **Mobile controls** — tap to jump, optimized for portrait
- **CRT shader effect** — scanlines + vignette for retro atmosphere
- **Achievements** — survive X meters, find Y secrets, etc.

---

## The Creature

The entity that follows the bear has no name. No origin explained in Act I.

From the cover art: it crouches low, dark fur, glowing eyes, feral posture. It does not run in a straight line. It learns.

In Story Mode, a second creature appears — smaller, faster, more erratic. A pack. The forest bred them.

The creature is never the obstacle. The creature is the reason the obstacles matter.

---

## Visual Direction

| Aspect | Direction |
|---|---|
| Palette | Monochromatic grayscale — 5 tones max |
| Style | Pixel art — refined, not retro-casual |
| Atmosphere | Little Nightmares × Limbo × classic Game Boy horror |
| Resolution | 480×270 native, upscaled |
| Tone | Dark, tense, cinematic |
| Rating | Mature 17+ |
| Reference | Chrome Dino for loop · Little Nightmares for dread |

---

## Roadmap

```
PHASE 1 — Playable Core (current)
├── ✅ Parallax background — 10 layers
├── ✅ Bear animations (run + jump)
├── ✅ Obstacle spawner
├── ✅ Original soundtrack
├── ⬜ HUD (score + lives)
├── ⬜ 3-life system
├── ⬜ Game Over screen
└── ⬜ Main menu

PHASE 2 — Full Runner (next weeks)
├── ⬜ Progressive difficulty
├── ⬜ Mud pit mechanic
├── ⬜ Flying obstacle
├── ⬜ The Creature visible on screen
├── ⬜ CRT shader
├── ⬜ High score persistence
└── ⬜ Mobile build (Android)

PHASE 3 — Story Mode
├── ⬜ Environmental storytelling layer
├── ⬜ Hidden collectibles system
├── ⬜ Narrative chapters (Act I → III)
├── ⬜ Unlockable content
└── ⬜ Multiple biomes

PHASE 4 — Launch
├── ⬜ Windows + Android export
├── ⬜ Web demo (itch.io)
├── ⬜ Trailer
├── ⬜ itch.io page
├── ⬜ Steam page (TBD)
└── ⬜ Marketing push (Reddit, Twitter, TikTok)
```

---

## Tools

### Engine & Code
| Tool | Use | Link |
|---|---|---|
| **Godot Engine 4.6** | Game engine | [godotengine.org](https://godotengine.org) |
| **GDScript** | Game logic | [docs.godotengine.org](https://docs.godotengine.org) |

### Pixel Art
| Tool | Use | Link |
|---|---|---|
| **Piskel** | Bear + obstacle sprites animation | [piskelapp.com](https://www.piskelapp.com) |
| **PixelLab** | Background assets + environment art | [pixellab.ai](https://www.pixellab.ai) |
| **Aseprite** ⭐ | Professional pixel art editor (recommended upgrade) | [aseprite.org](https://www.aseprite.org) |
| **Libresprite** | Free Aseprite alternative | [libresprite.github.io](https://libresprite.github.io) |

### AI Art Generation
| Tool | Use | Link |
|---|---|---|
| **ChatGPT (DALL-E)** | Concept art + background generation | [chat.openai.com](https://chat.openai.com) |
| **Gemini** | Mockups + visual references | [gemini.google.com](https://gemini.google.com) |

### Animation & VFX
| Tool | Use | Link |
|---|---|---|
| **Rive** ⭐ | Character animation + UI animations (planned) | [rive.app](https://rive.app) |
| **LottieFiles** | Lightweight UI animations | [lottiefiles.com](https://lottiefiles.com) |

### Audio
| Tool | Use | Link |
|---|---|---|
| **Suno** | AI music generation | [suno.ai](https://suno.ai) |
| **Audacity** | Audio editing + loop creation | [audacityteam.org](https://www.audacityteam.org) |
| **sfxr / jsfxr** ⭐ | Pixel art sound effects generator | [sfxr.me](https://sfxr.me) |

### Workflow & Collaboration
| Tool | Use | Link |
|---|---|---|
| **GitHub** | Version control + collaboration | [github.com](https://github.com) |
| **Slack** | Team communication | [slack.com](https://slack.com) |
| **Notion** | Game design document | [notion.so](https://notion.so) |
| **Typefully** | Social media scheduling | [typefully.com](https://typefully.com) |

---

## Setup

### Requirements
- Godot Engine 4.6.2 stable

### Clone & Run
```bash
git clone https://github.com/macksonvictor/bears-nightmare.git
```

1. Open Godot Engine 4.6
2. **Import** → navigate to cloned folder
3. Open `project.godot`
4. Press **F5** to run

### Controls
| Key | Action |
|---|---|
| `SPACE` / `↑` / `TAP` | Jump |
| `P` | Pause *(coming)* |
| `R` | Restart *(coming)* |

---

## Project Structure

```
bears-nightmare/
├── bear art/
│   ├── bear jump/       # 9-frame jump animation
│   └── bear run/        # 4-frame run animation
├── obstacle art/        # log + rock sprites
├── world art/           # all environment assets
│   ├── arvores/         # tree variants
│   ├── pedras/          # rock variants
│   └── world/           # background layer art
├── audio/
│   ├── Glitchwood Chase.mp3       # main gameplay theme
│   ├── Moonlit Pixel Hunt.mp3     # menu / alternate theme
│   └── sound opcionl.mp3          # sfx candidate
├── addons/
│   └── godot-git-plugin/
├── bear.gd / bear.tscn
├── log_obstacle.gd / log_obstacle.tscn
├── rock_obstacle_1.tscn
├── rock_obstacle_2.tscn
├── world.gd / world.tscn
└── project.godot
```

---

## Contributing

```bash
git checkout -b feature/your-feature-name
git commit -m "feat: description"
git push origin feature/your-feature-name
# Open a Pull Request
```

### Commit convention
| Prefix | Use |
|---|---|
| `feat:` | New feature |
| `fix:` | Bug fix |
| `assets:` | Art / audio files |
| `docs:` | Documentation |
| `refactor:` | Code refactor |

---

## Team

**Tesseract Studios**

| Name | Role |
|---|---|
| Mackson | Lead Developer · Game Designer · Art Director |
| *(coming soon)* | Programmer |
| *(coming soon)* | Pixel Artist |
| *(coming soon)* | Sound Designer |

---

## License

Proprietary — All rights reserved.
© 2026 Tesseract Studios

---

<div align="center">

**Bear's Nightmare** · Developed by Tesseract Studios

*The forest never sleeps. Neither should you.*

[![GitHub](https://img.shields.io/badge/GitHub-macksonvictor-black?style=flat-square&logo=github)](https://github.com/macksonvictor/bears-nightmare)

</div>
