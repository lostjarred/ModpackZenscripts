#norun
#priority 50
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.appliedenergistics2.Inscriber;

print(" : Applied Energistics 2: Inscriber");


/*
    example
    <opencomputers:material:11> : [<enderio:item_alloy_ingot:3>, <tis3d:controller>, printedsilicon]
*/


val incriberconsumerecipes = {

} as IItemStack[][IItemStack];

for iitemoutput, iiteminputarray in incriberconsumerecipes{
    var itemtopinput;
    var itembottominput;
    
    //seperate array into variables
    var iteminput = iiteminputarray[0];
    
    //check for inputs

    itemtopinput = iiteminputarray[1];

    itembottominput = iiteminputarray[2];


    /*
        Inscriber.addRecipe(IItemStack output, IItemStack input, boolean inscribe, @Optional IItemStack topInput, @Optional IItemStack bottomInput);
        //combines bread, coco beans, and sugar. all inputs are consumed
        Inscriber.addRecipe(<minecraft:cookie>, <minecraft:minecraft:bread>, false, <minecraft:dye:3>, <minecraft:sugar>);
    */
    Inscriber.addRecipe(iitemoutput, iteminput, true, itemtopinput, itembottominput);
}

//add recipes that do not consume ingredients
/*
    example
    <opencomputers:material:11> : [<enderio:item_alloy_ingot:3>, <tis3d:controller>, printedsilicon]
*/
val incriberrecipes = {

} as IItemStack[][IItemStack];

for iitemoutput, iiteminputarray in incriberrecipes{
    var itemtopinput;
    var itembottominput;
    
    //seperate array into variables
    var iteminput = iiteminputarray[0];
    
    //check for inputs

    itemtopinput = iiteminputarray[1];

    itembottominput = iiteminputarray[2];


    /*
        Inscriber.addRecipe(IItemStack output, IItemStack input, boolean inscribe, @Optional IItemStack topInput, @Optional IItemStack bottomInput);
        //combines bread, coco beans, and sugar. all inputs are consumed
        Inscriber.addRecipe(<minecraft:cookie>, <minecraft:minecraft:bread>, false, <minecraft:dye:3>, <minecraft:sugar>);
    */
    Inscriber.addRecipe(iitemoutput, iteminput, false, itemtopinput, itembottominput);
}

//remove recipes
val inscripberreciperemove = [

] as IItemStack[];

for iiteminput in inscripberreciperemove {
    /*
        Inscriber.removeRecipe(IItemStack output);
        //removes printed silicon recipe 
        Inscriber.removeRecipe(<appliedenergistics2:material:20>); 
    */
    Inscriber.removeRecipe(iiteminput);
}