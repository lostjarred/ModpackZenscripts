#norun
#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

import scripts.thermalfoundation.thermal_foundation as TF;

print("Variables: Prefered Oredicts");
//<ore:orePlatinum> : <divergentunderground:ore_thermal_platinum>,
static PreferedOredictItems as IItemStack[IOreDictEntry] = {	
};

function GetPrefredOredictItem (oredict as IOreDictEntry) as IItemStack{
	if (isNull(PreferedOredictItems[oredict])) {
		logger.logWarning("no item found in array for> " + oredict.name + " <defaulting to first oredict entry");
		print("no item found in array for> " + oredict.name + " <defaulting to first oredict entry");
		if (isNull(oredict.items[0])){
				logger.logWarning(oredict.name + " is not an oredict entry using error item");
				print(oredict.name + " is not an oredict entry using error item");
				return <minecraft:dirt>;
		}else{
				logger.logWarning("using " + oredict.items[0].definition.id + " with metadata " + oredict.items[0].metadata + " from mod " + oredict.items[0].definition.owner);
				print("using " + oredict.items[0].definition.id + " with metadata " + oredict.items[0].metadata + " from mod " + oredict.items[0].definition.owner);
				print("<" + oredict.items[0].definition.id + ":" + oredict.items[0].metadata + ">");
				print("<ore:" + oredict.name + ">"+ " : " + "<" + oredict.items[0].definition.id + ":" + oredict.items[0].metadata + ">,");
				return oredict.items[0];
		}
	}else{
		return PreferedOredictItems[oredict];
	}
}