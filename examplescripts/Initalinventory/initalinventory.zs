#norun
import crafttweaker.item.IItemStack;

print("Loading Inital Inventory Script");
    //example
    //<minecraft:sapling> * 3,
val stufftoadd = [

] as IItemStack[];
for item in stufftoadd {
    mods.initialinventory.InvHandler.addStartingItem(item);
}
