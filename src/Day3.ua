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
FindAdjNums ← ▽⊂:1≡(/↥≠[0 1])⌵-⊃(↘1↻¯1|↘1).⊏⊚∊:⊙.

PartOne ← (
  :⊙:IntPos, IntVals. ReadLines
  ≡([GenPos])⊚¬∊:⊂@.Digits
  ReshapeIntPos
  /⊂⬚∞≡(FindAdjNums)
  /+⊏⊗▽≡/↧≠∞.
)
PartTwo ← (
  :⊙:IntPos, IntVals. ReadLines
  ≡([GenPos])⊚=@*
  ReshapeIntPos
  ⬚∞≡(▽=2⧻.FindAdjNums)
  /+≡/×⊏⊗▽≡(/↥/↥≠∞).
)

BuildValsMask ← ↯:⊙(△.)×\+≡/>◫2⊂0.♭∊:Digits.
ParseVals ← ⊜⋕∊:Digits.♭,
AddZerosBorder ← ↻↯⊃(⧻|¯1|⬚0↙+2)△.:
GenAllValPos ← ⊃(≡([GenPos])|⊡)⊚>0.
GroupPosByVal ← ⊜□⊙(∵(°□⊢⇌))∵(°□⊢).⍉≡(□⊂:∩□)
AltPartOne ← (
  ParseVals BuildValsMask ReadLines
  GroupPosByVal GenAllValPos AddZerosBorder
  ≡(/↥/↥∊:⊓(∘|°□))↯⊂:⊙:△.⊙(⧻.)+1⊚¬∊:⊂@.Digits:⊙:
  /+⊏⊚
)
AltPartTwo ← (
  ParseVals BuildValsMask ReadLines
  GroupPosByVal GenAllValPos AddZerosBorder
  ≡(≡/↥∊:⊓(⬚0∵°□|∘))↯⊂⊙(⧻.)⊙:⧻.+1⊚=@*:⊙:
  /+≡/×⊏≡⊚▽=2≡/+.
)

SetupDataForAdjReduce ← ⊞(□⊂).⇡⧻.:☇3.:ParseVals
CollectAdjVals ← □⊝▽>0.⊡▽≡/↧↧≥0,<⊙.:⊙(⧻.)⊙:[GenPos]
AltAltPartOne ← (
  SetupDataForAdjReduce BuildValsMask ReadLines
  ≡≡((⊙;⊙;∘|⊙;CollectAdjVals:)=0.:⊓(°□|∘|∘))
  /+⊏-1⊐/⊂⊡⊚¬∊:⊂@.Digits:⊙:
)
AltAltPartTwo ← (
  SetupDataForAdjReduce BuildValsMask ReadLines
  ≡≡((⊙;⊙;∘|⊙;CollectAdjVals:)=0.:⊓(°□|∘|∘))
  /+≡/×⊏∵°□-1▽>1∵⧻.⊡⊚=@*:⊙:
)

---
⍤⊃⋅∘=4361 PartOne SmallData
⍤⊃⋅∘=546563 PartOne BigData
⍤⊃⋅∘=467835 PartTwo SmallData
⍤⊃⋅∘=91031374 PartTwo BigData

⍤⊃⋅∘=4361 AltPartOne SmallData
⍤⊃⋅∘=546563 AltPartOne BigData
⍤⊃⋅∘=467835 AltPartTwo SmallData
⍤⊃⋅∘=91031374 AltPartTwo BigData

⍤⊃⋅∘=4361 AltAltPartOne SmallData
⍤⊃⋅∘=546563 AltAltPartOne BigData
⍤⊃⋅∘=467835 AltAltPartTwo SmallData
⍤⊃⋅∘=91031374 AltAltPartTwo BigData
---
