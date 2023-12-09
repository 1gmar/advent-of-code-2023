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

Digits ← ♭∵$"_"⇡10
WDigits ← {"zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine"}
ReadLines ← ⊜□≠,@\n
PartOne ← /+≡(⋕⊂⊓⊢(⊢⇌).▽∊,Digits °□) ReadLines
ToDigits ← ≡(□◿10⊗ :Digits °□)
SumFirstLast ← /+♭≡([+×10]⊓⊢(⊢⇌).▽≠0.°□)
AltPartOne ← SumFirstLast ToDigits ReadLines
PartTwo ← SumFirstLast + ⊃(ToDigits|/+×⇡10⊞(□⌕ ∩°□) WDigits) ReadLines
---
⍤"Failed for SmallData"=142 PartOne SmallData
⍤"AltPartOne failed for SmallData"=142 AltPartOne SmallData
⍤"Failed for BigData"=54667 PartOne BigData
⍤"AltPartOne failed for BigData"=54667 PartOne BigData
⍤"PartTwo failed for SmallData"=281 PartTwo SmallDataTwo
⍤"PartTwo failed for BigData"=54203 PartTwo BigData
---
