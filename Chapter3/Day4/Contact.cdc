pub contract Countries {

pub resource interface CountryInfoInterface {
    pub var name: String
    pub var population : Int
    pub fun addCountryName(_name: String): String
}

  pub resource CountryInfo: CountryInfoInterface {
  
    pub var name: String
    pub var population : Int

    pub fun addCountryName(_name: String): String {
      self.name = _name
      return self.name
    }

    pub fun addCountryPopulation(_population: Int): Int {
    self.population = _population
    return self.population
    }
  
  }

  init() {
    self.name = "Iran"
    self.population = 83.99
  }

    pub fun noInterfaceAccess() {
    let country: @CountryInfo <- create CountryInfo()
    country.addCountryName(_population: "Canada")
    log(country.name)

    destroy country
  }

  pub fun noInterfaceAccess() {
    let country: @CountryInfo{CountryInfoInterface} <- create CountryInfo()
    let countryName = country.addCountryName(_name: "Canada")
    log(countryName)

    destroy country
  }

}