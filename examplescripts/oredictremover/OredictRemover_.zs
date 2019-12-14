#norun
#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

print("Oredict Remover: ");

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
    }
}