BigData ← &fras"resources/day1.txt"
SmallData ← $ 1abc2
            $ pqr3stu8vwx
            $ a1b2c3d4e5f
            $ treb7uchet
SmallDataTwo ← $ two1nine
               $ eightwothree
               $ abcone2threexyz
               $ xtwone3four
               $ 4nineeightseven2
               $ zoneight234
               $ 7pqrstsixteen

Digits ← +⇡10@0
WDigits ← {"zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine"}
ReadLines ← ⊜□≠,@\n
ToDigits ← ≡(□◿10⊗ :Digits °□)
SumFirstLast ← /+♭≡([+×10]⊓⊢(⊢⇌).▽≠0.°□)

PartOne ← /+≡(⋕⊂⊓⊢(⊢⇌).▽∊,Digits °□) ReadLines
AltPartOne ← SumFirstLast ToDigits ReadLines
PartTwo ← SumFirstLast + ⊃(ToDigits|/+×⇡10⊞(□⌕ ∩°□) WDigits) ReadLines
---
⍤⊃⋅∘=142 PartOne SmallData
⍤⊃⋅∘=142 AltPartOne SmallData
⍤⊃⋅∘=54667 PartOne BigData
⍤⊃⋅∘=54667 PartOne BigData
⍤⊃⋅∘=281 PartTwo SmallDataTwo
⍤⊃⋅∘=54203 PartTwo BigData
---
