#norun
#priority 50
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.appliedenergistics2.Grinder;

import scripts.variables.prefered_oredict as PreOreDict;

print(" :Grindstone");

val defaultturns = 8;

//remove recieps
/*
Grinder.removeRecipe(IItemStack input);
Grinder.removeRecipe(<minecraft:quartz_ore>);
*/
//<ore:chunkIron>,
val grindstonerecipestoremove = [

] as IIngredient[];

 for iingredient in  grindstonerecipestoremove {
 	//furnace.remove(IIngredient output, IIngredient input);
 	for itemstack in iingredient.items {
 		Grinder.removeRecipe(itemstack);
 	}
 }

//add recieps
/*
Grinder.addRecipe(IItemStack output, IItemStack input, int turns, @Optional IItemStack secondary1Output, @Optional float secondary1Chance, @Optional IItemStack secondary2Output, @Optional float secondary2Chance);

Grinder.addRecipe(<minecraft:sapling>, <minecraft:leaves>, 4, <minecraft:sapling:5>, 0.3);
*/
//<ore:chunkIron> : PreOreDict.GetPrefredOredictItem(<ore:dustImpureIron>) * 2,

val grindstonerecipestoadd = {
	
} as IItemStack[IIngredient];

for inputingredient, itemstackouput in grindstonerecipestoadd {
	for itemstackinput in inputingredient.items {
		Grinder.addRecipe(itemstackouput, itemstackinput, defaultturns);
	}
}