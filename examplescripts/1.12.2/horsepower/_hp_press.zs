#norun
#priority 50
import crafttweaker.item.IItemStack;

print(" :horsepower press");

//<minecraft:coal_block> : <minecraft:coal> * 9,
val horsepressrecipestoadd = {

} as IItemStack[IItemStack];

for itemoutput, iteminput in horsepressrecipestoadd{
/*
mods.horsepower.Press.add(<input>, <output>);
input (ItemStack) – Item used in the recipe, accepts ore items
output (ItemStack) – Item returned, doesn’t accepts ore items
*/
mods.horsepower.Press.add(iteminput, itemoutput);
}