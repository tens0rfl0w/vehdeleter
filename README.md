# vehdeleter
[FiveM] Deletes unoccupied player vehicles using statebags

From time to time I see some really weird (paid) resources being sold on Tebex that use some “confusing” logic to solve really simple problems.

Most vehicle deletion scripts just delete any unoccupied vehicle every x minutes (which is kinda annoying for players).

### So what’s different?
This small resource/snippet just deletes any vehicle that is unoccupied (“undriven”) for longer than x minutes, making it obsolete to notify players to get in their vehicles at a specific moment to keep their vehicle from being despawned.

It’s far from being perfect, just made this some time ago when playing around with state bags.

Config allows you to set a threshold when to delete a vehicle and how often the check should occur.

(Should ignore AI vehicles that were never driven by a player.)
