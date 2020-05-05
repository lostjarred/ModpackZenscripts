#norun
#priority 50
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//import scripts.variables.crafting_recipes as craftr;
//import scripts.variables.crafting_tools as craftt;
print(" :recipes");

//remove recipes
// <minecraft:crafting_table>,
val iingredientcrafttoremove = [

] as IIngredient[];

for item in iingredientcrafttoremove{
	//recipes.remove(outpu  IIngredient, NBTMatch boolan);
	recipes.remove(item);
}

//"minecraft:chest",
val stringcrafttoremove = [

] as string[];

for recipestring in stringcrafttoremove {
	recipes.removeByRecipeName(recipestring);
}

//replace recipes
/*
<minecraft:furnace> : [
	[
		[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, null, <ore:stone>], 
		[<minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>]
	]
],
*/
val recipestoreplace = {
	
} as IIngredient[][][][IItemStack];
for itemoutput, recipearray in recipestoreplace {
	//recipes.remove(outpu  IIngredient, NBTMatch boolan);
	recipes.remove(itemoutput);	
	for iteminput in recipearray{
		//recipes.addShaped(output IItemStack,inputs IIngredient[][],function,action);
		recipes.addShaped(itemoutput, iteminput);
	}
}

//add recipes
/*
<minecraft:furnace> : [
	[
		[<ore:stone>, <ore:stone>, <ore:stone>], [<ore:stone>, null, <ore:stone>], 
		[<minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>]
	]
],
*/
val recipestoadd = {
	
} as IIngredient[][][][IItemStack];
for itemoutput, recipearray in recipestoadd {
	//recipes.addShaped(output IItemStack,inputs IIngredient[][],function,action);
	for iteminput in recipearray{
		recipes.addShaped(itemoutput, iteminput);
	}
}

