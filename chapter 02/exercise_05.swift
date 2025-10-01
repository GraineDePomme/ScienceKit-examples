import Foundation
import Numerics
import ScienceKit

let m: Double = Double.electronMass
let h: Double = Double.reducedPlanckConstant

print("Enter the initial kinetic evergy of the electron in eV: ", terminator: "")
let E: Double = Double(readLine()!)!
print("Enter the height of the potentiel step in eV: ", terminator: "")
let V: Double = Double(readLine()!)!

let k1: Double = sqrt(2 * m * E) / h
let k2: Double = sqrt(2 * m * (E - V)) / h

let T: Double = 4 * k1 * k2 / pow(k1 + k2, 2) * 100
let R: Double = pow( (k1 - k2) / (k1 + k2) , 2) * 100

print("An electron with a kinetic energy of \(E) eV encountering a potential step of \(V) eV will have a \(T.rounded(toPlaces: 4))% chance to be transmited and a \(R.rounded(toPlaces: 4))% chance to be reflected!")
