#norun
#priority 50
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


import mods.primaltech.StoneAnvil;

print(" :primaltech_stoneanvil");

//<minecraft:iron_ingot> * 9 : <ore:blockIron>,
val stoneanvilrecipes = {

} as IIngredient[IItemStack];

for itemstackoutput, iingredientinput in stoneanvilrecipes {
/*
Stone Anvil
mods.primaltech.StoneAnvil.addRecipe(Itemstack output, IIngredient input);
*/
	mods.primaltech.StoneAnvil.addRecipe(itemstackoutput, iingredientinput);
}

