import Laptops from 0x01

pub fun main(): String {
  let hardwareReference = Laptops.hardwareReference(key: "GraphicCard")
  return hardwareReference.specification
}