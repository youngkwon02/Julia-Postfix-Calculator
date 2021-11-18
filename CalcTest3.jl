# Basic Calculator
include("Calc.jl")
# Extend to recognize fractions and complex numbers
include("Rational.jl")
include("Complex.jl")

println("\nrun CalcTest3.jl\n")

# conputing (3 + 3i) + (1.5 - 0.5i) - (1 + 4i)
println("*** conputing (3 + 3i) + (1.5 - 0.5i) - (1 + 4i) ***")
enter(Complex("3 + 3i"))
enter(Complex("1.5 - 0.5i"))
add()
enter(Complex("1 + 4i"))
sub()


# conputing (1 + 2.5i) * (-2.5 - 3i) + 3/5
clear()
println("*** conputing (1 + 2.5i) * (-2.5 - 3i) + 3/5 ***")
enter(Complex("1.5 + 2.5i"))
enter(Complex("-2.5 - 3i"))
mul()
enter(Rational("3/5"))
add()