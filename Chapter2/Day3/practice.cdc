var people: [String] = ["John", "Jacob", "Andy"]
var addresses: [Address] = [0x01, 0x02, 0x03]
log(addresses[0])
log(addresses[1])
log(addresses[2])
poeple.append("Tatsuki")
log(people)
poeple.contains("Jacob")
poeple.contains("Jack")
people.remove(at: 1) //removes Jacob
log(people.length) //3

var names: {String: String} = {"Payam": "Beigi", "Tom": "Cruise", "Jack": "Sparrow"} // {type: type}
log(names["Payam"]) // "Beigi"

var favouriteNums: {String: Int} = {"Payam": 100, "Tom": 40, "Jack": 23}
log(favouriteNums["Payam"]) // 100

favoriteNums.insert(key: "Justin Bieber", 120)
//{"Payam": 100, "Tom": 40, "Jack": 23, "Justin Bieber", 120}
let removedNumber = favoriteNums.remove(key: "Jack")
log(favoriteNums) // {"Payam": 100, "Tom": 40, "Justin Bieber", 120}
log(removedNumber) // 23

log(favoriteNums.keys) // ["Payam", "Tom", "Justin Bieber"]
log(favoriteNums.values) // [100, 40, 120]

//optional
var name: String? = "Tom" //it's either a string or nil
var name: String? = nil

//Force Unwrap Operator
var name1: String? = "Tom"
var unwrappedName1: String = name1! //unwraps and removes optional type

var name2: String? = nil
var unwrappedName2: String = name2! //Program will abort because it cannot unwrap an unacceptable type

//The return value of a dictionary is optional,
//script function with a type does not equal the type with the optional return of a dictionary
//in order to avoid this error you should return using force-unwrap operator
pub fun main(): Int {
  let exampleDictionary: {String: Int} = {"Hi": 1, "Bonjour": 2, "Hola": 3}
  return exampleDictionary["Bonjour"]!
}
//without exclamation mark> Error: Int not equal to Int?
//unwrapping will reurn the actual type and not the optional

//if the value might be nil we need to set the type as optional in function
pub fun main(): Int? {
  let exampleDictionary: {String: Int} = {"Hi": 1, "Bonjour": 2, "Hola": 3}
  return exampleDictionary["Bonjour"]
}
//No errors and incase the value of "Bonjour" is nil the program will function without aborting