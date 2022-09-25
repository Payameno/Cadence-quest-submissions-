1- Resources are secure containers of inofmration, they are impossible to copy, to overwrite, and can be used only
inside the contract. In order to lose them you should explicitly destroy them.

2- Resources are best to be used for properties we do not want to make any error with, 
for ex, for an NFT to make sure it's immutable and impossible to copy.

3- Keyword: create resource 

4- Resources can only be created inside a contract

5- 

6- 

pub contract Test {

  pub resource Team {
  
    pub let ready: Bool //type boolean

    init() {
      self.ready = true
    }

  }

  pub fun createTeam(): @Team {
  
    let myTeam <- create Team()
    return <- myTeam
  
  }



}