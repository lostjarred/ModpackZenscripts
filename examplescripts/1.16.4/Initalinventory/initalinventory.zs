#norun
import crafttweaker.item.IItemStack;
//1.16.4
print("Loading Inital Inventory Script");
    //example
    //<minecraft:sapling> * 3,
val stufftoadd = [

] as IItemStack[];
for item in stufftoadd {
    //mods.initialinventory.InvHandler.addStartingItem(String key, IItemStack item, Optional int index);
    mods.initialinventory.InvHandler.addStartingItem("startitems" item, -1);
}
