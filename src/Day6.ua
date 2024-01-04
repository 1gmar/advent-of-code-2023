BigData ← &fras"resources/day6.txt"
SmallData ← $ Time:      7  15   30
            $ Distance:  9  40  200
ParseVals ← ⊜⋕∊,+⇡10@0
Root! ← ÷:^2⊓(√|⊃(¯⊢|×2⊢↘1))
FindRoots ← ⊃(⌈Root!+|⌊Root!-)-⊃(×4/×↘1|×.⊢).
CountSolutions ← +1-FindRoots ⍜(↘1)(⊂¯1¯+1)

PartOne ← /×≡CountSolutions ⍉↯[2 ¯1]ParseVals
PartTwo ← CountSolutions ParseVals ▽≠,@ 

---
⍤⊃⋅∘=288 PartOne SmallData
⍤⊃⋅∘=128700 PartOne BigData
⍤⊃⋅∘=71503 PartTwo SmallData
⍤⊃⋅∘=39594072 PartTwo BigData
---
