package com.test.crawl;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

public class Ex04 {
	
	public static void main(String[] args) {
		
		// 동적 자원 크롤링 
		// 크롤링 + 자동화 테스트 도구(셀레니움)
		
		//https://www.selenium.dev/downloads/
		// JAVA 4.19.1 (March 29, 2024)
		// jar 파일 모두 WEB-INF > lib 복사
		
		// 크롬은 Evergreen Browser
		// 크롬 웹드라이버
		// 도움말 > 크롬 정보 > 버전 확인 > 버전 123.0.6312.106(공식 빌드) (64비트)
		// 해당 버전에 해당하는 다운로드 
		// chromedriver	win64 > 주소창 복사 다운로드 > chromedrive.exe > dev 폴더에 복사
		
		// m1();
		// m2();
		m3();
		
	
	}
	
	
	private static void m3() {
		
		String url = "http://localhost:8090/crawl/ex05.jsp";
		
		String webDriverID = "webdriver.chrome.driver";
		String path = "C:\\class\\dev\\chromedriver.exe";
		System.setProperty(webDriverID, path);
		
		WebDriver driver = new ChromeDriver();
		driver.get(url);
		
		List<WebElement> list = 
		driver.findElements(By.cssSelector("#list2 > li"));
		
		for (WebElement li : list ) {
			System.out.println(li.getText());
		}
		
		
	}
	
	private static void m2() {
		
		
		String url = "http://lms1.sist.co.kr/worknet/SLogin.asp";
		
		String webDriverID = "webdriver.chrome.driver";
		String path = "C:\\class\\dev\\chromedriver.exe";
		System.setProperty(webDriverID, path);
		
		WebDriver driver = new ChromeDriver();
		driver.get(url);
		
		WebElement strLoginID = driver.findElement(By.id("strLoginID"));
		strLoginID.sendKeys("박미영");
		
		WebElement strLoginPwd = driver.findElement(By.id("strLoginPwd"));
		strLoginPwd.sendKeys("1193");
		
		WebElement btn = driver.findElement(By.cssSelector(".login-btn > input"));
		btn.click();
		
		try {
			
			// 프로그램이 잠깐 멈춤
			Thread.sleep(3000);
			
		} catch (Exception e) {
			System.out.println("Ex04.m2");
			e.printStackTrace();
		}
		
		WebElement td = driver.findElement(By.cssSelector("#content > div > div > div > div.panel-body > form > table > thead > tr:nth-child(5) > td:nth-child(2)"));
		
		System.out.println(td.getText());
		
	}
	
		private static void m1() {
			
			String webDriverID = "webdriver.chrome.driver";
			String path = "C:\\class\\dev\\chromedriver.exe";
			
			System.setProperty(webDriverID, path);
			
			WebDriver driver = new ChromeDriver();
			
			String url = "http://localhost:8090/crawl/ex05.jsp";
			driver.get(url);
			
			WebElement btn1 = driver.findElement(By.id("btn1"));
			// btn1.click();
			
			WebElement txt1 = driver.findElement(By.id("txt1"));
			txt1.sendKeys("홍길동입니다.");
			
		}

}
