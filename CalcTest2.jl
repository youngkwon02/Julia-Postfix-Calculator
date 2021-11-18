# Basic Calculator
include("Calc.jl")
# Extend to recognize fractions
include("Rational.jl")

println("\nrun CalcTest2.jl\n")

# conputing 1 + 1/2 + 1/3 + 1/4 - 1/12
println("*** conputing 1 + 1/2 + 1/3 + 1/4 - 1/12 ***")
enter(Integer("1"))
enter(Rational("1/2"))
add()
enter(Rational("1/3"))
add()
enter(Rational("1/4"))
add()
enter(Rational("1/12"))
sub()

# conputing 2/3 - 10 + 10.5
clear()
println("*** conputing 2/3 - 10 + 10.5 ***")
enter(Rational("2/3"))
enter(Integer("10"))
sub()
enter(Float("10.5"))
add()