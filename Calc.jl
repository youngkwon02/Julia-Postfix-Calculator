# Stack related things
global STACK = []

function enter(num)
  push!(STACK, num)
end

function clear()
  global STACK = []
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
  push!(STACK, typeAndResult[1](typeAndResult[2]))
  println(typeAndResult[2])
end

function AddOper(val1::Integer, val2::Integer)
  result = floor(parse(Float64, val1.value) + parse(Float64, val2.value), digits = 10)
  return [Float, string(result)]
end

function AddOper(val1::Integer, val2::Float)
  result = floor(parse(Float64, val1.value) + parse(Float64, val2.value), digits = 10)
  return [Float, string(result)]
end

function AddOper(val1::Float, val2::Integer)
  result = floor(parse(Float64, val1.value) + parse(Float64, val2.value), digits = 10)
  return [Float, string(result)]
end

function AddOper(val1::Float, val2::Float)
  result = floor(parse(Float64, val1.value) + parse(Float64, val2.value), digits = 10)
  return [Float, string(result)]
end

function sub()
  val1 = pop!(STACK)
  val2 = pop!(STACK)
  typeAndResult = SubOper(val1, val2)
  push!(STACK, typeAndResult[1](typeAndResult[2]))
  println(typeAndResult[2])
end

function SubOper(val1::Integer, val2::Integer)
  result = floor(parse(Float64, val2.value) - parse(Float64, val1.value), digits = 10)
  return [Float, string(result)]
end

function SubOper(val1::Integer, val2::Float)
  result = floor(parse(Float64, val2.value) - parse(Float64, val1.value), digits = 10)
  return [Float, string(result)]
end

function SubOper(val1::Float, val2::Integer)
  result = floor(parse(Float64, val2.value) - parse(Float64, val1.value), digits = 10)
  return [Float, string(result)]
end

function SubOper(val1::Float, val2::Float)
  result = floor(parse(Float64, val2.value) - parse(Float64, val1.value), digits = 10)
  return [Float, string(result)]
end

function mul()
  val1 = pop!(STACK)
  val2 = pop!(STACK)
  typeAndResult = MulOper(val1, val2)
  push!(STACK, typeAndResult[1](typeAndResult[2]))
  println(typeAndResult[2])
end

function MulOper(val1::Integer, val2::Integer)
  result = floor(parse(Float64, val1.value) * parse(Float64, val2.value), digits = 10)
  return [Float, string(result)]
end

function MulOper(val1::Integer, val2::Float)
  result = floor(parse(Float64, val1.value) * parse(Float64, val2.value), digits = 10)
  return [Float, string(result)]
end

function MulOper(val1::Float, val2::Integer)
  result = floor(parse(Float64, val1.value) * parse(Float64, val2.value), digits = 10)
  return [Float, string(result)]
end

function MulOper(val1::Float, val2::Float)
  result = floor(parse(Float64, val1.value) * parse(Float64, val2.value), digits = 10)
  return [Float, string(result)]
end

function div()
  val1 = pop!(STACK)
  val2 = pop!(STACK)
  typeAndResult = DivOper(val1, val2)
  push!(STACK, typeAndResult[1](typeAndResult[2]))
  println(typeAndResult[2])
end

function DivOper(val1::Integer, val2::Integer)
  result = floor(parse(Float64, val2.value) / parse(Float64, val1.value), digits = 10)
  return [Float, string(result)]
end

function DivOper(val1::Integer, val2::Float)
  result = floor(parse(Float64, val2.value) / parse(Float64, val1.value), digits = 10)
  return [Float, string(result)]
end

function DivOper(val1::Float, val2::Integer)
  result = floor(parse(Float64, val2.value) / parse(Float64, val1.value), digits = 10)
  return [Float, string(result)]
end

function DivOper(val1::Float, val2::Float)
  result = floor(parse(Float64, val2.value) / parse(Float64, val1.value), digits = 10)
  return [Float, string(result)]
end