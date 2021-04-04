#norun
#priority 50
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

print(" :furnace");

//remove furnace recipes
//<minecraft:glass>,
val iingredientfurnacetoremove = [

] as IIngredient[];

for item in iingredientfurnacetoremove{
	furnace.remove(item);
}

//remove furnace recipes
//<ore:ingotIron> : <ore:oreIron>,
val furnacerecipestoremove = {

} as IIngredient[IIngredient];

 for itemoutputitemstack, iteminputingrenient in  furnacerecipestoremove {
 	//furnace.remove(IIngredient output, IIngredient input);
 	furnace.remove(itemoutputitemstack, iteminputingrenient);
 }

//add furnace recipes
// <minecraft:torch> : <primal:torch_wood>,
 val furnacerecipetoadd = {

 } as IIngredient[IItemStack];

 for itemoutputitemstack, iteminputingrenient in  furnacerecipetoadd {
 	//furnace.addRecipe(IItemStack output, IIngredient input, double xp);
 	furnace.addRecipe(itemoutputitemstack, iteminputingrenient);
 }