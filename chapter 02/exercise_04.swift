import Foundation
import Numerics
import ScienceKit

// Asking the user for inputs.
print("Enter the distance between planets in light year: ", terminator: "")
let x: Double = Double(readLine()!)!
print("Enter the speed of the spaceship as a fraction of c: ", terminator: "")
let v: Double = Double(readLine()!)!

// Earth frame time
let tEarth: Double = x / v

// Lorentz factor
let gamma: Double = 1 / sqrt(1 - v*v)

// Ship frame time
let tShip: Double = tEarth / gamma

// Print the result
print("Time in Earth's frame: \(tEarth.rounded(toPlaces: 4)) years")
print("Time in ship's frame: \(tShip.rounded(toPlaces: 4)) years")
