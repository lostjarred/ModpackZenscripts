#norun
#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print("Oredict Remover:Furnace");

val allOredictEntrues = oreDict.entries;
var materialstart = 0 as int;
var material = "" as string;
var ingotoredict = "" as string;
var oreoredict = "" as string;

for oreDictEntry in allOredictEntrues{
	var oredictname = oreDictEntry.name;
    material = "";
    ingotoredict = "";
    oreoredict = "";

    if (oredictname has "ore") {
  		print(oredictname);
  		materialstart = 3;
  		for i in materialstart to oredictname.length {
    		material = material + oredictname[i];
    	}

    	print("material is " + material);
    	ingotoredict = "ingot" + material
    	print("ingot is " + ingotoredict);
    	print("searching oredict for ingot")
    	
    	if (oreDict.get(ingotoredict).empty) {
    		print("no ingot found, stoping");
    	}else{
    		print("removing furnace recipe");
    		furnace.remove(oreDict.get(ingotoredict), oreDictEntry);
    		for ore in oreDictEntry.items{
    			for ingot in oreDict.get(ingotoredict).items{
    				furnace.remove(ingot, ore);
    			}
    		}
    	}
    }
}