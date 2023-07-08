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