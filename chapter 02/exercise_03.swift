import Foundation
import Numerics
import ScienceKit

print("Enter a value for x:", terminator: " ")
let x: Double = Double(readLine()!)!

print("Enter a value for y:", terminator: " ")
let y: Double = Double(readLine()!)!

let r: Double = sqrt(x*x + y*y)
let θ: Double = atan2(y, x)

print("The cartesian coordinates (\(x), \(y)) are equivalent to the polar coordinates (\(r), \(θ.convert(from: .radian, to: .degree)))")
