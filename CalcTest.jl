# Basic Calculator
include("Calc.jl")

# conputing 10 + 20
enter(Integer("10"))
enter(Integer("20"))
add()

# computing 10 + 3.14159 - 2.71828
clear()
enter(Integer("10"))
enter(Float("3.14159"))
add()
enter(Float("2.71828"))
sub()
