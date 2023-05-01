
// ----------- 4/25/2023 ------------


Dog d1 = new Dog('Sharik', 3, 'Golden Retriver');
System.debug('d1 value is : ' + d1);
d1.makeNoise();


System.debug('d1.getInfo(\'Hills\')  value is : ' + d1.getInfo('Hills') );



Cat c1 = new Cat('Tom', 5, 'Yellow');
System.debug('c1 value is : ' + c1);
c1.makeNoise();
System.debug('c1.getInfo()  value is : ' + c1.getInfo('Fish') );



List<Animal> animalList = new List<Animal>();

// add 2 dogs and 2 cats into this list
// go throgh each animal
// let it make noise and print it out getInfo result
animalList.add ( new Dog('Bobik', 3, 'Toy Terrier') );
animalList.add ( new Dog('Rokie', 5, 'German Shapper') );

animalList.add ( new Cat('Eva ', 2, 'White') );
animalList.add ( new Cat('Rosi ', 3, 'Black') );

for(Animal each : animalList) {
    System.debug('Current Animal::: ' + each);
    each.makeNoise();

    System.debug('each.getInfo()  value is ::: ' + each.getInfo('Fish') );


    

}

