BigData ← &fras"resources/day3.txt"
SmallData ← $ 467..114..
            $ ...*......
            $ ..35..633.
            $ ......#...
            $ 617*......
            $ .....+.58.
            $ ..592.....
            $ ......755.
            $ ...$.*....
            $ .664.598..
ReadLines ← ⊜∘≠,@\n
Digits ← +⇡10@0
GenPos ← ⊃(+1|-1|+[¯1 1]|+[1 ¯1]|+[0 1]|+[0 ¯1]|+[1 0]|+[¯1 0])
IntVals ← ▽>0.♭⬚0≡(⊜(↘1[⍥.]:⋕:⧻.)∊:Digits.)
IntPos ← ⊚∊:Digits
ReshapeIntPos ← :↯⊂⊙△⊙.⊙:⊙⊙.⧻.

PartOne ← (
  :⊙:IntPos, IntVals. ReadLines
  ≡([GenPos])⊚¬∊:⊂@.Digits
  ReshapeIntPos
  /⊂⬚∞≡(▽⊂:1≡(/↥≠[0 1])⌵-⊃(↘1↻¯1|↘1).⊏⊚∊:⊙.)
  /+⊏⊗▽≡/↧≠∞.
)

PartTwo ← (
  :⊙:IntPos, IntVals. ReadLines
  ≡([GenPos])⊚=@*
  ReshapeIntPos
  ⬚∞≡(▽=2⧻.▽⊂:1≡(/↥≠[0 1])⌵-⊃(↘1↻¯1|↘1).⊏⊚∊:⊙.)
  /+≡/×⊏⊗▽≡(/↥/↥≠∞).
)
---
⍤⊃⋅∘=4361 PartOne SmallData
⍤⊃⋅∘=546563 PartOne BigData
⍤⊃⋅∘=467835 PartTwo SmallData
⍤⊃⋅∘=91031374 PartTwo BigData
---
