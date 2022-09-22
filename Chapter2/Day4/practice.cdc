//Structs are to create types

pub contract Authentication {

  pub let profiles: {Address: profile}

  pub struct profile {
    pub let firstName: String
    pub let lastName: String
    pub let birthday: String
    pub let account: Address

    //Initializing with four arguments
    init(_firstName: String, _lastName: String, _birthday: String, _account: Address) {
      self.firstName = _firstName
      self.lastName = _lastName
      self.birthday = _birthday
      self.account = _account
    }
  }

  pub fun addProfile() {
    let newProfile = profile(_firstName: firstName, _lastName: lastName, _birthday: birthday, _account: account)
    self.profiles[account] = newProfile
  }

  init() {
    self.profiles = {}
  }

}

//Transaction:

import Authentication from 0x01

transaction(firstName: String, lastName: String, birthday: String, account: Address) {

  prepare(singer: AuthAccount) {}

  execute {
    Authentication.addProfile(firstName: firstName, lastName: lastName, birthday: birthday, account: account)
    log("Transaction Completed")
  }

}

//Script
import Authentication from 0x01

pub fun main(account: Address): Athentication.profile {
  return Authentication.profiles[account]!
}