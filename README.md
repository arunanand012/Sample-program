# API testing using the Karate Framework

This sample project includes api testing with Karate Framework

## Getting Started 
We required the below tools to test the API using karate framework.

⁕ Karate requires Java 8 (at least version 1.8.0_112 or greater) 
  → https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

⁕ Intellij 
  → https://www.jetbrains.com/idea/download/#section=windows (Maven, Gradle or Eclipse to be installed.)

⁕ karate plugin

⁕ Karate Github
  → https://github.com/intuit/karate

Dummy Demo site
  → https://reqres.in

## Running in IntelliJ
If you use IntelliJ IDEA, download the plugins before starting the work

## Maven Dependency

### Create the new project 
Let's create a brand new Maven project. From the Welcome Screen select New Project, or if you already have an IntelliJ IDEA project open, select File -> New -> Project... Select Maven from the options on the left, and choose the JDK for the project.

![pic1](https://user-images.githubusercontent.com/111106737/185327841-abc1f5a0-63b7-4ec9-8afd-4945d819f1c9.png)

Press the #### ADD button and declare a group id, the artifact id and version.( refer the karatelabs official documentation for the version).


![pic2](https://user-images.githubusercontent.com/111106737/185332605-9a5fd41e-0292-40e9-9759-06d665382f61.png)



As well as creating the basic pom.xml, IntelliJ IDEA has also created the default directory structure for a Maven project with the source and test folders defined.

<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>
 
    <groupId>org.example</groupId>
    <artifactId>Karate_API_testing</artifactId>
    <version>1.0-SNAPSHOT</version>
    <packaging>jar</packaging>
 
    <properties>
        <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
        <java.version>1.8</java.version>
        <maven.compiler.version>3.8.1</maven.compiler.version>
        <maven.surefire.version>2.22.2</maven.surefire.version>        
        <karate.version>1.2.0</karate.version>
    </properties>    

    <dependencies>         
        <dependency>
            <groupId>com.intuit.karate</groupId>
            <artifactId>karate-junit5</artifactId>
            <version>${karate.version}</version>
            <scope>test</scope>
        </dependency>		
    </dependencies>

    <build>
        <testResources>
            <testResource>
                <directory>src/test/java</directory>
                <excludes>
                    <exclude>**/*.java</exclude>
                </excludes>
            </testResource>
        </testResources>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>${maven.compiler.version}</version>
                <configuration>
                    <encoding>UTF-8</encoding>
                    <source>${java.version}</source>
                    <target>${java.version}</target>
                    <compilerArgument>-Werror</compilerArgument>
                </configuration>
            </plugin>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-surefire-plugin</artifactId>
                <version>${maven.surefire.version}</version>
                <configuration>
                    <argLine>-Dfile.encoding=UTF-8</argLine>
                </configuration>
            </plugin>          
        </plugins>        
    </build>       
    
</project>


### create the .feature files

select the features file from src/test/java

![pic3](https://user-images.githubusercontent.com/111106737/185337756-91ba9ce6-5161-4f1f-a954-bf87afe147c0.png)

create the scenario, using the dummy demo site.
(https://reqres.in/api/users?page=2)

### Test report
Run the test scenarios and the get the report as a HTML format. copy the link and paste in the browser.

![pic5](https://user-images.githubusercontent.com/111106737/185367316-94f03049-e86e-4c4b-90b2-11f4fd597acb.png).














