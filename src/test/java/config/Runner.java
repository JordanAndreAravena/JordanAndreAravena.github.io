package config;

import com.intuit.karate.junit5.Karate;

public class Runner {
    @Karate.Test
    Karate principal(){
        return Karate.run("classpath:features").tags("TESCID001");
    }
}

