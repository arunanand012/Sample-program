package wouataxservice

import com.intuit.karate.gatling.PreDef.karateFeature
import io.gatling.core.Predef._
import scala.concurrent.duration._
import scala.language.postfixOps

class WouaTaxSimulation extends Simulation {
  object Get {
    val getter = exec(karateFeature("classpath:wouataxservice/woua_tax_bvt.feature"))
  }

  var getUser = scenario("Trigger Signup API with valid parameter").exec(Get.getter)
//  var login = scenario("Trigger Customer login API with valid parameter").exec(Get.getter)
//  setUp(getUser.inject(atOnceUsers(10)
//  ))//hitting 10000 users at a time for stress testing


//  setUp(login.inject(atOnceUsers(10)),getUser.inject(atOnceUsers(10)))

  setUp(getUser.inject(rampUsers(3).during(1.minutes)))
//  setUp(getUser.inject(constantUsersPerSec(10).during(5 seconds)))
}






//var postUser = scenario("Hit Sign up Api with Valid data/parameter").exec(karateFeature("classpath:Performance/Signup.feature"))
//  setUp(getUser.inject(
//    incrementUsersPerSec(5)
//      .times(5)
//      .eachLevelLasting(10)
//
//      .startingFrom(10) // users per sec too!
//  ))
//  setUp(getUser.inject(
//    incrementConcurrentUsers(5)
//      .times(5)
//      .eachLevelLasting(10)
//
//      .startingFrom(10) // users per sec too!
//  ))
//   atOnceUsers(5),// 2    constantUsersPerSec(20).during(15), // 4
//      constantUsersPerSec(20).during(15).randomized, // 5
//      rampUsersPerSec(10).to(20).during(10), // 6
//      rampUsersPerSec(10).to(20).during(10).randomized, // 7
//      heavisideUsers(1000).during(20) // 8
//  )). assertions(global.responseTime.max.gt(100),
//      global.successfulRequests.percent.gt(95),
//      details("GET /v1/tenants/get-tenant-details/chat.qa.ertc.com/").requestsPerSec.lte(12) )
////    ,
////    postUser.inject(atOnceUsers(10))
////  )
//}
