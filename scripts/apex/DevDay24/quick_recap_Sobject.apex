
// Day 24------------- 3/20/2023 ---------------

// --------- S Object ------------------
// store many names  -->> List<String>

// store unique names -->> Set<String>

// store student names and score -->> Map<String,Integer>

// store all the groups(that contains many names ) into a collection

// how to represent one group that have many names --> List<String>
// how to represent many groups --> List< List<String> >

List<String> group1Names = new List<String>{ 'Zhamilia','Marina','madina','Vita'};
List<String> group2Names = new List<String>{ 'Ali', 'Hyder', 'Dua', 'Elif' };
List<String> group3Names = new List<String>{ 'Jon', 'Snow', 'Know', 'nothing' };

List<List<String>> groupList = new List<List<String>>{
  group1Names,
  group2Names,
  group3Names
};
System.debug('groupList value is : ' + groupList);



// accessing th eitem list, we use index and it starts from 0



// what if we want to make it slightly easier to access the group that contains names
// from eample if we provide 1 =>( Zhamilia, Marina, Madian, Vita)
// from eample if we provide 2 =>( ALi, Hyder, Dua, Elif)
// from eample if we provide 3 =>( Jon, nothing)
//Map<Integer, List<String>>   =>> integer, because we use 1,2,3,
//Map< String, List<String> >  =>> we would use string for group1,2,3 because it has names


Account a = new Account(Name = 'Apex Inc') ;
insert a ;   
//Database.insert(a, false) ;  or we can do this way

a.AnnualRevenue = 900000 ; 
update a ; 

List<Account> accList = new List<Account>();
accList.add ( new Account (Name = 'Sample Account 1') );
accList.add(a);
// insert the 'Sample Account 1' and update 'Apex Inc' in SF
upsert accList ;  // update and insert

//delete this record
delete accList ; 

// restore the item that deleted
undelete accList ; 




