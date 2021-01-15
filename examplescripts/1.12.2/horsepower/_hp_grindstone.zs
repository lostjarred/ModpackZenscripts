#norun
#priority 50
import crafttweaker.item.IItemStack;

print(" :grindstone");

/*
mods.horsepower.Grindstone.add(<input>, <output>, <time>, <hand>, <secondary>, <chance>);
input (ItemStack) – Item used in the recipe, accepts ore items
output (ItemStack) – Item returned, doesn’t accepts ore items
time (Integer) – The time for the grinding
hand (Boolean) – (Optional) If the recipe is for the hand grindstone or not, if false and separate recipes isn’t used they are for both
secondary (ItemStack) – (Optional) The secondary output, doesn’t accepts ore items
chance(Integer) – (Optional) The chance of the secondary output
*/

//<minecraft:coal> * 9 : <minecraft:coal_block>,
val grindstonerecipes = {

}as IItemStack[IItemStack];

var defaulthpgrindstonetime = scripts.horsepower.DefaultGrindstoneTime();

for itemouputitemtack, iteminputitemstack in grindstonerecipes {
	mods.horsepower.Grindstone.add(iteminputitemstack, itemouputitemtack, defaulthpgrindstonetime, false);
}
