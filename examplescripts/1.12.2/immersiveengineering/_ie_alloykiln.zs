#norun
#priority 50

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print(" :IE_Alloy Kiln");

val defaulttime = 240;

val redstonealloy = <enderio:item_alloy_ingot:3>;

//recipes itemstack output and two iingrenients to create item
/*
    example
    <enderio:item_alloy_ingot:3> : [
        <ore:dustRedstone>, <ore:itemSilicon>
    ],
*/
val alloykilnrecipes = {

} as IIngredient[][IItemStack];


//time to complete recipe
/*
    example
    <enderio:item_alloy_ingot:3> : 240 as int
*/

val alloykilnrecipetime = {

} as int[IItemStack];

for itemstinput, iingredrecipe in alloykilnrecipes {
    //break apart recipe array into 2 variables 
    var alkiitem1 = iingredrecipe[0];
    var alkiitem2 = iingredrecipe[1];
    var time = alloykilnrecipetime[itemstinput] as int;

    /*
        //Example:
            mods.immersiveengineering.AlloySmelter.addRecipe(IItemStack output, IIngredient first, IIngredient second, int time);
            mods.immersiveengineering.AlloySmelter.addRecipe(<minecraft:diamond>, <ore:ingotIron>, <minecraft:dirt>, 2000);
    */
    mods.immersiveengineering.AlloySmelter.addRecipe(itemstinput, alkiitem1, alkiitem2, time);
}