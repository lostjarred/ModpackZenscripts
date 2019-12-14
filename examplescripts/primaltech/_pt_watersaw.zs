#norun
#priority 50
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print(" : Water Saw");

var watersawdefaultchoptime = scripts.primaltech.primal_tech.DefaultWaterSawTime();

//<minecraft:wooden_slab:0> * 2 : <ore:plankOak>,
 val watersawrecipetoadd = {

 } as IIngredient[IItemStack];

 for itemoutputitemstack, iteminputingrenient in  watersawrecipetoadd {
 	/*
	Water Powered Saw

	mods.primaltech.WaterSaw.addRecipe(IItemStack output, IIngredient input, int chopTime);
	*/
	mods.primaltech.WaterSaw.addRecipe(itemoutputitemstack, iteminputingrenient, watersawdefaultchoptime);
 }
