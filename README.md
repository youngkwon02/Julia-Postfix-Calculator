# ☂️ Julia-PostfixCalc
<p>
Postfix calculator implemented by Julia programming language.<br>
(Also called stack calculator) 
</p>

---

# 📚 Data compatibility

|    Type    |  Operation                                        |  Example                             |
| :-----------: | :---------------------------------: | :-------------------------------------------------: |
|    Basic ( Int64, Float64 )   |  add, sub, mul, div  | 10, 20, 3,14159, 2,71828, ... | 
|    Rational  | add, sub, mul, div   | 1/2, 3/5, 2/7, ... |
|    Complex   | add, sub, mul, div   | 1.5 + 2i, 2 - 5i, 0.25 + 0.6i, ... |

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

## Case 1

## Case 2

## Case 3
