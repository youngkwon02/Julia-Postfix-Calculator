global STACK = []

function enter(num)
  push!(STACK, num)
end

function clear()
  STACK = []
  println()
end

function Integer(strNum)
  return parse(Int, strNum)
end

function Float(strNum)
  return parse(Float64, strNum)
end

function add()
  val1 = pop!(STACK)
  val2 = pop!(STACK)
  result = floor(val1 + val2, digits = 10)
  push!(STACK, result)
  println(result)
end

function sub()
  val1 = pop!(STACK)
  val2 = pop!(STACK)
  result = floor(val2 - val1, digits = 10)
  push!(STACK, result)
  println(result)
end