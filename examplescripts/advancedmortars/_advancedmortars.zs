#priority 50
#norun
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.advancedmortars.Mortar;
print(" :Advanced Mortars");

/*
Taken from wiki
https://github.com/codetaylor/advancedmortars/blob/master/ZENSCRIPT.md
Mortar.addRecipe(String[] mortarTypes, IItemStack output, int duration, IIngredient[] inputs);
    Maximum of eight input ingredients.
    Each input ingredient must be different. Using the same ingredient multiple times in the input array will not yield the desired results.
    Valid mortar types are: wood, stone, iron, gold, diamond, obsidian, emerald
Mortar.addRecipe(["iron", "stone"], <minecraft:gravel>, 20, [<minecraft:cobblestone> * 4]);
Optional Secondary Item Output
Mortar.addRecipe(String[] mortarTypes, IItemStack output, int duration, IItemStack secondaryOutput, float secondaryOutputChance, IIngredient[] inputs);
    Maximum of eight input ingredients.
    Each input ingredient must be different. Using the same ingredient multiple times in the input array will not yield the desired results.
Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:flint>, 4, <minecraft:flint> * 2, 0.5, [<minecraft:gravel> * 3]);
*/

//some default values just in case
val defaulttime = 6 as int;
val defaulttypes = ["stone", "iron", "diamond"] as string[];

//the recipe items
//<gregtech:meta_item_1:2018> : [<ore:crushedCopper>],
val recipesitems = {

} as IIngredient[][IItemStack];

//the types of mortar used in recipe
//<gregtech:meta_item_1:2018> : ["stone", "iron", "diamond"],
val recipetypes = {
    
} as string[][IItemStack];

for outputiitemstack, inputiingredients in recipesitems {
    //get input and ouput items   
    //get mortar types for recipe, if null use default mortar list
    if (isNull(recipetypes[outputiitemstack]) == true) {
        Mortar.addRecipe(defaulttypes, outputiitemstack, defaulttime, inputiingredients);
    }else{
        Mortar.addRecipe(recipetypes[outputiitemstack], outputiitemstack, defaulttime, inputiingredients);
    }
}