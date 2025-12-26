Legend:

- Base-game versions are structured like 99r#(b#)
- NTT versions are structured like 100.###

---

# 100r7 (December 2025)
- Fixed a mystery crash on boot if your save file is weird
- Fixed Chicken C not being achievable with Cuz if the black sword is in the 3rd+ slot
- Another tweak for modern rad attraction mode
Happy holidays!

# 100r6 (December 2025)

Rad attraction:
- Classic rad attraction mode is now the default (ID 0 or 1)
- Modern rad attraction mode is now ID 3
- Fixed some modern rad attraction code leaking into classic
- Further fixes for rads getting stuck in modern rad attraction mode
- Pretty much every improvement to modern mode makes it harder to "rad starve" so that's why it's no longer the default

Unlocks:
- YV B-skin condition now correctly considers Cuz; can be awarded retroactively
- Fixed Fish B not counting Cuz and counting secret chars

Custom mode:
- Custom mode with Ultra Start no longer leaves Skeleton without ultra mutations; fixed Skeleton A not accounting for maximum level in custom mode
- `seed.txt` no longer overrides a custom mode's seed
- Storing a "no weapon" in a proto chest in Custom Mode now hands out a rusty revolver

Visuals:
- Fixed display timer counting fractions of seconds incorrectly
- Fixed allies spawned by Rebel ultras not applying C-skin
- Speedrun timer no longer draws over unlock popups
- DAILY/WEEKLY/CUSTOM label on the pause menu no longer draws under the portraits
- Chicken C now uses black feather particles
- Fixed Throne II missing "II" in UA/RU locs

Audio:
- A shot-in-the-dark fix for music randomly stopping mid-level.  
  Believe it or not, but this is pretty hard to re-create on purpose.
- Fixed Lil Hunter music not stopping on one occasion

Settings:
- 21:9 aspect ratio with previously-auto setting will be reset to 4:3 one time not to confuse people
- Weapon/mutation tooltips will be set one time to upgrade u99 settings (where they were off by default)
- Added experiments>show_swap_for_everyone if you'd like those little weapon-ammo popups on other chars and not just Cuz

Misc:
- Fixed the game crashing on main menu if your settings file is sufficiently malformed
- Stripped some unused DLLs from the build

# 100r5 (December 2025)

Gameplay:
- Fixed up explosions to work like they did before
- Some improvements to "modern" rad pathfinding
- Some tweaks to crowns' pathfinding

Unlocks:
- Fixed Ultra Mutant granting if you've locked some crowns/etc. on hidden characters but not all of the base cast
- Horror C unlock condition now matches the unlock hint
- Chicken C unlock now tracks what bosses have been defeated so that you may do funny things
- Fixed Steroids/Rebel C-skins being cut off on the unlock screen
- Fixed character sprite on END1 cutscene being slightly off-center

Custom mode:
- Fixed the game giving you another ultra point in Custom Mode if you started with an ultra

Visuals:
- Fixed Rebel C allies not playing their appearance animation
- Auto Aspect Ratio is now off by default
- "Golden weapon stored" popups no longer show when playing Skeleton or Frog
- Fixed Stalker pellets not getting the C-skin color
- Snipers may no longer aim right between the wall tiles
- Fixed certain boss bullets lacking bloom

Audio:
- Fixed lightning cannon sound persisting if the portal destroys the lightning ball
- Fixed Cuz golden pistol in loadout not playing the golden sound

Cuz:
- Fixed Cuz not being considered for best run on General Stats
- Weapon generation now considers Cuz' extra weapons
- Frog Pistol now considers Cuz extra weapons
- Fixed "Hide HUD" not hiding Cuz extra weapons
- Ammo highlighting in HUD now accounts for Cuz extra weapons
- Trigger Fingers now reloads slightly slower if it is reloading more weapons than usual
- Ammo pickups now get cursed when Cuz has 3+ cursed weapons

Cuz experiments:
- `cuz_swap_mode` 1 now auto-assigns weapon indexes
- Added `cuz_swap_mode` 2, which matches the displayed weapon order to slot order
- Added `cuz_show_swap_for` (time in frames), which briefly shows the new weapon and remaining ammo when swapping weapons as Cuz

Localization:
- ??? is now ??? until further notice
- Fixed big fonts missing a few glyphs for Polish

Localization (text)
- Fixed Strong Spirit desc in Russian
- Tweaked Cuz TB and Stress descriptions in Ukrainian for clarity

# 100r4 (December 2025)

Cuz:
- Fixed it not being possible to pick up a non-cursed weapon as Cuz when your weapon is cursed but you still have 3rd+ weapon slots
- Fixed repeated gold weapon popups when a gold weapon is in Cuz extra slots
- You now only gain tears as Cuz if you took non-zero damage

Cuz experiment:
- Added an experiments > cuz_swap_mode to settings JSON that you can flip to 1 for an alternative swap mode.
- Swap+1..6 sets a hotkey for the weapon slot (e.g. Space+1 on default keybindings)
- 1..6 switches to that slot
- This may get removed later if it doesn't feel good.

Gameplay:
- Fixed Frog being hard to control on >120fps
- Added another safeguard for Frog getting stuck in walls, what a character
- Fixed Cuz' extra weapons not getting un-cursed in vaults
- Crowns no longer behave strangely on >120fps
- Custom Mode mutation choice adjust now works with Destiny
- Fixed Rad Attraction Mode not applying from settings JSON
- Fixed Cuz not being counted for Fish B unlock condition
- 7-3 chests now support the updated Open Mind
- Revive chests now appear on 7-3
- ??? are now slightly rarer, and visibly rarer in the ???. But it is very funny
- Fixed ui.show_user_info option in settings JSON not working

Controls:
- The game now remembers which gamepad you wanted to use when backing out to the menu
- Fixed previous/next keybinds not getting saved to settings JSON
- Fixed mouse wheel directions coming out as just the mousewheel in keybinds

Visual:
- Fixed Chicken C reverting to A skin when re-gaining the head
- Fixed an oddity with YV C Sit sprite
- Some textures have been shuffled to other texture pages as the Default page was starting to run out of space
- Fixed Rebel C allies not having an appearance animation

UI:
- Fixed the coop Custom Mode menu returning you to Play menu instead
- Fixed loadout crowns selecting on gamepad press even if the cursor is in a different area
- Fixed Plant C-skin slightly overlapping the B-skin in loadout
- Sliders may no longer visually overflow when the value is out of bounds
- Volumes are now clamped because negative volume does you no favors
- Timer now draws in base-game font

Text/localization:
- Fixed Custom Mode disclaimer not getting localized after the last change
- Fixed some glyphs not being displayed in localizations (e.g. dash vs em-dash vs en-dash)
- Fixed some localized unlock popups not fitting in the corner of the screen
- Fixed mismatched Custom Mode sub-menu captions
- 

# 100r3 (December 2025)
- Fixed Cuz B hint using the wrong color, and in some languages, wrong font style
- Fixed Cuz/Cuz B achievements not being awarded (will award retroactively)
- Fixed the game not transitioning to 2-x in Custom Mode if you've set the area size higher than 4
- Fixed the game crashing upon entering the main menu if your save file exists and isn't empty, but is filled with 00 bytes instead of save data
- Fixed Horror C unlock *still* being easier than intended\
  There's a secondary issue being that the hint says "with no more than 3 mutations"
  while the unlock says "without reaching level ultra" - we'll fix this later
- Some Ukrainian localization tweaks ft. Ci8ird
- Fixed the game crashing if you perish on the exact frame when Lil Hunter takes off
- Fixed Custom Mode disclaimer not fitting on the screen on English 4:3
- Fixed custom mode loadout showing an empty tooltip if you haven't set weapons/crowns/etc.
- Added a separate HUD tear sprite for Cuz with Back Muscle
- Fixed pickup messages only showing for the first player in coop
- The first LQA line no longer shows a sub-header
- Fixed mutation/crown pickers in Custom Mode not working with gamepads
- Fixed the controls menu drawing off-screen when opened mid-run (*unless your screen is tall enough*)
- Fixed "boss intros" setting not getting saved to .json
- Fixed the Borderless Fullscreen setting not getting applied on game start
- Fixed ammo pickups granting non-random ammo for melee weapons
- Fixed timer/area display options not saving
- Fixed a few cases when Cuz extra weapons weren't being considered:
  - For Trigger Fingers
  - For being reloaded by portals
  - For CCC
  - For gold weapon storing

# 100r2 (December 2025)

- Added a backup unlock check for Cuz\
  There is as of yet no explanation as to why this broke only in release build
- Fixed present ammo chests not playing their "open" sound
- Fixed being able to select C-skins in co-op when you only have a B-skin
- Dog Missile (which is unusable unless you're Big Dog) is no longer on the custom mode weapon picker
- Adjusted unlock conditions for Eyes C and Steroids C to work even if you go beyond the intended spot
- Adjusted unlock condition for Steroid C to allow starting with a golden weapon
- Fixed Eyes C portrait being a little out of frame
- Fixed some sprites (mostly Crystal C) having wrong playback speed
- Rad attraction mode now defaults to Modern, but you can edit it in your `settings.json`
- Horror C no longer unlocks from *observing* the target area instead of going there.

# 100r1 (December 2025)

**Note:** u100 NTT build is coming soon! 

The important:
- New character: Cuz\
  On NTT terms, the character still uses the original placeholder character ID,
  but everything else is new; Cuz can no longer be chosen as a ""C-skin"" for YV in NTT.
- Custom Mode\
  CM allows to adjust a handful of game parameters without modding the game.\
  Mods can change these dynamically using `UberCont.custom` (enable/disable) and `UberCont.customMode` (custom mode struct)
- The game now supports up to 4-player local co-op.\
  Also features improvements to co-op ultra mutations and co-op menus.
- Co-op reviving has been reworked and now works with Revive Chests.\
  In NTT, previous reviving is accessible using `/revmode u99`
- New unlockable C-skins for every character (and new achievements for these).\
  In NTT, this shifts community skins to D-skins where appropriate.
- Localization for 15 languages: English, French, Italian, German, Spanish, Polish, BR Portuguese, Russian, Korean, Simplified Chinese, Traditional Chinese, Japanese, Ukrainian, Turkish, & Dutch\
  Community localizations can also take advantage of new options in lang.ini and support for CSV languages.
- Reworked and re-organized the settings menu.\
  In NTT, new settings can be accessed through the `UberCont.opt` struct.\
  Existing settings are kept as `UberCont.opt_*` for backwards compatibility.
- New side art and a new cursor.
- The game now has a modern Mac version, compatible with Apple Silicon.

Smaller tweaks:
- Buff gators may once again pop out of cocoons, but more occasionally than before
- Open Mind has been buffed a little.
- The game now runs better on Steam Deck.
- The game now works better with gamepads, especially when multiple are connected.
- Added 16:10, 21:9, and automatic aspect ratio options.
- The game now runs at 60 fps by default.

# 100.033 (July 2025)

- Fixed loc() not working right when the string is not in the language

# 99r2b27 (July 2025)

- A few more tweaks to 3d audio; the scripts are now included for reference in this repo.
- Fixed the weapon pickups sometimes rotating in place when there's a bunch of them in one spot.
- Weapon pickups are now less likely to get stuck if they were spawned from a chest next to a wall.
- Weapon pickups now push each other around a tiny bit stronger so that they overlap less.
- Fixed Ultra Mutant achievement not granting on load if you're past 100% completion.

# 100.032 (July 2025)

- Mod scripts can now have optional arguments (`function name(a, b = 1) {}`)
- Fixed `loc` / `loc_set` in mod API

# 99r2b26 (July 2025)

- The game now lags visibly less when the stage has been dug up before a T2 fight.
- And projectiles now disappear _slightly_ earlier when away from the stage.
- Likely fixed weapons getting stuck on walls when being dragged into the portal.
- Fixed a crash when flipping pages on daily/weekly leaderboards.

# 100.031 (June 2025)

- Exposed and documented dp_player_count_active, dp_player_count_sources
- Fixed `ds_list_shuffle`

# 99r2b25 (June 2025)

- I (YAL) now appear on the "Vlambeer & ... present" screen, which might reduce the number of people asking JW to hire me to work on this game despite me working on this game since 2017.
- You can now skip the intro screens by clicking when gamepad controls are enabled.
- The credits screen has been overhauled:
	- YYG Special Thanks pages have been merged into the rest of Special Thanks
	- Special Thanks page now starts partially on-screen so that you can tell that it's not just an empty page
	- You can now scroll the Special Thanks screen with up/down keys
	- Ada (the other half of ThroneButt development team) is now credited
	- lang-example now only includes parts of credits that make sense to localize instead of large blobs of text
- Fixed the game crashing if your Steam avatar is a broken image (??)
- Fixed "(golden weapon) stored!" notifications showing repeatedly.  
  This one's quirky because it would only happen when making a release-mode build with optimizations enabled.
- Fixed the timer not showing on Game Over screen when using the "Both" timer mode
- You can now pick the random crown in loadout (when you have 2+ crowns unlocked)
- Fixed some input oddities with loadout when using gamepad+mouse controls
- Re-generated `lang-example.ini`.  
  The sections are now ordered differently, but the existing localizations will still work.  
  A handful of new "context" comments were introduced.

# 99r2b24 / 100.030 (June 2025)

General:
- Fixed Energy Hammer with Long Arms not breaking the wall in front of the player when aiming diagonally.
- Fixed a crash when loading custom mini-font in localizations
- Fixed Space toggling loadout while chat is open
- Going Melting -> Skeleton -> Melting with Redemption now restores your originally chosen B-skin
- Mode speedrun timer options and better timer drawing in coop

NTT:
- More options for draw_text_nt (see docs)
- Fixed `ds_list_shuffle` not using the usual PRNG
- Fixed `string_auto` having gone missing
- `math_set_epsilon` appears to have never been functional and is now removed to avoid restoring epsilon after mod calls.
- Fixed the game eventually crashing if you load a localization file and then keep switching between main menu and character select
- Fixed the game not handling UTF-8 BOM in some places (mostly in localization files)
- CustomProp now has an `on_draw` callback

# 99r2b23 / 100.029 (June 2025)

- Voting for `/ultras all` + `own` will now pick `own`
- Space is now allowed as "swap" shortcut in menus and hopefully that doesn't break anything
- Even more tweaks for ultra bolts, 30fps-only edition

# 99r2b22 / 100.028 (June 2025)

- Fixed walls on 0-1 not making debris/sounds when destroyed.
- Fixed a few more oddities and edge cases with ultra bolts.
- Added `[Controls] MouseDirect` option to INI for people with cursed computers that stop updating window mouse coordinates sometimes.

# 99r2b21 / 100.027 (June 2025)

- Ultra bolts now dig more predictably, especially in edge case scenarios (diagonal shots, BRRRAP, point-blank shots)
- Added support for `view_xview[ind]`, `map[?ind]`, and `struct[$ key]` to `#pragma fast`
- Big Dog missiles no longer stop firing around L20

# 100.026 (June 2025)

- Fixed a few oddities introduced by refactoring for 100.025
- CustomChest now has a `can_shine` variable.

# 100.025 (June 2025)

Base game:
- Fixed a crash when minimizing the game window in native scale mode
- Fixed the game sometimes crashing on loading screens in coop
- Fixed stats menu buttons not being focusable with mouse (how did this work before)

NTT:
- Fixed method-type custom object callbacks not running correctly
- Added CustomChest
- Skin mods can now define `skin_sound`; more sprites are re-mappable using `skin_sprite`
- Fixed `ds_map_keys_to_array` for real this time
- Added `weapon_pan_factor` callback script for weapons and a `weapon_get_pan_factor` getter function.

# 100.024 (May 2025)

- Fixed the game sometimes crashing on loading screens in hardmode
- Fixed mods misbehaving due to a YYC optimization
- Fixed `surface_create`, `ds_map_keys_to_array`/`ds_map_values_to_array`, `background_color`

# 100.023 (May 2025)

Most of the work behind this update is invisible because I'm updating the scripting system
and migrating documentation [to GitHub](https://yal-game-tools.github.io/bits-of-nuclear-throne/).

Additions:
- Player now has grant_health and grant_ammo methods that you can override in custom races to change how healing/ammo gain work.
(this also eliminates a bit of copy-pasted-but-slightly-different code, e.g. from LilHunter vs enemy)
- Added support for `fast_file`, `not_fast`, and `no_using` pragmas
- Added `char_custom`
- Added `move_and_collide`
- Added `instance_nearest_nonself`
- Added `asset_get_ids`
- There are now `prev`/`next` buttons for polling one direction of mouse wheel

Improvements:
- Legacy `instance_create` now also supports the `?vars` argument
- `player_count_race` now accepts names

Changes:
- `real` and `is_real` now act like in normal GML in V2 mods

Fixes:
- Opening multiple game windows to test multiplayer on same PC is now safer (each gets its own temporary file names)
- Fixed /gmlapi crashing the game _or_ not logging the assets to files
- Fixed `#pragma using` not working for mods that are being loaded together on one frame.
- Fixed string_split_list, which I don't think anyone used for a while now.
- Fixed `mouse_x_nonsync` and `view_xview_nonsync` missing an array specifier
- Fixed NTT add-ons to some functions (like drawing visibility) not applying

# 99r2b21 (May 2025)

This build is unreleased at the time of writing this,
but changes from it are in NTT 100.023 so it kind of needs to be here.
It'll be pushed as soon as it is confirmed that the game doesn't randomly catch fire.

Additions:
- One new Melting loading screen tip
- Anniversary cake returns (on Dec 5 each year)

Fixes:
- Fixed a seemingly-impossible crash with gamepad aiming
- Fixed WaterMine bullets not being affected by Euphoria
- Fixed RoguePickup creating RabbitPaw effect even thought it doesn't do anything for it
- Fixed Tangle briefly panning camera on new throw
- Eating weapons as Robot now doesn't grant health when you have CoLife instead of (incorrectly) CoDeath
- Fixed hyper slugs never resetting their +1 bonus damage
- Health chests created by Regurgitate can no longer break walls
- Allies and Saplings are now affected by Impact Wrists, but you might hardly see a difference
- Fixed type-based `SubAmmo:#` localization key not being supported
- Fixed stick swap on gamepad not swapping the aim stick
- The game _should_ run on Windows 7 again. If it doesn't, please report with error message(s).

# 99r2b20 (February 2025)

Changes:
- I'm doing another experiment with how close-by audio plays, perhaps this one will be true-est to original
- On L6 and later, the game will now slightly simplify how enemies collide with each other and bounce off walls. This brings a minor performance improvement
- Boiling Veins now also applies to player-created flames and flame shells

Fixes:
- Fixed Big Bandit and Hammerhead breaking walls slower than before
- Fixed WantRevivePopoFreak not being destroyed after firing their alarm
- Fixed assassins not playing their "pretend" sound while lying low
- Invalid numbers in weekly JSON should no longer crash the game
- Fixed Rogue normal/TB portal strike sounds being the other way around

# 100.021 (December 2024)

Additions:

- IceFlower now has `feed_cost` and `feed_target` variables.
- Added `object_has_event` for checking what objects have which events.

Fixes:

- Fixed "self is not an instance" popping up when calling specific functions.
- With execution order hopefully back to original, more mods should function normally.

# 99r2b19 (December 2024)

Changes:

- To make the game work closer to how it did before,
  I changed all of the step events to be user events that the game runs from a script.  
  Functionally everything should be working as normal, but let me know if you spot any entities not doing their job.
- Mouse lock now only applies mid-game, not in menus.
- I tried to make the audio work like it did before, but it's still kind of weird,
  so you can now add the following section to NuclearThrone.ini
  ```ini
  [snd_play_hit_big]
  min=320
  max=64000
  cap=320
  ```
  and play around with values.

Fixes:

- NTT-specific documentation no longer ends up in NT builds.
- Clicking during heavy lag should now be buffered.
- "Fish digging" should now be harder to pull off  
  (but the logic stays in case you _really_ get stuck in a wall)

# 99r2b18 / 100.020 (December 2024)

Fixes:

- Custom localizations no longer show "ALWAYS BELIEVE IN YOUR SOUL" in place of many strings
- Fixed weapons playing various ambient sounds instead of their swap sounds
- Fixed a handful of ultra mutations not working correctly
- Fixed character select using the in-game fire/confirm button instead of the fixed one from the menus

# 100.019 (December 2024)

Changes:

- With 2024.11, GM now assigns resource indexes alphabetically, which means that hard-coded resource indexes might no longer behave like they did before.
- As one exception, I gave `Player` a `__PlayerParent` parent object so that you can still do `/gml =0.x` and alike for quick tests.
- If you replace the spiral sprites, the HD spirals (that are used when pixel scale is over 2) are now correctly colored
- Added `key0` input for sake of completeness

# 99r2b17 (December 2024)

Changes:

- Updated to GM IDE v2024.11.0.179 / Runtime v2024.11.0.226!
- New GM version changed how 3d audio works but I _think_ I got it to act the same as before.
- There could be other differences in behaviours, but hopefully not.

General:

- Snowtank laser sights are now also lighter on performance
- Fixed corpses not dealing more damage based on velocity (mostly seen with Impact Wrists), fixed Impact Wrists hits not playing their sound effect

Menus/UI:

- Fixed missing Back button on Coop menu
- Fixed the game taskbar caption flipping between "Nuclear Throne" and "0" if you launch it unfocused
- Incorrect stream key response (TB error?) no longer crashes the game

Controls:

- Fixed the game reverting to keyboard controls when returning to main menu
- Fixed "Press A" on start screen not assigning the gamepad correctly
- Fixed scroll wheel not switching weapons when bound
- Fixed inability to use mouse wheel on char select

## 99r2b16 (July 2024)

- Fixed wrong right/down input on gamepads
- You can now have >100% completion by doing crowns on frog/skeleton
- Fixed native cursor sometimes being a black square on launch
- Added a set of controller button sprites for SteamDeck (only shown on SteamDeck)
- Game now auto-switches input method depending on whether you've clicked the logo or pressed a gamepad button
- Fixed Mansion chest only containing golden screwdrivers
- Rebel B now only puts up the hood in Frozen City (intended behaviour according to JW)
- Probably fixed fish digging
- Sniper laser sights are now lighter on performance

# 99r2b15 (December 2023)

General:

- Fixed (?) a mystery crash when unlocking crowns  
  This is the same kind of thing that was previously causing a crash with ultra mutations and I do not like the implication that it's now unsafe to work with 2d arrays.
- Updated lang-example.ini
- Fixed unlock popups not appearing
- You can now add more tips to categories in the language file and they will be picked up.
- Fixed mismatched tips for two secret areas.

# 99r2b14 (December 2023)

General:

- Fixed a crash when unlocking B-skins
- The player can no longer get stuck while auto-walking during victory sequence
- Fixed the `KeyboardDirect` flag not working
- \[Semi-]secret characters are now consistently shown on Stats screen and can be selected with non-mouse
- Fixed some keys having incorrect display icons
- Fixed the mystery square cursor when playing with gamepad and native cursors enabled
- The game now uses XB1 (instead of XB360) style icons when XBOX style is selected
- Thrown gold weapons now sparkle correctly when localized (and make the gold pickup sound)

Controls:

- The controls menu has received a big overhaul in general
- You can now re-bind most of the alternative controls, and bind two inputs per control in general  
  (pause controls are partially locked to prevent unfortunate situations)
- You can now bind mouse buttons
- The most important keybind is now re-bindable, including on gamepad
- You can now bind movement keys on a gamepad
- Keyboard can now be used in menus even when gamepad is enabled
- Gamepad deadzones are now adjustable
- Gamepad rumble is now adjustable
- There is now an option for 360-degree movement on a gamepad
- There is now an option for aiming with a mouse while using a gamepad
- There is now an option to assign gamepad settings individually for players
- The game is now more consistent about gamepad-specific behaviour when only some players use a gamepad
- Possibly more things I forgot about

# 100.017 / 99r2b13 (December 2023)

General:
- You can no longer change aspect ratio mid-daily/weekly
- You can now enter daily/weekly without changing your aspect ratio to 4:3 by hand
- Necromancers will no longer try to revive things that they cannot revive
- "Hide HUD" no longer disables low health/low ammo cues
- Cars, flowers, and rad canisters no longer spawn on top of other things
- Pizza entrances are now guaranteed to spawn.
- Frog can now start Throne/Captain fights with gas, complete with a little visual effect

NTT:
- Fixed there being an extra GameCont in NTT character select

# 100.016 (December 2023)

General:
- It is now cheaper to destroy walls, both for the game and for the mods.  
  On the technical side, FloorExplos now avoid creating walls on top of other walls
  (which are immediately destroyed), and explosions/portal objects queue walls for destruction
  by UberCont in end step (which further avoids creating instances that would be destroyed right away).

Modding:
- Fixed wrong sound names being reported for external audio files  
  (for `sound_get_name` and `asset_get_index`)
- Laser/lightning sprites now have "rotated rectangle" bounding box type in case you want that instead of the default bounding box
- Fixed an error when using `instance_create` without a struct argument
- Tips are now stored in UberCont.tips, and you can add your own in there.

# 100.015 (December 2023)

General:
- Fixed the Super Blast Armor mystery crash  

Modding:
- Sound functions no longer error when provided a nonexistent sound ID (for consistency with old behaviour)
- Replacing a sprite subimage no longer crashes the game

# 100.014 (November 2023)

General:
- Updated to GameMaker 2023.8
- Fixed some speed checks not respecting time scale
- Fixed titles drawing twice for a few menus
- Blast Armor no longer blows up IDPD nades and yourself
- Pausing the game now pauses the looping sounds (and resumes them afterwards)
- Becoming Skeleton now gives you an extra mutation after Back in Flesh for consistency with old behaviour
- Halloween/xmas now last a little longer
- Halloween/xmas now work in NTT

Modding:
- Fixed a crash when the game duplicates custom enemies on loops
- Fixed instance_nearest_bbox not working
- Fixed replaced music/ambient sounds not taking effect

# 100.013

General:
- Fixed a crash in `scrJoyAim`

Multiplayer:
- Replaced the Steamworks GM extension DLL with a copy that doesn't leak memory every time the game sends a packet

Scripting:
-  GMLv1 macros now _really_ work like they did in past
- Added `instances_matching_range`
- `lq_size` now works with arrays for backwards compatibility
- Setting `maxhealth` on `CustomEnemy` now sets `my_health` again
- `on_hurt` and `on_grenade` callback conversions were being checked for incorrectly.
- Added `CustomObject.sprite_visible` to allow skipping default drawing easier
- Added GC functions (`gc_enable`, etc. - check `/gmlapi`)
- Fixed `CustomSlash` not auto-converting some callbacks like it should
- `variable_*` functions now respect field getters/setters
- `ObjectName.varName` now works like it did before (most notably for setting `GameCont` variables in `game_start`)
- Multi-line race names are now vertically aligned correctly

# 100.012
General:
- Fixed some pop-in issues with textures

Multiplayer:
- Steamworks multiplayer now seems to work again
- Fixed rad attraction not being synced
- Fixed mouse positions inside some menus not being synced

Modding:
- Fixed GMLv1 macros not working like they did before

# 100.011

General:
- Fixed the key name <-> key code related crashes
- Steam multiplayer might work now (but I don't have a setup to test it)  
  There are also changes to how files are sent, which might improve loading times for big packs
- OGG audio files now sit in amb/snd/mus subfolders
- Textures now sit in tex folder instead of being embedded in the executable, making them easier to mod  
  This is also currently causing placeholder textures to be briefly visible as the PNG file loads, but I'll figure it out later

Modding:
- Fixed `[@]` accessor
- `[$]` accessor is now disabled for GMLv1 mods

# 100.010 (june 2023)

General:
- Hopefully fixed the issue with the game randomly not starting (by updating both GM and Steamworks extension)
- Replaced the borderless fullscreen implementation by now-built-in functions

Netcode:
- Online multiplayer works again, for now in UDP mode only (Steam's in the next release)
- Replaced now-incompatible FaucetNetworking DLL with a very tiny UDP wrapper (IPv4 only, no hostname resolution)
- _Probably_ fixed the crash on desync, which means that you can hunt the elusive scrapyard desync with `/tracksync` again

Modding:
- Scripting language is now mostly-on-par with GM2023.4 syntax features
- Shuffled some things around to hopefully cause less stress on the garbage collector when working with huge mods
- Added some string and array functions from GM2023.4
- Added zip_unzip (unzips for the player calling the function, both zip and destination are relative to the mod's data folder)

# 100.009 (january 2023)

Modding:
- Fixed `surface_save[_ext]`/`buffer_save[_ext]`/`buffer_load` not using data/ directory
- Fixed `div` performing floating-point division under certain circumstances
- Fixed a softlock when doing `X in in Y`
- Fixed Last teleporting all instances of itself instead of just self
- Fixed a crash when minimizing the game window with natie cursor enabled
- Re-added shader loading support (very WIP)

# 100.008 (december 2022)

General:
- Fixed detection logic for cursor / mouselock DLLs.

Modding:
- `instance_create` now returns numeric IDs in GMLv1 mods.
- Fixed callback conversions not working right after 100.007 changes
- Functions with optional `self` / `other` context now allow these to be invalid for compatibility with old mods.

# 100.007 (december 2022)

General:
- Fixed Rogue pickups not doing some of the pickup things due to copy-pasted code.
- Fixed rads being attracted by Eyes' active faster than they should be after 100.x changes.
- Fixed golden nukes not following the cursor after 100.x changes.

Modding:
- The scripting language is now updated with most of the recent GML additions such as `static` or `100_000`
- Added `array_filter`, `array_map`, `array_reverse`, `variable_struct_filter`, `variable_struct_map`
- Removed the recently introduced `object_*` manipulator functions due to excessive volatility
- Added `event_perform_object`
- File-related functions are now aware of mod file's relative path
- Added `mod_current_path`, `mod_current_dir`; file init order is now predictable
- Added `Player.calc_pickup_attract_distance()` and `Player.calc_rad_attract_distance()` (which you can override with your own functions)
- Added `CustomPickup`
- `self`/`other` now return an ID in GMLv1 mods.
- Since the game now runs on GM2022.11, IDs are now a `ref` type, but we'll pretend that they aren't for GMLv1 mods.
- Projectiles now have a `creator_projectile` variable for tracking submunitions
- Race mods can now define a `race_gets_chilly` script.
- Race mods can now define a `race_makes_air_bubbles` script.
- Area mods can now define a `area_set_music` script.
- Fixed `instances_in_rectangle`/`instances_in_circle` not working with array arguments
- Fixed `on_` script ID->script binding conversions being too generous (and applying when writing variables to objects that didn't use to do conversions)
- New-format menus now create a single dummy button so that mods making use of instance_exists still work
- GMLv1 mods are now allowed a bug where you can do [1 2 3] instead of \[1,2,3]
- Added `projectile.portal_immunity`
- Mod errors no longer show the ultra-verbose call stack by default; original behaviour can be enabled using `/debugstack`
- I updated most of the game's extensions, but that doesn't necessarily mean that multiplayer works now

# 100.006 (july 2022)

- Mods can now have a `.ntgml` extension to default to v2 syntax (so that you don't have to put `#pragma gml 2` in each file)
- Included code files now run their init too, although not in a fancy order (for now)
- `surface_free` used in v1 mods can now take -1 or non-surface args again
- Fixed initial Vlambeer logo being off-center if you specified non-4:3 aspect ratio
- Fixed weapon scripts not getting self/other when called through `weapon_*` by another mod
- Fixed `alarm#` not working for structs
- Fixed `sprite_skin()` not getting `self`
- Fixed mod-loaded sprites defaulting to 30fps instead of frame-per-frame speed

# 100.005 (july 2022)

General:
- Fixed a crash in `scrTarget`
- There's now a "mechanics" menu in the "game" menu where you can change rad attraction mode, framerate, and aspect ratio

Modding:
- Framerate/aspect ratio settings now auto-load in NTT
- Fixed `try`/`catch` not being available in non-gml2 mods

# 100.004 (july 2022)

Modding:
- PhantomBolt now has `fadespeed` and also doesn't move
- Fixed `instance_in_rectangle`/`instances_in_circle` returning `undefined`s
- Game no longer crashes if a mutation/ultra button sprite is unloaded
- `race` is now consistently a string and `race_id` is consistently a number (I'll see what to do with `Revive` that had them swapped later on).
- `is_object` now returns `false` for ds/etc., added `is_builtin` for those.
- Added `#pragma fast` - can be included in a script to compile it in alternate mode. Generally ≥2x faster, supports ~2/3 of GML syntax, may struggle with specific features.

# 100.003 (june 2022)

Modding:
- `real(v)` now behaves like the GMS1 function (doesn't throw errors), GMS2.3 real is `double(v)`
- Fixed some resource-related functions throwing a cryptic error when ran on an nonexistent file
- Fixed the game crashing if unloading/reloading a character mid-level-gen
- Making a mod unload itself no longer crashes the game (nor will unloading some other mod and then managing to run a function from it)
- PopupText now accepts both `mytext` (actual variable) and `text` (legacy alias)
- Fixed `++alarm0` / `alarm0++` ignoring variable rules
- Fixed `race` / `race_id` variables not working right
- Fixed `background_color` setter not doing anything

# 100.002 (june 2022)

Modding:
- Fixed Quick Restart switching players to Random
- Fixed `is_real`, _for real this time_
- Fixed non-GMLv2 mod functions sometimes returning `undefined` instead of `0` by default
- Calling built-in functions should now be a tiny bit faster
- Array literals (`[...]`) now use argument list optimisations from function calls
- Fixed `#macro name { "key":` / `#macro name { key:` being mistaken for a malformed code block
- `projectile_hit_raw` is now marked as an instance-specific function since it accesses `other` for `lasthit`
- Mod dumps (from `/debugbc`) now include slightly more info (local variable IDs, local variable names in corresponding instructions)
- I tried making use of the 2.3 `delete` keyword to help GM garbage collector free mod function invocation leftovers sooner, which will either slightly help performance or cause the game to mysteriously crash

# 100.001 (june 2022)

Modding:
- Fixed broken signatures for `method` and `lq_get`; added checks to make sure that I don't do this again
- NTT is now back to using LCG RNG since people relied on rewinding RNG seeds
- Fixed `ds_list_shuffle`
- Added more special cases for function argument chain optimisations (now supports constants, local vars, and self/current instance vars)
- Added `#pragma using modname.type` (e.g. `#pragma using sprites.mod`) that automatically makes top-level functions and `globalvar`s from the said mod available in the current mod similarly to (but more optimised) `mod_*` functions. The mod in question should be loaded before the mod `using` it - references are collected compile-time. 
- You can now do `globalvar name = value`
- Added `/gml2` command for doing new-syntax snippets
- You can now add an empty `no_intro` file to game or save directory to auto-skip intros
- Fixed a crash when exiting a session after using `object_add`
- Player now sets `aimDirection` on fire/step so that a few mods using that variable are less likely to break
- Melee projectiles now have a shared `meleeprojectile` parent.
- Swapped `race` / `race_id` back for `Player`, `CharSelect`, and `EGSkillIcon`
- You can now reference "built-in" functions again (`var t = trace; t("hi!")`)

# 100.000 (june 2022)

Modding:
- Rewrote some of the checks that would be causing issues when used together with `object_add`
- Player now has `swap_weps()` and `calc_reload_speed()` that you can call or replace
- Fixed `current_time_scale` being non-writable
- Framerate option won't show up in NTT for now
- `lq_get`/`lq_defget` will now return `undefined` for non-structs like it did before (`variable_struct_*` is unaffected)
- Added `current_time_scale_squared` that should be faster than squaring it yourself (game code also uses it)
- Added missing accessors for some timescale-based variables
- Fixed `area_can_spawn_portal`, `weapon_get_list`
- `method(newSelf, func)` is now available
- Fixed `instances_matching_ne` putting instance-structs into array
- Seeding-related variables can now be found in GameCont again
- `/gml` errors no longer show `\n`s
- Fixed `new` / `function` not working with `#pragma gml 2`
- Instance variable errors are now more descriptive
- `crown_get_pick` / `crown_set_pick` now use 0 as "default" instead of -1
- `collision_line_point` / `collision_line_width_first` now return a struct and take an optional struct argument to populate
- Fixed some API functions working strangely due to using a wrong `self`
- `ultra_count` now returns a dynamic value for Skeleton
- Fixed some instance functions not working due to legacy NTT implementation overwriting the new one
- Booleans should now be booleany (as far as type/print go) more often
- `instance_is` should no longer throw an error for destroyed instance IDs
- Fixed chat_comp_add adding first argument to rest-arguments
- Projectiles now have sprite variables (`spr_dead`, `spr_disappear`, `spr_impact` - depending on the thing)
- Fixed modded loadout weapons showing `sprite#0` for struct-weps

# 100.x in nutshell

- The game has been migrated to a current GameMaker version (first GM2022, then GM2023).
- The scripting language was more or less rewritten from scratch to be more performant and have more features.
- Hopefully we're back to having functioning online multiplayer in NTT?

---

The below only list the base game changes.
Some are merged as many versions consist largely of GMS2 migration and/or Xbox fixes.

# 99r2b12

Generation/seeding:
- Fixed BackCont effects influencing level generation

Visual/Audio
- Fixed "double campfire" (drawing in both directions)
- Portals no longer rapidly flip back and forth as they pull in the player
- Crown followers now face in their walk direction

# 99r2b9

Mechanics:
- Fixed it being possible to multi-hit any enemy by pausing mid-swing
- Fixed it not being possible to destroy Enemy Horror projectiles with Horror projectiles

Generation/seeding:
- Allow Skeleton to pick from the same pool as Melting for balance purposes
- Fixed Big Dog weapon drop not being seeded
- Fixed van returning you to the wrong place when exiting HQ

Visual/Audio:
- Fixed ambience starting to play when Menu Theme B starts to play on main menu
- Swapping weapons in credits/cutscenes no longer plays audio

UI:
- Implemented the forgotten loadout close splat animation
- Frog/Skeleton now show on the stats screen if you have played them before

## 99r2b8

Mechanics:
- Fixed Throne 2 occasionally ceasing violence in GMS2 versions of NT (aka the Switch bug)
- Fixed cursed crystals occasionally being able to telefrag the player
- Also fixed HC's crystals being able to exist in two places at once
- The player will no longer shoot when the next level starts if you clicked while entering the portal
- Lasers now pass through allies
- Fixed Blood Hammer hurting you if you hit an enemy during iframes
- Fixed non-grunts spawning if you kill LH before the IDPD portal opens up
- Big Dog is now playable again on April 1st
- Saplings can no longer be hit by corpse of an enemy that they spawned from
- Plant can no longer push enemies out of the level
- Fixed FlameShell not applying bonus damage
- You can now spec-fire as Skeleton with no rads
- Fixed ultra bolts not hitting enemies on iframes even though that's a range weapon
- Fixed some enemy projectiles not being affected by Euphoria

Generation/seeding:
- Fixed Crib being able to skip transitional areas
- Fixed mystery pickups from discarded gators/technomancers

Visual/Audio:
- Fixed walls looking weird is pausing mid-explosions
- Fixed level-top bones sometimes drawing out of order
- Fixed audio overlapping when deleting data.
- Fixed Rogue Strike aiming to the right for a frame when using gamepad.
- Fixed Steroids secondary weapon shaking when shooting the primary one.
- Fixed invisible holes on 0-1
- Boss music no longer gets stuck if you kill the boss in 1 frame
- Fixed Juggernaut shield legs always facing right
- Fixed Melting's blood streaks always moving right
- Fixed Throne flame end animation not playing
- Fixed pillar shadows being off
- Fixed TV sometimes drawing weird or being broken at character select
- Fixed it sometimes being possible to see in darkness by pausing-unpausing quickly
- Aligned END1 cutscene to show character amid the throne correctly
- Fixed crown followers disappearing after one of the players dies in coop

UI:
- Game version is now shown on pause menu / game over screen
- Healthbar no longer flashes during ending cutscenes
- Fixed 0-kill enemies still counting towards total in stats
- Fixed some issues with speedrun timer drawing on top of other UI
- Fixed L6+ path colors being stuck on red
- Fixed loops drawing as H# on daily/weekly if you quit hardmode and get in there right after
- There are now more warnings when you delete your save file

# 99r2b1s

Mechanics
- Added another safeguard for ravens to not get stuck in landing phase.
- Fixed ultra revolver only getting 1 bullet ammo from Recycle gland.
- Assassins no longer wake up one by one if there are no other enemies left.
- Fixed portals removing thrown weapons sometimes.
- Fixed Blood Cannon giving fewer bullets than it takes to fire when out of ammo.
- Fixed boss' frogs being farmable for kills with some work.
- Fixed duplicated spiders counting as kills even if their "parent" spider didn't.
- Fixed Guardian orbs not dropping anything when a portal opens
- Fixed it not being possible to revive a player on the same stage if they died within 1s of portal opening.
- Melting can now become Skeleton in coop when being the last player alive and dying.
- Fixed Golden Disc Gun / Golden Nuke Launcher not dropping unless you have Crown of Guns.
- Fixed Confiscate effect appearing even if non-chest pickup spawns.
- Fixed the game skipping an entire loop if entering a van on the same frame as Big Bandit spawns.
- And added more safeguards to 1-? transitions.
- Fixed Stress working slower (80%) for Steroids secondary weapon (forgotten change from u94).
- Added safeguards for Lil Hunter to not be able to just fly out of the level if hit with heavy weapons during liftoff.
- Fixed Crown of Death not affecting health of fainted players.
- Fixed some oddities with using Crystal TB on 0-1
- Fixed it being possible to get two ultras from Melting->Skeleton->Melting changes.
- Fixed Throne not waking up if shooting it too early, and, very rarely, after multiple shots.
- Don't let explofreaks explode right on level start (sometimes killing you instantly)
- Frog is now less likely to get stuck on wall corners
- Wall destruction is now more optimized
- Corpses are now more optimized
- Fixed turret having mask during appearance animation (leading to accidents with explosive weapons)
- Fixed EnemyHorror shooting somewhere off-screen after killing the player
- Per community request, Stalker proc and Blast Armor no longer set off IDPD grenades
- Fixed DogGuardian corpses being lighter than expected (size=0 instead of 3)

Generation/seeding:
- Fixed random weapons/drops at 2-? due to impostor turtles being spawned and then killed by the game.
- Fixed additional weapon drops from certain enemies being duplicates on daily/weekly/seeded.
- Fixed 2-? special prop being invisible if spawned on a glowing tile.
- Fixed Destiny offering a mutation from the last set
- Fixed 2-?/5-? weapon drops vaguely mimicking 2-1/5-1 drops.
- Fixed some seeding issues with giant weapon chests
- CoD/Patience/Jungle seeding is now more consistent
- Chest/cluster/flower/etc. seeding is now more consistent.
- Fixed props being too close to the spawn point sometimes.
- IDPD can no longer spawn before level generation finishes.
- Fixed hostile horror being able to spawn-despawn at HQ3.
- Fixed rad chests (and thus Horror) being able to spawn too close to player

Audio/Visual:
- Fixed deactivated generators facing the wrong directions when killing T1.
- Fixed character sometimes sliding instead of walking towards throne seat.
- If boss victory music gets stuck, it is now stopped when the level ends.
- Fixed sticky and IDPD grenades making loud noises if spawned inside a wall.
- Fixed Chicken B sometimes missing a head sprite in coop.
- Fixed Dog Guardian shadow being offset
- Fixed 2-1 L# boss healing effects showing under the boss sometimes
- Fixed some IDPD projectiles using a red hit effect sprite
- Fixed snow tank corpses consistently briefly moving to the right.
- Fixed T2 background being possible to blow up by Melting.
- Fixed Laser Brain effect showing even if you didn't have LB.
- Fixed T1 beam sound cutting abruptly if if fires before the last one finished
- Fixed bones drawing under walls sometimes
- Fixed player rotating when feeding the ice flower
- Fixed Sapling playing the spawn animation more than once.

UI:
- Fixed the animation on END1 being a pixel short (clipping the bottom of the tablet)
- Fixed hardmode best run showing "L#" in Stats.
- Fixed golden frog pistol getting unselected upon loading the game.
- Fixed controls menu not confirming key binds until mouse is over the button.
- Fixed Stats screen showing the worst time across characters as the best overall.
- Low Ammo text no longer draws over the daily/weekly icon
- Fixed unlock screens sometimes showing in wrong order
- Fixed Loadout animation not resetting on close
