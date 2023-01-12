# Trinkets for TADS3
A frequent concern in parser-based interactive fiction is the power of the `X ALL` commands. Players often want to leverage them for a more fluid experience, while many authors show a *hesitant caution* before trusting the player with such power.

This primarily becomes a problem in rooms which contain a lavish amount of detail and decoration. Most often, decoration items are completely unresponsive, but to
include them as part of the simulation *also* risks them being swept up in the usual `TAKE ALL` command.

Indeed, a player should know to prepare a *moving van* before using `TAKE ALL` in certain highly-detailed environments, as they will walk away with the books, chair, name plate, lamp, window dressing, and *couch cushions!*

With a `Trinket`, an item can now be **fully-responsive**, *without* cluttering the output, and *without qualifying for an* `X ALL` *command*. In fact, the only way to interact with a `Trinket` is on a per-individual level, which requires a higher degree of discovery and intent!

## Logic
The only way for a `Trinket` to qualify for an `X ALL` command (like `TAKE ALL` or `DROP ALL`) is if it's placed directly in a `Room`, and not stored with some kind of container or platform. This is to mimic the behavior of a shelf item being found on the tile floor, all by itself. If discovered like this, its presence is obvious, unlike its existence on a shelf somewhere. Additionally, a `Trinket` can *also* qualify for `X ALL` by being in the player's inventory (allowing it to qualify for `DROP ALL`, in particular).

In order to show up in a listing, it must qualify for an `X ALL` command, or have its container examined. It will not show up when surveying the room, which allows progression-relevant items to stand out even more.

## Use
Simply drop `trinkets.t` into your project folder, and include it with
```
#include "trinkets.t"
```

Then, you can create a new `Trinket`, like the following example:
```
puzzleCube: Trinket { 'puzzle cube'
    "A multi-colored 3-by-3 puzzle cube. "
}
```

For a full scene example:
```
gameMain: GameMainDef {
    initialPlayerChar = me
}

centralRoom: Room { 'Central Room'
    "The main room in the center."
}

+me: Actor {
    person = 2
}

+bottle: Thing { 'water bottle'
    "A water bottle. It seems important for a puzzle! "
}

+desk: Platform { 'desk'
    "A simple, utilitarian desk. "
}

++mug: Thing { 'mug'
	"A coffee mug. It seems important for a puzzle! "
}

++puzzleCube: Trinket { 'puzzle cube'
    "A multi-colored 3-by-3 puzzle cube. Probably not important for <i>this</i> puzzle! "
}
```
