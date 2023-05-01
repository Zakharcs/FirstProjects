

// ------------- 4/28/2023 -----------------

//Square s = new Square ('Box', 10);     // provides the same result

//Rectangle s = new Square ('Box', 10);  // privides the same result

Shape s = new Square ('Box', 10);     // from a child to a parent  ===> upCasting

s.calculateArea();
System.debug('s value is : ' + s);



// downcast the variable S DataType to Square 
                                       
//Square sq = s ; 
                     //Compile error at line 18 column 
                     //Illegal assignment from Shape to Square


Square sq = (Square) s ;  // castdown   (Square) s ; casting means changing dataType from super type to subtype ===> downcasting

// get the count of all Account and store it in Integer
AggregateResult result = [SELECT Count (Id) total FROM Account];
Integer count  = (Integer) result.get('total');
System.debug('count value is ::: ' + count);







