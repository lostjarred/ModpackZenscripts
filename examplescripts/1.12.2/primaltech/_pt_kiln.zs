#norun
#priority 50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

import mods.primaltech.ClayKiln;
print(" :Kiln");

var defaultclaykilncooktime = scripts.primaltech.primal_tech.DefaultKilnCookTime();

//<primal:mud_dried> : <primal:mud_wet>,
val claykilnrecipetoadd = {

} as IIngredient[IItemStack];

 for itemoutputitemstack, iteminputingrenient in  claykilnrecipetoadd {
	/*
	Clay Kiln
	mods.primaltech.ClayKiln.addRecipe(IItemStack output, IIngredient input, int cooktime);
	*/
 	mods.primaltech.ClayKiln.addRecipe(itemoutputitemstack, iteminputingrenient, defaultclaykilncooktime * 2);
 }



