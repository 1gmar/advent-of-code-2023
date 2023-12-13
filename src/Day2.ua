BigData ← &fras"resources/day2.txt"
SmallData ← $ Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
            $ Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue
            $ Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red
            $ Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red
            $ Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green

ReadLines ← ⊜□≠,@\n
Limit ← [12 13 14]
Default ← {"0red" "0green" "0blue"}
Digits ← ♭∵$"_"⇡10
ToMatrix ← ∵(□▽≠@ .°□)☇1⬚@ ∵(⊜□¬∊:":;".°□) ↯ ⊂:[¯1] ⧻. ReadLines
IDs ← ∵(⋕▽¬∊:"Game".°□)⊢⍉ ToMatrix
StripDig ← ∵(□▽¬∊:Digits.°□)
FillCell ← ⊂▽¬∊ StripDig Default StripDig :Default.
FillCells ← ≡(≡(□ FillCell °□)°□)∵(□⊜□≠,@,°□) ⍉↘1⍉ ToMatrix
SortCells ← ∵(□⊏⍖∵(□▽¬∊:Digits.°□).°□)
ParseDigits ← ∵(∵(⋕▽∊:Digits.°□)°□)

PartOne ← /+× IDs: ≡(/×/×≥0≡(-:Limit)) ParseDigits SortCells FillCells.
PartTwo ← /+≡/×≡/↥ ParseDigits SortCells FillCells

---
⍤"PartOne failed for SmallData"=8 PartOne SmallData
⍤"PartOne failed for BigData"=2439 PartOne BigData
⍤"PartTwo failed for SmallData"=2286 PartTwo SmallData
⍤"PartTwo failed for BigData"=63711 PartTwo BigData
---
