# Stack related things
global STACK = []

function enter(num)
  push!(STACK, num)
end

function clear()
  STACK = []
  println()
end


# Basic number related things
struct Integer
  value::String
end

struct Float
  value::String
end

function add()
  val1 = pop!(STACK)
  val2 = pop!(STACK)
  typeAndResult = AddOper(val1, val2)
  typeAndResult[2] = floor(typeAndResult[2], digits = 10)
  push!(STACK, typeAndResult[1](string(typeAndResult[2])))
  println(typeAndResult[2])
end

function AddOper(val1::Integer, val2::Integer)
  return [Float, parse(Float64, val1.value) + parse(Float64, val2.value)]
end

function AddOper(val1::Integer, val2::Float)
  return [Float, parse(Float64, val1.value) + parse(Float64, val2.value)]
end

function AddOper(val1::Float, val2::Integer)
  return [Float, parse(Float64, val1.value) + parse(Float64, val2.value)]
end

function AddOper(val1::Float, val2::Float)
  return [Float, parse(Float64, val1.value) + parse(Float64, val2.value)]
end

function sub()
  val1 = pop!(STACK)
  val2 = pop!(STACK)
  typeAndResult = SubOper(val1, val2)
  typeAndResult[2] = floor(typeAndResult[2], digits = 10)
  push!(STACK, typeAndResult[1](string(typeAndResult[2])))
  println(typeAndResult[2])
end

function SubOper(val1::Integer, val2::Integer)
  return [Float, parse(Float64, val2.value) - parse(Float64, val1.value)]
end

function SubOper(val1::Integer, val2::Float)
  return [Float, parse(Float64, val2.value) - parse(Float64, val1.value)]
end

function SubOper(val1::Float, val2::Integer)
  return [Float, parse(Float64, val2.value) - parse(Float64, val1.value)]
end

function SubOper(val1::Float, val2::Float)
  return [Float, parse(Float64, val2.value) - parse(Float64, val1.value)]
end