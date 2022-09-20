## Script Templates

**Transaction**

>transaction(myNewNumber: Int) {

  >prepare(acct: AuthAccount) {}

  >execute {
    >MyThirdContract.myNewNumber(newNumber: myNewNumber) {
    >}

  >}

>}

**Result - initial value(0) && After Transaction(09202022)**

![](images/Chapter2Day2-transaction.png)