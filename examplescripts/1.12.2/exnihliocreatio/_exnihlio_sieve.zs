#norun
#priority 50

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.exnihilocreatio.Sieve;
print(" :ExNihilo_Sieve");

/*
    example 
    <immersiveengineering:seed> : <ore:dirt>,
*/
val stringsieverecipe = {

} as IIngredient[IItemStack];

/*
    example 
    <immersiveengineering:seed> : 0.35,
*/
val stringsieverecipechance = {

} as float[IItemStack];

for stringiitemstackouput, stringiingredientinput in stringsieverecipe {
    //get chance from array cast as float
    var chance = stringsieverecipechance[stringiitemstackouput] as float;

    /*
        Sieve.addStringMeshRecipe(IIngredient, IItemStack, Float chance);
        Sieve.addStringMeshRecipe(<minecraft:gravel>, <minecraft:diamond>, 0.001);
    */
    Sieve.addStringMeshRecipe(stringiingredientinput, stringiitemstackouput, chance);
}

/*
    example 
    <immersiveengineering:seed> : <ore:dirt>,
*/
val flintsieverecipe = {

} as IIngredient[IItemStack];

/*
    example 
    <immersiveengineering:seed> : 0.35,
*/
val flintsieverecipechance = {

} as float[IItemStack];

for flintiitemstackouput, flintiingredientinput in flintsieverecipe {
    //get chance from array cast as float
    var chance = flintsieverecipechance[flintiitemstackouput] as float;

    /*
        Sieve.addFlintMeshRecipe(IIngredient, IItemStack, Float chance);
        Sieve.addFlintMeshRecipe(<minecraft:gravel>, <minecraft:diamond>, 0.01);
    */
    Sieve.addFlintMeshRecipe(flintiingredientinput, flintiitemstackouput, chance);
}