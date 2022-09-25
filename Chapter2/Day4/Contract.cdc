pub contract Fruit {

  pub var apples: {String: Apple}

  pub struct Apple {
    pub let name: String
    pub let carbs: Int
    pub let fat: Int
    pub let protein: Int
    pub let sugar: Int

    init(_name: String, _carbs: Int, _fat: Int, _protein: Int, _sugar: Int) {
      self.name = _name
      self.carbs = _carbs
      self.fat = _fat
      self.protein = _protein
      self.sugar = _sugar
    }
  }

  pub fun newApple(name: String, carbs: Int, fat: Int, protein: Int, sugar: Int) {

    let newApple = Apple(_name: name, _carbs: carbs, _fat: fat, _protein: protein, _sugar: sugar)
    self.apples[name] = newApple
  
  }

  init() {
    self.apples = {}
  }

}