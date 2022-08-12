import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.AfterTest;
import org.testng.annotations.BeforeTest;
import org.testng.annotations.Test;

import java.util.concurrent.TimeUnit;

public class Main {
    WebDriver driver = new ChromeDriver();
    @Test(invocationCount = 2)
    public void applaunch() {

//            System.setProperty("webdriver.chrome.driver", "C:\\chromedriver_win32.zip\\chromedriver.exe");
//
//            Driver.manage().window().maximize();
////TEST CASE 1
//            Driver.get("https://www.flipkart.com/");
//            WebElement mailid = Driver.findElement(By.xpath("/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input"));
//            mailid.sendKeys("9787603638");
////memberid.sendKeys("M10026");
//            WebElement password = Driver.findElement(By.xpath("/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input"));
//            password.sendKeys("@Run15061999");
//            WebElement login = Driver.findElement(By.xpath("/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button"));
//            login.click();
//            WebElement beautyproduct = Driver.findElement(By.xpath("/html/body/div/div/div[2]/div/div/div[9]"));
//            beautyproduct.click();
//        }
//    }
//
//
            // Puts an Implicit wait, Will wait for 10 seconds before throwing exception
            driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

            // Launch website
            driver.navigate().to("http://www.calculator.net");
            driver.manage().window().maximize();
        }

        @BeforeTest
        public void calculatepercent() {
            // Click on Math Calculators
            driver.findElement(By.xpath(".//*[@id='menu']/div[3]/a")).click();

            // Click on Percent Calculators
            driver.findElement(By.xpath(".//*[@id='menu']/div[4]/div[3]/a")).click();

            driver.findElement(By.id("cpar1")).sendKeys("10");

            // Enter value 50 in the second number of the percent Calculator
            driver.findElement(By.id("cpar2")).sendKeys("50");

            // Click Calculate Button
            driver.findElement(By.xpath(".//*[@id='content']/table/tbody/tr/td[2]/input")).click();

            // Get the Result Text based on its xpath
            String result =
                    driver.findElement(By.xpath(".//*[@id='content']/p[2]/span/font/b")).getText();

            // Print a Log In message to the screen
            System.out.println(" The Result is " + result);

            if(result.equals("5")) {
                System.out.println(" The Result is Pass");
            } else {
                System.out.println(" The Result is Fail");
            }
        }

        @AfterTest
        public void terminatetest() {
            driver.close();
        }}