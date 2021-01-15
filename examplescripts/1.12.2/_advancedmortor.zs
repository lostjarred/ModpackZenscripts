#norun
#priority 50
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.advancedmortars.Mortar;

print(" :advanced_mortar");

//add mortar recipe
/*
	Mortar.addRecipe(String[] mortarTypes, IItemStack output, int duration, IIngredient[] inputs);
	Mortar.addRecipe(["iron", "stone"], <minecraft:gravel>, 20, [<minecraft:cobblestone> * 4]);
	This recipe for the iron and stone mortar will use 4 cobblestone, take 20 clicks, and produce 1 gravel.
*/

val defaultmortartime = scripts.advancedmortars.DefaultAdvancedMortarTime();
val defaultmortartypes = scripts.advancedmortars.DefaultMortarTypes() as string[];
//<minecraft:gunpowder> : [<ore:dustAsh>, <ore:dustSulfur>, <ore:dustCharcoal>],

val advancemortar_recipes = {

} as IIngredient[][IItemStack];

//<minecraft:gunpowder> : defaultmortartypes,
val advancemortar_recipes_mortartypes = {

} as string[][IItemStack];

//<minecraft:gunpowder> : defaultmortartime,
val advancedmortar_recipes_time = {

} as int[IItemStack];

for itemstackoutput, iingrentiantarrayinput  in advancemortar_recipes{
	var motartypes
	if (isNull(advancemortar_recipes_mortartypes[itemstackoutput])){
		motartypes = defaultmortartypes;
	}else{
		motartypes = advancemortar_recipes_mortartypes[itemstackoutput];
	}

	var recipetime
	if (isNull(advancedmortar_recipes_time[itemstackoutput])){
		recipetime = defaultmortartime;
	}else{
		recipetime = advancedmortar_recipes_time[itemstackoutput];
	}
	
	Mortar.addRecipe(motartypes, 
	itemstackoutput, 
	recipetime, 
	iingrentiantarrayinput);
	/*Mortar.addRecipe(advancemortar_recipes_mortartypes[itemstackoutput], 
	itemstackoutput, 
	advancedmortar_recipes_time[itemstackoutput], 
	iingrentiantarrayinput);*/
}
