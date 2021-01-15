#norun
#priority 50
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.artisanworktables.builder.RecipeBuilder;
print(" :Artisan Worktables");

/*
<minecraft:iron_pickaxe> : [
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>], [null, <ore:stickWood>, null], [null, <ore:stickWood>, null]
	],
*/
val blacksmithworktablerecipes as IIngredient[][][IItemStack] = {

};

for outputitem, iingredientrecipe in blacksmithworktablerecipes {
	recipes.remove(outputitem);
	
	RecipeBuilder.get("blacksmith")
		.setShaped(iingredientrecipe)
		.addOutput(outputitem)
		.addTool(<ore:artisansHammer>, 1)
		.create();
}
