============================
🧪 SCIENCE LAB TILESET v1.0
============================

Created by: Pixels On Ultra
License: Royalty-Free for Commercial & Personal Use

🔬 ABOUT THIS PACK:
A pixel-art science lab in a 3/4 top-down view, built on a 16x16 grid.
Everything you need to build a whole research facility: a chemistry and biology lab with
modular lab benches and fume hoods, a physics lab with tesla coils, control consoles and a
particle ring, a containment wing with an airlock and creature pods, and an office with a
server room.
The lab is full of moving parts: a bunsen burner that lights with a flickering blue flame,
flasks that boil and steam, a distillation rig that drips, a centrifuge that spins up and
beeps done, a dripping sink, a fume hood with swirling vapour, a jellyfish specimen tank,
containment pods whose creature wakes and flashes an alert, a decontamination shower, tesla
coils that spit arcs, a capacitor bank that charges and discharges, an oscilloscope, blinking
control panels, a particle racing around an accelerator ring, a plasma globe, a lab mouse in
its wheel, a robotic sample arm, a sample fridge, a hologram projector, a research computer
turning a molecule model, server racks, a hazard-striped airlock, a keycard door, a rotating
alarm beacon, a wall data monitor, a ticking clock and a flickering tube light.
The pack includes one autotiling wall set, five floor materials with trims, decals and
27 animated pieces.

🎨 5 STYLES:
- Style 1, School Science Room: a cheerful school science classroom with cream block walls, butter-yellow tile, apple-green trim, grey-topped benches on oak cabinets and wooden stools
- Style 2, University Research Lab: a bright university research lab with white block walls, mint glazed tile, black epoxy benchtops and a clean science-teal accent
- Style 3, Biotech Cleanroom: a gleaming biotech cleanroom with gloss-white wall panels, pale blue tile, white epoxy floors, solid white benchtops and an electric-blue accent
- Style 4, Secret Underground Lab: a hidden lab deep underground with riveted concrete walls, dark steel, hazard-striped trim, a toxic-green accent and glowing caverns where the windows should be
- Style 5, Containment Breach: the research lab gone dark during a breach, washed in red emergency light with only screens, alarms, glowing tanks and sparking machines still burning bright

Every style uses the exact same tile layout and file names, so a game can restyle a whole
facility just by swapping the tilesheet: start in a school science room, move up to a
university lab or a biotech cleanroom, hide away in a secret underground lab, or switch
everything to Containment Breach when the alarms go off.

Each style contains 353 pieces:
- 57 wall tiles: a complete 47-piece autotile set with alternates and lower rows
  (with end pieces and alternates) that make every wall 2 tiles tall
- 13 floor tiles across 5 materials (office carpet, speckled lab tile, epoxy,
  diamond plate and a raised server floor), including stain and scuff extras
- 75 edge overlays for where two floor materials meet
- 3 soft contact-shadow overlays for floor under walls
- 72 lab benches, consoles, desks, glass walls, seating, equipment, storage,
  windows, wall decor and signs
- 13 transparent decals
- 27 animated pieces (120 animation frames)

Everything comes at 1x (16px), 2x (32px), 4x (64px), as single PNGs and as ready-to-slice tilesheets,
plus a Tiled tileset with autotile rules and a fully built sample lab for every style.

📁 INCLUDED FOLDERS:
One folder per style:
- School_Science_Room/
- University_Research_Lab/
- Biotech_Cleanroom/
- Secret_Underground_Lab/
- Containment_Breach/

Inside each style folder (example: School_Science_Room/):
- tilesets/
  └─ One sheet per size with every piece (16 columns, no padding or spacing),
     e.g. school_science_tileset_1x.png. The 1x sheet is 256x912px.
     Multi-tile pieces sit assembled on the sheet, so you can select one as a single stamp.
- tiles/
  └─ Every piece as its own PNG, sorted by size, then by type:
     walls/  floors/  floor_trim/  shadows/  benches/  consoles/  desks/  partitions/
     seating/  equipment/  storage/  decor/  windows/  wall_decor/  signs/  decals/
     animated/
     Multi-tile pieces are saved whole (the 3x2 particle ring is a single PNG, 3x2 tiles
     in size). Each animation also has a strip image in animated/
     (e.g. bunsen_burner_strip_1x.png) with its frames side by side.
- tiled/
  └─ The style's .tsx tileset and sample_lab.tmx, a complete sample lab
- data/
  └─ A .json file with every piece's name, sheet position, size, layer, the tile ids
     of multi-tile pieces, wall connections and all animation frames, states and timing

- preview/ (top level)
  └─ Preview images and animated previews for all 5 styles

📐 FILE DETAILS:
- Format: PNG (transparent background)
- Tile size: 16x16px at 1x, also provided at 2x and 4x
- Style: 16-bit pixel art, 3/4 top-down view
- Pixel-perfect: every size is scaled by whole numbers, so edges stay crisp

🧱 HOW THE WALLS CONNECT:
There is one wall set, lab_wall. Each tile is named after the neighbours that are
also wall: N, E, S, W for the sides and NE, SE, SW, NW for the corners.

  lab_wall_all               wall on every side (the top of a thick wall)
  lab_wall_none              a single free-standing block
  lab_wall_N_E_W_NE_NW       a straight wall with its face showing

- Any tile whose name has no S (apart from the _all tiles and their alternates)
  shows its face, because the space below it is open.
- A corner only counts when both sides next to it are wall.
- Files ending in _alt1 / _alt2 are drop-in replacements for the same spot.
- Lower row: paint lab_wall_lower in the row directly under a wall face to make the
  wall 2 tiles tall. Use _end_W / _end_E where it stops beside open floor, and _single
  for a 1-tile-wide piece.
- Windows, the airlock door and the keycard door sit across the wall face and its lower
  row (the WallDecor layer). Signs, posters, screens, lights and the clock sit on the
  wall face row.

🟫 FLOORS:
- carpet: carpet_01, carpet_02, carpet_stain
- vct: vct_01, vct_02, vct_scuff
- epoxy: epoxy_01, epoxy_02, epoxy_stain
- plate: plate_01, plate_02
- raised: raised_01, raised_02
- The extras are rare: sprinkle them in sparingly.
- floor_trim_<set>_<sides> goes on the higher-ranked material where two materials meet.
  Rank, low to high: carpet, lab tile, epoxy, diamond plate, raised floor.
- The sample maps already have every edge piece in place. In your own maps, paint the
  matching floor_trim tile on the FloorTrim layer (its name tells you which sides it
  covers).

🧪 LAB PIECES:
Pieces by area (multi-tile pieces sit assembled on the sheet):
- Lab benches (1x2, modular): lab_bench_W, then any mix of lab_bench_a / _b / _c / _mid / _scope and the animated bench stations, then lab_bench_E. _a holds a test-tube rack, _b a beaker and a flask, _c reagent bottles, _mid a graph and goggles, _scope a microscope. The animated bunsen_burner, bubbling_flask, distillation_rig, centrifuge, lab_sink, plasma_globe, mouse_cage and robot_arm all stand on the same bench top
- Control consoles (1x2, modular): control_console_W, then any mix of control_console_mid / _lever and the animated console_scope and console_buttons, then control_console_E
- Office desks (1x2, modular): desk_W, desk_a / _b / _c / _mid and the animated research_pc, then desk_E
- Glass walls (1x1, autotiling): glass_partition_<sides> joins to its neighbours like a fence. N, E, S and W in the name are the sides it connects to, and glass_partition_post stands alone
- Seating: lab_stool and office_chair_N / _S / _E / _W (1x1, facing north, south, east or west)
- Equipment: glove_box (2x2), gas_cylinders (1x2), lab_cart and biohazard_bin (1x1)
- Storage: filing_cabinet_closed / _open and flammables_cabinet (1x2), bookcase and supply_shelf (2x2)
- Decor: plant and lab_coat_rack (1x2), trash_can_grey / _recycle (1x1)
- Windows (WallDecor layer, 1x2): lab_window_W, then lab_window_a / _b / _c (the view changes, including an observatory dome), then lab_window_E, to build a window of any width
- Wall decor (WallDecor layer): poster_atom / _dna / _goggles / _flask, eyewash_station, first_aid and fire_extinguisher (1x1), periodic_table, whiteboard and chem_shelf (2x1)
- Signs (WallDecor layer): hazard_sign_biohazard / _radiation / _flammable / _laser (1x1), lab_sign and exit_sign (2x1)
- Animated pieces on walls and floors: airlock_door (2x2), keycard_door (1x2), tube_light and wall_monitor (2x1), alarm_beacon and wall_clock (1x1) go on the WallDecor layer; fume_hood and capacitor_bank are 2x2, particle_ring is 3x2, and specimen_tank, containment_pod, decon_shower, tesla_coil, sample_fridge, hologram_projector and server_rack are 1x2
- Lab benches, consoles and desks are modular: lay a W piece, any mix of the middle
  pieces and the animated stations, then an E piece.
- Tall pieces (fume hoods, tanks, pods, racks, fridges, cabinets) can stand on the lower
  wall row so they sit back against the wall.
- The airlock door goes in the wall between two rooms: put the decon shower and hazard
  tape on one side and the containment pods on the other.

🎬 ANIMATED PIECES:
Every animation plays at 8 frames per second (125 ms per frame).
Each one is a set of frames grouped into states, so your game can show the right
state (for example "burning" for the bunsen burner or "alert" for a containment pod):

- Bunsen burner (bunsen_burner_off to bunsen_burner_flame3, 4 frames, 24-frame loop): a bunsen burner under a tripod sits cold, then lights with a flickering blue flame that sets the beaker above bubbling
    off: bunsen_burner_off | burning: bunsen_burner_flame1, bunsen_burner_flame2, bunsen_burner_flame3
- Bubbling flask on a hot plate (bubbling_flask_f0 to bubbling_flask_f3, 4 frames, 8-frame loop): a flask of green solution boils on a hot plate, bubbles rising through it while wisps of vapour curl out of the neck
    boiling: bubbling_flask_f0, bubbling_flask_f1, bubbling_flask_f2, bubbling_flask_f3
- Distillation rig (distillation_rig_f0 to distillation_rig_f3, 4 frames, 8-frame loop): purple liquid simmers in a round flask over a heating mantle, the vapour runs down the glass condenser and drips into the collecting flask one drop at a time
    distilling: distillation_rig_f0, distillation_rig_f1, distillation_rig_f2, distillation_rig_f3
- Centrifuge (centrifuge_idle to centrifuge_done, 5 frames, 48-frame loop): the benchtop centrifuge spins up, its rotor blurring behind the lid window while the amber light is on, then stops and flashes a green done light
    idle: centrifuge_idle | spinning: centrifuge_spin1, centrifuge_spin2, centrifuge_spin3 | done: centrifuge_done
- Lab sink (lab_sink_still to lab_sink_splash, 4 frames, 8-frame loop): the tall gooseneck tap of the lab sink drips, each drop falling and splashing in the steel basin
    still: lab_sink_still | drip: lab_sink_drip1, lab_sink_drip2, lab_sink_splash
- Fume hood (fume_hood_f0 to fume_hood_f3, 4 frames, 8-frame loop): behind the raised glass sash a flask simmers and green vapour swirls up into the extraction vent while the airflow monitor glows green
    venting: fume_hood_f0, fume_hood_f1, fume_hood_f2, fume_hood_f3
- Specimen tank (specimen_tank_f0 to specimen_tank_f3, 4 frames, 12-frame loop): a glass tank of green culture fluid where a pink jellyfish-like specimen pulses and drifts while bubbles rise past it
    drifting: specimen_tank_f0, specimen_tank_f1, specimen_tank_f2, specimen_tank_f3
- Containment pod (containment_pod_calm1 to containment_pod_alert2, 6 frames, 48-frame loop): a tall glass pod of glowing fluid holds a curled creature: bubbles drift up while the status lights tick green, until its eye snaps open, the fluid flushes red and the base lights flash an alert
    calm: containment_pod_calm1, containment_pod_calm2, containment_pod_calm3, containment_pod_calm4 | alert: containment_pod_alert, containment_pod_alert2
- Decontamination shower (decon_shower_off to decon_shower_spray3, 4 frames, 24-frame loop): a walk-through decontamination frame that stands dry, then sprays a fine mist down onto the drain grate
    off: decon_shower_off | spraying: decon_shower_spray1, decon_shower_spray2, decon_shower_spray3
- Tesla coil (tesla_coil_idle to tesla_coil_arc3, 4 frames, 24-frame loop): a copper-wound tesla coil hums quietly, then its steel crown spits crackling blue arcs in every direction
    idle: tesla_coil_idle | arcing: tesla_coil_arc1, tesla_coil_arc2, tesla_coil_arc3
- Capacitor bank (capacitor_bank_charge1 to capacitor_bank_discharge, 6 frames, 24-frame loop): the charge meter climbs bar by bar from green through amber to red, the warning lamp lights, and the bank discharges with arcs jumping between the terminals
    charging: capacitor_bank_charge1, capacitor_bank_charge2, capacitor_bank_charge3, capacitor_bank_charge4 | charged: capacitor_bank_full | discharge: capacitor_bank_discharge
- Oscilloscope console (console_scope_f0 to console_scope_f3, 4 frames, 4-frame loop): a console oscilloscope traces a glowing sine wave that rolls continuously across its green grid
    tracing: console_scope_f0, console_scope_f1, console_scope_f2, console_scope_f3
- Blinking control panel (console_buttons_f0 to console_buttons_f3, 4 frames, 12-frame loop): rows of indicator lamps on the control console blink on and off in shifting patterns
    running: console_buttons_f0, console_buttons_f1, console_buttons_f2, console_buttons_f3
- Particle ring (particle_ring_f0 to particle_ring_f7, 8 frames, 8-frame loop): a glowing particle races around the glass accelerator ring, past the four red focusing magnets, with a short trail behind it
    running: particle_ring_f0, particle_ring_f1, particle_ring_f2, particle_ring_f3, particle_ring_f4, particle_ring_f5, particle_ring_f6, particle_ring_f7
- Research computer (research_pc_f0 to research_pc_f3, 4 frames, 12-frame loop): a researcher's monitor turns a ball-and-stick molecule model round and round while the render bar fills along the bottom
    modelling: research_pc_f0, research_pc_f1, research_pc_f2, research_pc_f3
- Server rack (server_rack_f0 to server_rack_f3, 4 frames, 8-frame loop): a lab data server humming away with rows of status lights blinking in shifting patterns
    running: server_rack_f0, server_rack_f1, server_rack_f2, server_rack_f3
- Airlock door (airlock_door_closed to airlock_door_open, 4 frames, 24-frame loop): the heavy hazard-striped airlock doors slide apart under a flashing amber lamp, hold open with a green lamp, then grind shut again and lock red
    closed: airlock_door_closed | opening: airlock_door_opening, airlock_door_wide | open: airlock_door_open | closing: airlock_door_wide, airlock_door_opening
- Keycard door (keycard_door_locked to keycard_door_open, 4 frames, 24-frame loop): a security door with a card reader: the light blinks from red to green as a card is swiped, the door slides open, waits, and slides shut and locks
    locked: keycard_door_locked | granted: keycard_door_granted | opening: keycard_door_opening | open: keycard_door_open | closing: keycard_door_opening
- Rotating alarm beacon (alarm_beacon_r0 to alarm_beacon_off, 4 frames, 4-frame loop): a red wall beacon whose reflector sweeps round, throwing a pulsing red glow across the wall
    off: alarm_beacon_off | rotating: alarm_beacon_r0, alarm_beacon_r1, alarm_beacon_r2, alarm_beacon_off
- Fluorescent wall light (tube_light_on to tube_light_off, 3 frames, 24-frame loop): a wall-mounted lab tube light that hums steadily, then stutters and flickers before catching again
    on: tube_light_on | flicker: tube_light_off, tube_light_on, tube_light_off, tube_light_dim | off: tube_light_off
- Wall data monitor (wall_monitor_f0 to wall_monitor_f3, 4 frames, 12-frame loop): a wall screen streams a live sensor trace while the pH reading beside it drifts between 7.2 and 7.4
    live: wall_monitor_f0, wall_monitor_f1, wall_monitor_f2, wall_monitor_f3
- Sample fridge (sample_fridge_closed to sample_fridge_mist, 4 frames, 24-frame loop): a glass-door sample fridge full of coloured vials: the door swings open, cold mist rolls out across the floor, then it closes again
    closed: sample_fridge_closed | ajar: sample_fridge_ajar | open: sample_fridge_open, sample_fridge_mist
- Hologram projector (hologram_projector_f0 to hologram_projector_f3, 4 frames, 8-frame loop): a pedestal projector beams up a translucent cyan DNA helix that turns slowly in the light
    projecting: hologram_projector_f0, hologram_projector_f1, hologram_projector_f2, hologram_projector_f3
- Plasma globe (plasma_globe_f0 to plasma_globe_f3, 4 frames, 8-frame loop): purple lightning tendrils crawl from the bright core of a plasma globe to its glass, jumping to a new spot every moment
    crackling: plasma_globe_f0, plasma_globe_f1, plasma_globe_f2, plasma_globe_f3
- Lab mouse cage (mouse_cage_f0 to mouse_cage_f3, 4 frames, 8-frame loop): a little white lab mouse sprints in its exercise wheel, the spokes blurring round, next to its water bottle
    running: mouse_cage_f0, mouse_cage_f1, mouse_cage_f2, mouse_cage_f3
- Robotic sample arm (robot_arm_pick to robot_arm_place, 4 frames, 12-frame loop): an orange benchtop robot arm picks a vial from the tray, lifts it, swings across and sets it down in the rack
    working: robot_arm_pick, robot_arm_lift, robot_arm_swing, robot_arm_place
- Wall clock (wall_clock_s0 to wall_clock_s7, 8 frames, 48-frame loop): the lab clock's red second hand ticks around the dial
    ticking: wall_clock_s0, wall_clock_s1, wall_clock_s2, wall_clock_s3, wall_clock_s4, wall_clock_s5, wall_clock_s6, wall_clock_s7

- Every loop is 4, 8, 12, 24 or 48 frames long, so everything lines up every 48 frames
  (6 seconds).
- Tiled: already set up. Open <Style>/tiled/sample_lab.tmx and everything animates in the
  editor. Any animated piece you place from the tileset animates too. To show a fixed
  state (such as a cold burner or a closed airlock), place that frame's tile instead of
  the first frame.
- Godot 4: add an AnimatedSprite2D, create SpriteFrames, choose "Add frames from
  sprite sheet", pick the item's strip from tiles/<size>/animated/ and set Horizontal
  to the frame count and Vertical to 1. Make one animation per state using the frame
  lists above, set the speed to 8 FPS and turn on Loop for looping states.
- Unity: set the strip's Sprite Mode to Multiple, slice it with Grid By Cell Size using
  the item's size (e.g. 32x32 for the 2x2 fume hood at 1x), then drag the frames
  for each state into the scene. Unity creates the clip for you. Set its Sample Rate
  to 8.
- GameMaker: create a sprite, choose Import Strip Image, set the number of frames and
  the frame size from the item, then set the sprite speed to 8 frames per second.
- The .json file in each <Style>/data/ folder lists the same frames and states, so you
  can read them from code.

⏱️ CHANGING THE SPEED:
Every animation can run at any speed you like.
- Tiled: open the .tsx, select the animated tile, open the Tile Animation Editor and
  change the duration of each frame (125 ms by default).
- Godot 4: change the animation's Speed (FPS) in SpriteFrames, or set speed_scale on
  the AnimatedSprite2D.
- Unity: change the clip's Sample Rate, or the Animator state's Speed.
- GameMaker: change the sprite speed in the Sprite Editor, or image_speed in code.
- Code: the frames are listed in the .json data, so you can play them at any rate.

📄 DECALS:
chem_spill_green, chem_spill_blue, broken_glass, papers, hazard_tape_h, hazard_tape_v, floor_drain, glowing_footprints_a, glowing_footprints_b, scorch_mark, cable_run_h, cable_run_v, dropped_vials
These are transparent, so they can go on any floor tile in any style. Put them on
their own layer above the floor. hazard_tape_h / _v and cable_run_h / _v join up into
lines of any length.

💡 TIPS:
- Layer order, bottom to top: Floor, FloorTrim, Shadows, Decals, Walls, WallDecor, Furniture, Top.
- Frame a room with walls 2 rows thick at the top: the upper row shows the wall top
  and the lower row shows the wall face. Then add the lower wall row under it.
- Pieces are drawn facing down the screen, so leave walking room below them.
- Turn off texture filtering in your engine (Nearest / Point / Filter: Off) so
  the pixels stay sharp. At 1x, use 16 pixels per unit.
- Tiled: to paint your own walls, pick the Terrain Brush, choose "Lab Walls" and
  draw. Alternates are picked at random as you paint.
- Any engine: import a sheet from <Style>/tilesets/ and slice it into 16x16 cells
  at 1x (twice that at 2x, four times at 4x).

✅ LICENSE:
You are free to use these assets in:
- Commercial games
- Free or personal projects
- Game jams and prototypes
- Mods
- Trailers, screenshots, devlogs and store pages for your project

You may also edit, recolour and combine them with your own artwork.

❌ You may NOT:
- Resell, redistribute, or repackage these assets as-is or edited
- Include them in other asset packs, templates or marketplaces
- Use them in AI training datasets
- Use them as a logo or trademark

🎨 Credit is appreciated but not required.
If you share your project in the comments, I'd love to see it!
Full license terms are in LICENSE.txt.

📬 CONTACT:
Have questions or want to commission custom tilesets or pixel art assets?
Leave a comment on this pack's page on itch.io, and I'll get back to you.
More packs: https://pixelsonultra.itch.io

Enjoy and happy developing!
– Pixels On Ultra
