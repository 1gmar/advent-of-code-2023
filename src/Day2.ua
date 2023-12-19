BigData ← &fras"resources/day2.txt"
SmallData ← $ Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
            $ Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue
            $ Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red
            $ Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red
            $ Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green

ReadLines ← ⊜□≠,@\n
Limit ← [12 13 14]
Digits ← +⇡10@0
StripDig ← □▽¬∊:Digits.°□
ParseDig ← ⋕▽∊:Digits.°□
ToMatrix ← ∵(□▽≠@ .°□)⍉↘1⍉☇1⬚@0∵(⊜□¬∊:":;,".°□)↯⊂:[¯1]⧻.ReadLines
MaxPerColor ← ≡(▽≠0.⊕(/↥≡ParseDig)≡(⊗:{"red" "green" "blue"} StripDig).)

PartOne ← /+×⊃(+1⇡⧻|∘)≡(/×≤ Limit) MaxPerColor ToMatrix
PartTwo ← /+≡/× MaxPerColor ToMatrix

---
⍤⊃⋅∘=8 PartOne SmallData
⍤⊃⋅∘=2439 PartOne BigData
⍤⊃⋅∘=2286 PartTwo SmallData
⍤⊃⋅∘=63711 PartTwo BigData
---
