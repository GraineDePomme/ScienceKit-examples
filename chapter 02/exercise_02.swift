import Foundation
import Numerics
import ScienceKit

let G: Double = Double.newtonianGravitationalConstant
let M: Double = Double.earthMass
let R: Double = Double.earthRadius

func h(_ T: Double) -> Double {
    let a: Double = G * M * pow(T, 2)
    let b: Double = 4 * pow(Double.pi, 2)
    return cbrt(a / b) - R
}

// Asking the user for the value of the orbital period
print("Enter the value of the orbital period in hours: ", terminator: "")
var T: Double = Double(readLine()!)!

let result: Double = h(T.convert(from: .hour, to: .second))

print("For an orbital period of \(T) hours, the satellite must have an altitude of \(result.convert(from: .meter, to: .kilometer).rounded()) km.")
