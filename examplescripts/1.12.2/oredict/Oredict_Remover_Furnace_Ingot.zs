#norun
#priority 100

import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;

print("Oredict Remover Furnace:Ingots");

val oredictprefix = [
    "ore",
    "ingot",
] as string[];


/*metal oredict names go here e.g.
    "Gold",
    "Iron",
*/
val oredictmetals = [
    "Gold",
    "Iron",
    "Copper",
    "Aluminum",
    "Lead",
    "Silver",
    "Nickel",
    "Uranium",
    "Platinum",
    "Zinc",
    "Tungsten",
    "Salt",
    "Fluorite",
    "Phosphorus",
    "Osmium",
    "Tin",
    "Iridium",
    "Mithril",
] as string[];
    
for metalstring in oredictmetals {
    var Oreoredictstring = oredictprefix[0] + metalstring as string;
    var Ingotoredictstring = oredictprefix[1] + metalstring as string;

    var Oreoredict = oreDict.get(Oreoredictstring);
    var Ingotoredict = oreDict.get(Ingotoredictstring);

    furnace.remove(Ingotoredict, Oreoredict);
}
