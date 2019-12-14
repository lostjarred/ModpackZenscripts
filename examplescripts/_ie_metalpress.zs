#norun
#priority 50
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print(" :Immersive Enineering Metal Press");

var defaultmetalpressenergycost = scripts.immersiveengineering.DefaultMetalPressEnergyCost();

//<minecraft:coal_block> : <minecraft:coal>,
val metalpressrecipes = {
	
}  as IIngredient[IItemStack];

//<minecraft:coal_block> : scripts.immersiveengineering.IEMolds["packing3x3"],
val metalpressrecipesmold = {

} as IItemStack[IItemStack]; 

//<minecraft:coal_block> : 9,
val metalpressrecipesinputsize = {

} as int[IItemStack];

for itemoutput, iteminput in metalpressrecipes{
/*
//Example:
mods.immersiveengineering.MetalPress.addRecipe(IItemStack output, IIngredient input, IItemStack mold, int energy, @Optional int inputSize);

mods.immersiveengineering.MetalPress.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:emerald>, 2000);
mods.immersiveengineering.MetalPress.addRecipe(<minecraft:diamond>, <ore:logWood>, <minecraft:emerald>, 2000, 16);
*/
mods.immersiveengineering.MetalPress.addRecipe(itemoutput, iteminput, metalpressrecipesmold[itemoutput], defaultmetalpressenergycost, metalpressrecipesinputsize[itemoutput]);
}
