struct Complex
  value::String
end

function HavingImaginePart(strNum::String)
  num = parse(Base.Complex{Float64}, strNum)
  if imag(num) == 0.0
    return false
  end
  return true
end

function ImToI(strNum::String)
  return strNum[1:end-1]
end

function ComplexParse(ComplexElem::Complex)
  strNum::String = ComplexElem.value * "m"
  return parse(Base.Complex{Float64}, strNum)
end

function AddOper(val1::Complex, val2::Complex)
  C_Value1 = ComplexParse(val1)
  C_Value2 = ComplexParse(val2)
  strResult = string(C_Value1 + C_Value2)
  if HavingImaginePart(strResult)
    result = ImToI(strResult)
    return [Complex, result]
  end
  strResult = string(real(parse(Base.Complex{Float64}, strResult)))
  return [Float, strResult]
end

function AddOper(val1::Integer, val2::Complex)
  C_Value1 = parse(Int64, val1.value)
  C_Value2 = ComplexParse(val2)
  strResult = string(C_Value1 + C_Value2)
  if HavingImaginePart(strResult)
    result = ImToI(strResult)
    return [Complex, result]
  end
  strResult = string(real(parse(Base.Complex{Float64}, strResult)))
  return [Float, strResult]
end

function AddOper(val1::Complex, val2::Integer)
  C_Value1 = ComplexParse(val1)
  C_Value2 = parse(Int64, val2.value)
  strResult = string(C_Value1 + C_Value2)
  if HavingImaginePart(strResult)
    result = ImToI(strResult)
    return [Complex, result]
  end
  strResult = string(real(parse(Base.Complex{Float64}, strResult)))
  return [Float, strResult]
end

function AddOper(val1::Float, val2::Complex)
  C_Value1 = parse(Float64, val1.value)
  C_Value2 = ComplexParse(val2)
  strResult = string(C_Value1 + C_Value2)
  if HavingImaginePart(strResult)
    result = ImToI(strResult)
    return [Complex, result]
  end
  strResult = string(real(parse(Base.Complex{Float64}, strResult)))
  return [Float, strResult]
end

function AddOper(val1::Complex, val2::Float)
  C_Value1 = ComplexParse(val1)
  C_Value2 = parse(Float64, val2.value)
  strResult = string(C_Value1 + C_Value2)
  if HavingImaginePart(strResult)
    result = ImToI(strResult)
    return [Complex, result]
  end
  strResult = string(real(parse(Base.Complex{Float64}, strResult)))
  return [Float, strResult]
end

function AddOper(val1::Rational, val2::Complex)
  C_Value1 = RationalParse(val1)
  C_Value2 = ComplexParse(val2)
  result = C_Value1 + C_Value2
  RealPart = FractionParse(RationalWithOneSlash(string(real(result))))
  ImagPart = FractionParse(RationalWithOneSlash(string(imag(result))))
  if imag(result) > 0
    strResult = RealPart * "+" * ImagPart * "im"
  elseif imag(result) < 0
    strResult = RealPart * ImagPart * "im"
  else
    return [Rational, RealPart]
  end
  return [Complex, strResult]
end

# function AddOper(val1::Complex, val2::Rational)
#   C_Value1 = ComplexParse(val1)
#   C_Value2 = parse(Float64, val2.value)
#   strResult = string(C_Value1 + C_Value2)
#   if HavingImaginePart(strResult)
#     result = ImToI(strResult)
#     return [Complex, result]
#   end
#   strResult = string(real(parse(Base.Complex{Float64}, strResult)))
#   return [Float, strResult]
# end

function SubOper(val1::Complex, val2::Complex)
  C_Value1 = ComplexParse(val1)
  C_Value2 = ComplexParse(val2)
  strResult = string(C_Value2 - C_Value1)
  if HavingImaginePart(strResult)
    result = ImToI(strResult)
    return [Complex, result]
  end
  strResult = string(real(parse(Base.Complex{Float64}, strResult)))
  return [Float, strResult]
end