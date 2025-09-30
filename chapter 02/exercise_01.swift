import Foundation
import Numerics
import ScienceKit


// We export the gravitational acceleration in a easy to use constant.
let g: Double = Double.standardGravityAcceleration

// Getting the height of the tower.
print("Enter the heigh of the tower in meters:", terminator: " ")
let h: Double = if let input: String = readLine(), let value: Double = Double(input) {
    value
} else {
    0.0
}

// We start with the gravitational acceleration : a(t) = -9.81
var motion = Polynomial([-g])
// that we integrate once to get the speed, with the initial speed zero
motion.integrate(constant: 0.0)
// and a second time to get the position, with the initial position of h.
motion.integrate(constant: h)

// The result is just the x value for the root of our function.
let result: Double = motion.realRoots.last!

print("A ball dropped from a \(h) meters high tower will take about \(result.rounded(toPlaces: 3)) seconds to hit the ground!")
