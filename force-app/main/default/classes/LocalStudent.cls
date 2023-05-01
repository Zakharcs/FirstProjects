
//  --------- 4/24/2023 ------------------
//  -----LocalStudent -------- Constructor  

public class LocalStudent extends Student{


    public Integer seatId ;

    public LocalStudent(){
        // call parent class constructor from student class
        // to reuse it's functinallity
        // if we do not coll SUPER() explicitly
        // compiler will automatically insert super()
        // on the first line of any constructor
        // if you do it yourself,
        // IT MUST BE ONLY ON THE FIRST LINE
        
        // super();
        
        // this.firstName = 'LocalUnknown' ;
        // this.lastName  = 'LocalUnknown' ;
        // this.studentId = 100 ;
        // this.seatId    = 974345 ;

        super('LocalUnknown', 'LocalUnknown', 100);
        this.seatId    = 1 ;
        System.debug('Local Student no param constructor'); 
        
    }

    public LocalStudent(String firstName, String lastName, Integer studentId, Integer seatId){

        // this.firstName = firstName ;
        // this.lastName  = lastName ;
        // this.studentId = studentId ;
        super(firstName, lastName, studentId);
        this.seatId    = seatId ;

    }


}
