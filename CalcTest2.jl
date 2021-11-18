# Basic Calculator
include("Calc.jl")
# Extend to recognize fractions
include("Rational.jl")

enter(Integer("1"))
enter(Rational("1/2"))
add()
enter(Rational("1/3"))
add()
enter(Rational("1/4"))
add()
enter(Rational("1/12"))
sub()

clear()
enter(Rational("2/3"))
enter(Integer("10"))
sub()
enter(Float("10.5"))
add()
