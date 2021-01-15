#norun
#priority 80
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import scripts.variables.scriptvariables as ScriptV;
print(" :recipes:Replace");

//replace craftig ingredient 
// <magneticraft:crafting:4> : <gregtech:meta_item_1:10297>,
val ingredientstoreplace = {

} as IIngredient[IIngredient];
for itemtoreplace, replaceditem in ingredientstoreplace{
	//recipes.replaceAllOccurences(IIngredient toReplace, IIngredient replaceWith, @Optional IIngredient forOutput);
	recipes.replaceAllOccurences(itemtoreplace, replaceditem);
	if (ScriptV.HideItems() == true){
		/*
		removeAndHide(IIngredient output, @optional boolean NBT-Match)
		mods.jei.JEI.removeAndHide(<minecraft:iron_leggings>);
		mods.jei.JEI.removeAndHide(<ore:planks>, false);
		*/
		mods.jei.JEI.removeAndHide(itemtoreplace);
	}
}

