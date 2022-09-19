pub contract MyThirdContract {

  pub var message: String

  pub var myNumber: Int

  pub fun changeMessage(newMessage: String) {
    self.message = newMessage
  }

  pub fun myNewNumber(newNumber: Int) {
    self.myNumber = newNumber
  }

  init() {
    self.message = "My Third contract"
    self.myNumber = 0
  }

}