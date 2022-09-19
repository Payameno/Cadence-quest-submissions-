import MyThirdContract from 0x03

transaction(myNewNumber: Int) {

  prepare(acct: AuthAccount) {}

  execute {
    MyThirdContract.myNewNumber(newNumber: myNewNumber) {
    }
    
  }

}