//fix?

pub contract Stuff {

    pub struct interface ITest {
      pub var greeting: String
      //(3)Add variable and function
      pub var favouriteFruit: String
      pub fun changeGreeting(newGreeting: String)
    }

    // (1)ERROR:
    // `structure Stuff.Test does not conform 
    // to structure interface Stuff.ITest`
    pub struct Test: ITest {
      pub var greeting: String

      //(1)Add favorite fruit
      pub var favouriteFruit: String

      pub fun changeGreeting(newGreeting: String): String {
        self.greeting = newGreeting
        return self.greeting // returns the new greeting
      }

      init() {
        self.greeting = "Hello!"
        //(2)initialize favourite fruit
        self.favouriteFruit = "Mango"
      }
    }

    pub fun fixThis() {
    //(3)fixed the definition
      let test: Test{ITest} <- create Test()
      let newGreeting = test.changeGreeting(newGreeting: "Bonjour!") // (4)ERROR HERE: `member of restricted type is not accessible: changeGreeting`
      log(newGreeting)
    }
}
