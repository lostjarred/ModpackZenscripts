#norun
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

print(" :delivery");
//Notes taken from documentation on github
/*
    * Stores are automatically created when they are first referenced.
    * If a store icon is not set, it will default to an emerald
    * The default store can be referenced with the id "_store"
    * The default store display name can be edited in the delivery config file
    * You can NOT create an ore dictionary entry with <ore:X>, this is a limitation with CraftTweaker and MC, use .addOre()
*/
/*
val store_Default = "_store";
mods.Delivery.Store.setStoreIcon(store_Default, <minecraft:redstone>);

//Methods adding to default store
     mods.Delivery.Store.addTrade(IItemStack result, IIngredient... inputs)

//Methods adding to custom store
    mods.Delivery.Store.addTrade(IItemStack result, String store, IIngredient... inputs)

~~Other Methods~~
    mods.Delivery.Store.setStoreIcon(String storeName, IItemStack storeIcon) 
*/

//name of the default store
val defaultstore = "_store";
//name of custom store
val store = defaultstore;

//you may need to add something to the default for the custom stores to work, if you only have one store
//mods.Delivery.Store.addTrade(<harvestcraft:blackberryseeditem>, defaultstore, [coppercoin]);


/*
add store icon
mods.Delivery.Store.setStoreIcon(String storeName, IItemStack storeIcon)
*/ 
//mods.Delivery.Store.setStoreIcon(store, <harvestcraft:barleyseeditem>);

//Example
//<harvestcraft:blackberryseeditem> * 5 : [coppercoin * 5],

val storeitems = {
    
} as IIngredient[][IItemStack];

for iitemresult, iingredientinputs in storeitems {
    // add trade to store
    //mods.Delivery.Store.addTrade(IItemStack result, String store, IIngredient... inputs)
    mods.Delivery.Store.addTrade(iitemresult, store, iingredientinputs);
}