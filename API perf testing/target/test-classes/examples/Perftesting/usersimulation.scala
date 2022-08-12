package examples.Perftesting

import com.intuit.karate.gatling.PreDef.{karateFeature, karateSet}
import io.gatling.core.Predef._
import io.gatling.core.structure.PopulationBuilder
import io.gatling.core.scenario.Simulation
import scala.concurrent.duration.DurationInt
class usersimulation extends Simulation {

object Get {
  val getter = exec(karateFeature("\\src\\test\\java\\examples\\Perftesting\\perfAPI.feature"))
}
  var getUser = scenario("get all users and then get the first user by id").exec(Get.getter)

  setUp (getUser.inject(rampUsers(2).during(1.minutes)))

}
