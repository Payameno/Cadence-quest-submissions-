pub contract Laptops {
 
  pub var hardwares: @{String: Hardware}

  pub resource Hardware {

    pub let specification: String

    init(_specification: String) {
      self.specification = _specification
    }
  }

  pub fun hardwareReference(key: String): &Hardware? {
    return (&self.hardwares[key] as &Hardware?)!
  }

  init() {
    self.hardwares <- {
      "CPU": <- create Hardware(_specification: "AMD Ryzen 9 7950X"),
      "GraphicCard": <- create Hardware(_specification: "TUF-GTX1660TI-O6G-EVO-GAMING"),
      "RAM": <- create Hardware(_specification: "Samsung DDR5-4800 (2 x 16GB)")
    }
  }
 }
