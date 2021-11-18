# Basic Calculator
include("Calc.jl")
# Extend to recognize fractions
include("Rational.jl")
include("Complex.jl")

enter(Complex("3 + 2i"))
enter(Complex("2 -2i"))
sub()
enter(Complex("2 -4i"))
add()

clear()
enter(Complex("1 + 2i"))
enter(Rational("1/2"))
add()
enter(Complex("3 + 1i"))
add()
enter(Rational("2/5"))
sub()