# Infinite-Ikea-Prototyping
Developing an infinitely generating tile-based dungeon.

Development is still in the prototype stage, so tiles use temporary structures and grid size is small.

---

## V4.1 - Added 1x2 & 1x3 tile types
- About 30mins each to add. Made easier by the modular nature of the system.

### Examples

(Emerald block represents relative bottom-left for tile structure.)

#### Example 1
Type | Weight
---|---
1x1|20
2x2|2
1x2|1
1x3|1

<img src="https://i.imgur.com/dBVaMAD.png" width=630 height=600>

---

## V4.0 - Loot-table-based tile data generation.
- Instantaneous tile generation. 
- Options for a 1x1 or a 2x2 shape.
- Ratio of tile types when generating can be altered.
- Random rotations.
- Tiles always spawn with one part overlapping the source grid square.
- Larger tiles check potential placements to see if they can fit. One is chosen at random. If they can't fit, then they default to a 1x1 tile.
- Tiles spawn triggers in adjacent grid squares. When the player walks around, they trigger these squares to generate another new structure.

### Examples

(Emerald block represents relative bottom-left for tile structure.)

#### Single-tile generation shown in realtime
<img src="https://i.imgur.com/DaiKyBy.gif" width=634 height=600>

#### Multi-tile generation from player walking around
<img src="https://i.imgur.com/UwAAumg.png" width=618 height=600>

---

## TODO
- [x] Add 1x2 & 1x3 tile types.
- [ ] Add a walling system that places walls where there are obstructions (player can manually place obstructions to restrict generation).
- [ ] Add a cosmetic walling system to break up the visual of neverending floor space.
