# REST API localization

This is a sample spring-boot project to demonstrate how to support localization for rest API's

Blog post - https://www.rajith.me/2020/10/rest-api-localization-using-spring-boot.html

## Requirements
* Java 8
* Apache Maven 3.5.0 or higher

## How to Run

- Clone the project
- Build the project  
```
mvn clean install
```
- Run the application
```
java -jar target/localization-1.0.0-SNAPSHOT.jar
```

### Sample requests

##### request

```sh
curl -X GET 'http://localhost:8080/api/v1/menu' 
```

##### response:
```sh
["Hot Pot","Sichuan Pork","Braised Pork Balls in Gravy","Shrimp vermicelli"] 
``` 
##### request
```sh
curl -X GET -H "Accept-Language: zh" 'http://localhost:8080/api/v1/menu'
```
##### response:
```sh
["火锅","四川猪肉","肉汁炖猪肉丸","虾粉条"]
``` 

### Reference Documentation
For further reference, please consider the following sections:

https://docs.spring.io/spring-framework/docs/current/javadoc-api/org/springframework/context/support/ResourceBundleMessageSource.html

https://blog.usejournal.com/spring-boot-rest-internationalization-9ab3fce2489