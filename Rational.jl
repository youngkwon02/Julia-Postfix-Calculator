struct Rational
  value::String
end

function RationalParse(RationalElem::Rational)
  strNum = RationalElem.value
  arr = split(strNum, "/")
  if size(arr, 1) == 1
    upper = 1
    lower = 1
  else
    upper = parse(Int, arr[1])
    lower = parse(Int, arr[2])
  end
  return upper // lower
end

function RationalWithOneSlash(strRational::String)
  splitResult = split(strRational, "//")
  upper = parse(Int64, splitResult[1])
  lower = parse(Int64, splitResult[2])
  if upper % lower == 0
    return string(upper / lower)
  end
  return splitResult[1] * "/" * splitResult[2]
end

function AddOper(val1::Rational, val2::Rational)
  R_Value1 = RationalParse(val1)
  R_Value2 = RationalParse(val2)
  strResult = string(R_Value1 + R_Value2)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function AddOper(val1::Integer, val2::Rational)
  R_Value1 = parse(Int64, val1.value) // 1
  R_Value2 = RationalParse(val2)
  strResult = string(R_Value1 + R_Value2)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function AddOper(val1::Rational, val2::Integer)
  R_Value1 = RationalParse(val1)
  R_Value2 = parse(Int64, val2.value) // 1
  strResult = string(R_Value1 + R_Value2)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function AddOper(val1::Float, val2::Rational)
  R_Value1 = rationalize(parse(Float64, val1.value))
  R_Value2 = RationalParse(val2)
  strResult = string(R_Value1 + R_Value2)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function AddOper(val1::Rational, val2::Float)
  R_Value1 = RationalParse(val1)
  R_Value2 = rationalize(parse(Float64, val2.value))
  strResult = string(R_Value1 + R_Value2)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function SubOper(val1::Rational, val2::Rational)
  R_Value1 = RationalParse(val1)
  R_Value2 = RationalParse(val2)
  strResult = string(R_Value2 - R_Value1)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function SubOper(val1::Integer, val2::Rational)
  R_Value1 = parse(Int64, val1.value) // 1
  R_Value2 = RationalParse(val2)
  strResult = string(R_Value2 - R_Value1)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function SubOper(val1::Rational, val2::Integer)
  R_Value1 = RationalParse(val1)
  R_Value2 = parse(Int64, val2.value) // 1
  strResult = string(R_Value2 - R_Value1)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function SubOper(val1::Float, val2::Rational)
  R_Value1 = rationalize(parse(Float64, val1.value))
  R_Value2 = RationalParse(val2)
  strResult = string(R_Value2 - R_Value1)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function SubOper(val1::Rational, val2::Float)
  R_Value1 = RationalParse(val1)
  R_Value2 = rationalize(parse(Float64, val2.value))
  strResult = string(R_Value2 - R_Value1)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function MulOper(val1::Rational, val2::Rational)
  R_Value1 = RationalParse(val1)
  R_Value2 = RationalParse(val2)
  strResult = string(R_Value1 * R_Value2)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function MulOper(val1::Integer, val2::Rational)
  R_Value1 = parse(Int64, val1.value) // 1
  R_Value2 = RationalParse(val2)
  strResult = string(R_Value1 * R_Value2)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function MulOper(val1::Rational, val2::Integer)
  R_Value1 = RationalParse(val1)
  R_Value2 = parse(Int64, val2.value) // 1
  strResult = string(R_Value1 * R_Value2)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function MulOper(val1::Float, val2::Rational)
  R_Value1 = rationalize(parse(Float64, val1.value))
  R_Value2 = RationalParse(val2)
  strResult = string(R_Value1 * R_Value2)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function MulOper(val1::Rational, val2::Float)
  R_Value1 = RationalParse(val1)
  R_Value2 = rationalize(parse(Float64, val2.value))
  strResult = string(R_Value1 * R_Value2)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function DivOper(val1::Rational, val2::Rational)
  R_Value1 = RationalParse(val1)
  R_Value2 = RationalParse(val2)
  strResult = string(R_Value2 / R_Value1)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function DivOper(val1::Integer, val2::Rational)
  R_Value1 = parse(Int64, val1.value) // 1
  R_Value2 = RationalParse(val2)
  strResult = string(R_Value2 / R_Value1)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function DivOper(val1::Rational, val2::Integer)
  R_Value1 = RationalParse(val1)
  R_Value2 = parse(Int64, val2.value) // 1
  strResult = string(R_Value2 / R_Value1)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function DivOper(val1::Float, val2::Rational)
  R_Value1 = rationalize(parse(Float64, val1.value))
  R_Value2 = RationalParse(val2)
  strResult = string(R_Value2 / R_Value1)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end

function DivOper(val1::Rational, val2::Float)
  R_Value1 = RationalParse(val1)
  R_Value2 = rationalize(parse(Float64, val2.value))
  strResult = string(R_Value2 / R_Value1)
  result = RationalWithOneSlash(strResult)
  return [Rational, result]
end