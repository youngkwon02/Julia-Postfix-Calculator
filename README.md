# ☂️ Julia Postfix Calculator
<p>
Postfix calculator implemented by Julia programming language.<br>
(Also called stack calculator) 
</p>

---

# 📚 Data compatibility

|    Type    |  Operation                                        |  Example                             |
| :-----------: | :---------------------------------: | :-------------------------------------------------: |
|    [Basic ( Int64, Float64 )](https://github.com/youngkwon02/Julia-PostfixCalc/blob/main/Calc.jl)   |  add, sub, mul, div  | 10, 20, 3,14159, 2,71828, ... | 
|    [Rational](https://github.com/youngkwon02/Julia-PostfixCalc/blob/main/Rational.jl)  | add, sub, mul, div   | 1/2, 3/5, 2/7, ... |
|    [Complex](https://github.com/youngkwon02/Julia-PostfixCalc/blob/main/Complex.jl)   | add, sub, mul, div   | 1.5 + 2i, 2 - 5i, 0.25 + 0.6i, ... |

---

# 🧤 How to use

```js
// To compute 10 - 3.14 + (1 + 2.5i) * (-2.5 - 3i) + 1/2
enter(Integer("10"))
enter(Float("3.14"))
sub()
enter(Complex("1 + 2.5i"))
add()
enter(Complex("-2.5 - 3i"))
mul()
enter(Rational("1/2"))
add()
```

---

# 💻 Test

### - CalcTest1.jl &nbsp;&nbsp; [(Here)](https://github.com/youngkwon02/Julia-PostfixCalc/blob/main/CalcTest.jl)
<img src = "https://github.com/youngkwon02/Julia-PostfixCalc/blob/main/docs/screenshot/case1.png?raw=true" width=400>

### - CalcTest2.jl &nbsp;&nbsp; [(Here)](https://github.com/youngkwon02/Julia-PostfixCalc/blob/main/CalcTest2.jl)
<img src = "https://github.com/youngkwon02/Julia-PostfixCalc/blob/main/docs/screenshot/case2.png?raw=true" width=400>

### - CalcTest3.jl &nbsp;&nbsp; [(Here)](https://github.com/youngkwon02/Julia-PostfixCalc/blob/main/CalcTest3.jl)
<img src = "https://github.com/youngkwon02/Julia-PostfixCalc/blob/main/docs/screenshot/case3.png?raw=true" width=400>
