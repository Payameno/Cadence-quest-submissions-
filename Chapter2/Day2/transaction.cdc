import MyThirdContract from 0x01

transaction(myNewNumber: Int) {

  prepare(acct: AuthAccount) {}

  execute {
    MyThirdContract.myNewNumber(newNumber: myNewNumber) {
    }

  }

}