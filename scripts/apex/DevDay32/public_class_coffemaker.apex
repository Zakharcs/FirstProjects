
CoffeMaker c1 = new CoffeMaker();

c1.brand = 'Nespresso';
c1.capacity = 9;

System.debug('c1 value is : ' + c1); 


c1.makeCoffe();

c1.setTimer (5);
c1.setTimer (10);

c1.clean();
c1.addWater(50);

c1.addFlavor('Vanilla Latte');






