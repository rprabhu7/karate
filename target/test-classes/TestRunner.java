


//import org.junit.BeforeClass;
//import org.junit.runner.RunWith;

import com.intuit.karate.junit5.Karate;

//@RunWith(karate.class)
class TestRunner {
    @Karate.Test
    Karate testAll() {
        return Karate.run("classpath:tests").relativeTo(getClass());
    }
//    @BeforeClass
//    public static void before() {
//    	System.setProperty("karate.env","qa");
//    }
}
