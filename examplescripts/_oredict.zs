#norun
#priority 100
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

print(" :oredict");

//<ore:hideTanned> : <primal:hide_tanned>,
val removeoredict = {

} as IItemStack[IOreDictEntry];

for oredictentry, itemstack in removeoredict {
	oredictentry.remove(itemstack);
}

//add oredicts
/*<ore:primalcraftingtable> : 
	[<primal:worktable_shelf:8>.withTag({type: "lacquer"}), <primal:worktable_slab:9>.withTag({type: "corypha"})],
*/
val addoreditcts = {

} as IItemStack[][IOreDictEntry];

for oredictentry, itemstackarray in addoreditcts {
	for item in itemstackarray {
		//oreDictEnt.add(IItemStack... item_items);
		oredictentry.add(item);
	}
}

//copyoredicts
//<ore:oreIron> : <ore:oreIronRaw>.
val copyoredict = {

} as IOreDictEntry[IOreDictEntry];

for copyedoredictentry, oredictentry in copyoredict {
	for oredictitem in oredictentry.items {
		copyedoredictentry.add(oredictitem);
		oredictentry.remove(oredictitem);
	}
}
