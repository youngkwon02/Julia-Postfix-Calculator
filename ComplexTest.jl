# Basic Calculator
include("Calc.jl")
# Extend to recognize fractions
include("Complex.jl")

enter(Complex("3 + 2i"))
enter(Complex("2 - 2i"))
add()