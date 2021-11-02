package com.karateTutorials;

import static org.junit.Assert.assertTrue;

import java.io.File;

import org.junit.Test;

import com.baseUtils.BaseClass;
import com.intuit.karate.Results;
import com.intuit.karate.Runner;

public class KarateRunner {
	
	@Test
	public void scenarioRunner() {
		  Results results = Runner.path("classpath:com/karateTutorials/multiBrowserTest.feature")
		  .backupReportDir(false).outputCucumberJson(true).parallel(4);
		BaseClass.generateReport(results.getReportDir());
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
	}
	
	@Test
	public void dockerTest() {
		Results results = Runner.path("classpath:com/karateTutorials/DockerTest.feature")
				  .backupReportDir(false).outputCucumberJson(true).parallel(4);
				BaseClass.generateReport(results.getReportDir());
		        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
	}
	
	public String returnValue(String[] val) {
		String temp = "";
		String osName = System.getProperty("os.name");
		String userName = System.getProperty("user.name");
		for(String x : val) {
			temp = temp + x;
		}
		File obj = new File("C:\\Users\\talk2\\Downloads\\idcard.pdf");
		if(obj.exists()) {
			System.out.println("File is available in Downloads");
		}
		
		return "This is working"+temp+":"+ osName+":"+userName;
	}
}
