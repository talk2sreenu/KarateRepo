package com.karateTutorials;

import static org.junit.Assert.*;

import org.junit.Test;

import com.baseUtils.BaseClass;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;

public class ParallelTestRunner {
	
	@Test
	public void testParallel() {
        Results results = Runner.path("classpath:com/karateTutorials").tags("@JenkinsTest").outputCucumberJson(true).parallel(5);
        BaseClass.generateReport(results.getReportDir());
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }
}
