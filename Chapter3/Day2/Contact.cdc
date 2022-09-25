pub contract carInsurance {

  pub var drivers: @[String: Insurance]
  pub var car: @{String: Insurance}

  pub resource Insurance {
+
    pub let driverName: String
    //pub let model: Int
    pub let make: String
    //pub let color: String

    init() {
      self.driverName = "Payam Beigi"
      //self.model = 2022
      self.make = "Mazda3"
      //self.color = "Silver"
    }
  }

  //Add resource to the driver array
  pub fun addDriver(driver: @Insurance) {
    self.drivers.append(<- driver)
  }

  //Remove the resource from the driver array
  pub fun removeDriver(index: Int): Insurance {
    return <- self.drivers.remove(at: index)
  }

  //destroy the resource from the driver array

  //1 - Add resource to the car dictionary
    pub fun addCar(_car: @Insurance) {
      let key = _car.make
      self.car[key] <-! _car
    }

  //2 - Add resource to the car dictionary
    pub fun addCar2(car2: @Insurance) {
    
      let key = Insurancae.make
      let prevVarCar <- self.car[key] <- car2
      destroy prevVarCar
    }

  //Remove the resource from the car dictionary

  pub fun removeCar(key: String) {
  
    let car <- self.car.remove(key: key) ?? panic("Could not find the car")
    return <- car
  }

  //destroy the resource from the car dictionary

  pub fun 

  init() {
    self.drivers <- []
    self.car <- {}
  }


}
