/* TRINKETS
 * by Joseph Cramsey
 * 
 * A Thing that can be interacted with, but has limited listing
 * behaviors, and is excluded from X ALL actions.
 */

class Trinket: Thing {
    // This property works in both Adv3 and Adv3Lite
    isListed = (!canBeIgnored())

    // Adv3Lite properties
    inventoryListed = true
    lookListed = (isListed)
    examineListed = true
    searchListed = true

    // Adv3 properties
    isListedInInventory = true
    isListedInContents = true

    // This check works in both Adv3 and Adv3Lite!
    hideFromAll(action) {
        return canBeIgnored();
    }

    // The bit that handles the actual logic.
    // This ALSO works in both Adv3 and Adv3Lite!
    canBeIgnored() {
        // If we are exposed, in the middle of the room, then
        // we cannot be ignored.
        if (location == getOutermostRoom()) {
            return nil;
        }

        // Allow actions like DROP ALL if we are being carried.
        if (isHeldBy(gPlayerChar)) {
            return nil;
        }

        // Otherwise, pay us no mind in X ALL.
        return true;
    }
}