Vehicle := Object clone

Vehicle description := "A car could be blue" // this defines a new slot with '=:'
Vehicle description = "Boats could be made out of wood" // this re-assigns an already defined slot with '='

Car := Vehicle clone

Car slotNames

ferrari := Car clone

ferrari slotNames // since you created ferarri wthout an uppercase letter, it's not a new type
ferrari type //this will return "car" -- the type of the prototype
// ferrari !== Ferarri  -- one is a type and the other is an object of type car


// Method
method("some text" println)  

Car drive := method("Vroom vroom" println)

Car drive //this calls it
ferrari drive //and ferrari inherits it (but not Ferarri the type)

ferrari getSlot("drive")



