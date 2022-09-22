import Fruit from 0x01

transaction (name: String, carbs: String, fat: Int, Protein: Int, Sugar: Int) {

  prepare(signer: AuthAccount) {}

  execute {
    Fruit.newApple(name: name, carbs: carbs, fat: fat, protein: protein, sugar: sugar)
    log('New Apple Added')
  }

}