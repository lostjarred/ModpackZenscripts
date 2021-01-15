#norun
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import scripts.variables.prefered_oredict as PreOreDict;
import scripts.variables.crafting_tools as CraftingTools;
import scripts.variables.crafting_recipes as CraftingRecipes;

print("Oredict:Oredict Reaplacer");

val allOredictEntrues = oreDict.entries;
var materialstart = 0 as int;
var material = "" as string;
var ingotoredict = "" as string;

function ReplacePlateRecipe (oredict as IOreDictEntry) {
	var oredictname = oredict.name;
	var material = "" as string;
    var ingotoredict = "" as string;
    var materialstart = 5 as int;
    	print("found a plate, attempting recipe replace");
    	print("attempting to find materials");
    	
    	for i in materialstart to oredictname.length {
    		material = material + oredictname[i];
    	}
    	print("material is " + material);
    	ingotoredict = "ingot" + material;
    	print("ingot oredict would be " + ingotoredict);
    	print("attempting to find matching oredict ingot for replace recipe");
    	
    	//if (oreDict has ingotoredict) {
    	if (oreDict.get(ingotoredict).empty) {
    		print("no ingot found, aborting replace");
    	} else {
    		print("an ingot has been found, starting recipe replace");
    		recipes.remove(oredict);
    		recipes.addShaped(PreOreDict.GetPrefredOredictItem(oredict), 
    		CraftingRecipes.GeneratePlateRecipe(oreDict.get(ingotoredict)));
    	}
}

function ReplaceMetalStickRecipe (oredict as IOreDictEntry) {
	var oredictname = oredict.name;
	var material = "" as string;
    var ingotoredict = "" as string;
    var plateoredict = "" as string;
    var materialstart = 5 as int;
    for i in materialstart to oredictname.length {
    		material = material + oredictname[i];
    }
    print("material is " + material);
    ingotoredict = "ingot" + material;
    plateoredict = "plate" + material;
    print("ingot oredict would be " + ingotoredict);
    print("plate oredict would be " + plateoredict);
    print("attempting to find matching oredict ingot for replace recipe");
    if (oreDict.get(ingotoredict).empty) {
    		print("no ingot found, aborting replace");
    } else {
    	print("an ingot has been found");
    	if (oreDict.get(plateoredict).empty) {
    		print("no plate found, aborting replace");
    	} else {
    		print("an plate has been found, starting recipe replace");
    		recipes.remove(oredict);
    		recipes.addShaped(PreOreDict.GetPrefredOredictItem(oredict), 
    		CraftingRecipes.GenerateStickRecipe(oreDict.get(ingotoredict), oreDict.get(plateoredict)));
    	}
    }
}

for oreDictEntry in allOredictEntrues{
	var oredictname = oreDictEntry.name;
    material = "";
    ingotoredict = "";
    if (oredictname has "plate") {
  		ReplacePlateRecipe(oreDictEntry);
    }
    if (oredictname has "stick") {
  		ReplaceMetalStickRecipe(oreDictEntry);
    }
}