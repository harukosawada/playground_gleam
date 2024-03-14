import gleam/io.{println,debug} // Unqualified imports
import gleam/int.{max,clamp}
import gleam/float.{max as float_max,ceiling}

pub fn main() {
  io.println("Qualified import") // println needs string.
  println("Unqualified import") 
  debug(4) // debug can receive any type to print.

  // Int Arithmetic Operators
  debug(1 + 5 - 1 / 2 * 3 % 2)
  // Int Comparisons -> >, < , >=, <=
  debug(2 > 1)
  // Equality. This works for any type.
  debug(1 == 1)
  // Int Functions
  debug(max(42,77))
  debug(clamp(5,10,20))

  // Float Arithmetic Operators 
  debug(1.0 +. 5.0 -. 1.5 /. 2.5 *. 3.5)
  // Float Comparisons -> >., <. , >=., <=.
  debug(1.1 >. 1.2)
  // Equality
  debug(1.1 == 1.1)
  // Division by zero is not an error
  debug(3.14 /. 0.0)
  // Float functions
  debug(float_max(2.0,9.5))
  debug(ceiling(5.4))


    // Underscores
  debug(1_000_000)
  debug(10_000.01)

  // Binary, octal, and hex Int literals
  debug(0b00001111)
  debug(0o17)
  debug(0xF)

  // Scientific notation Float literals
  debug(7.0e7)
  debug(3.0e-4)
}
