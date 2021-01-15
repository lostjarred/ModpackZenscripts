#norun
#priority 50
import crafttweaker.item.IIngredient;

import scripts.variables.scriptvariables as ScriptV;
print(" :jei");

//remove and hide

// <primal:worktable_slab>.withTag({type: "oak"}),
var removeandhide = [

] as IIngredient[];
for curremove in removeandhide {
if (ScriptV.HideItems() == true){
		/*
		removeAndHide(IIngredient output, @optional boolean NBT-Match)
		mods.jei.JEI.removeAndHide(<minecraft:iron_leggings>);
		mods.jei.JEI.removeAndHide(<ore:planks>, false);
		*/
		mods.jei.JEI.removeAndHide(curremove);
	}
}

