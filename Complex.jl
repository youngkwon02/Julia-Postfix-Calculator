struct Complex
  value::String
end

function HavingImaginePart(strNum::String)
  num = parse(Base.Complex{Int64}, strNum)
  if imag(num) == 0
    return false
  end
  return true
end

function ImToI(strNum::String)
  return strNum[1:end-1]
end

function ComplexParse(ComplexElem::Complex)
  strNum::String = ComplexElem.value * "m"
  return parse(Base.Complex{Int64}, strNum)
end

function AddOper(val1::Complex, val2::Complex)
  C_Value1 = ComplexParse(val1)
  C_Value2 = ComplexParse(val2)
  strResult = string(C_Value1 + C_Value2)
  if HavingImaginePart(strResult)
    result = ImToI(strResult)
    return [Complex, result]
  end
  strResult = string(real(parse(Base.Complex{Int64}, strResult)))
  return [Float, strResult]
end
