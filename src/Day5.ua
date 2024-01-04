BigData ← &fras"resources/day5.txt"
SmallData ← $ seeds: 79 14 55 13
            $ 
            $ seed-to-soil map:
            $ 50 98 2
            $ 52 50 48
            $ 
            $ soil-to-fertilizer map:
            $ 0 15 37
            $ 37 52 2
            $ 39 0 15
            $ 
            $ fertilizer-to-water map:
            $ 49 53 8
            $ 0 11 42
            $ 42 0 7
            $ 57 7 4
            $ 
            $ water-to-light map:
            $ 88 18 7
            $ 18 25 70
            $ 
            $ light-to-temperature map:
            $ 45 77 23
            $ 81 45 19
            $ 68 64 13
            $ 
            $ temperature-to-humidity map:
            $ 0 69 1
            $ 1 0 69
            $ 
            $ humidity-to-location map:
            $ 60 56 37
            $ 56 93 4
Digits ← +⇡10@0
ReadLines ← ⬚@ ⊜∘≠,@\n
BinSearch ← ≡(/↥×≥0-⊙:)⊓(⊃(☇1|☇1+1⇡⧻)|∘)
SplitRange ← ◫2⊏⍏.⊝⊂⊏⊃(+⊃(⊢|⇡/-)BinSearch|∘⊙∘)
ParseSeeds ← ⊜⋕∊,Digits ♭↙1
ParseRangeMaps ← (
  ⊜(□⊏⍏↘0_1.≡(⊜⋕∊,Digits))≡/↥∊,Digits↘1
  ∵(⊃(□/⊂≡\+↘0_1|□⊂0/⊂∵(⊂:0)≡/-≡⇌↘0_¯1)°□)
)
ProcessRange ← +⊏⊙:♭≡BinSearch:⊙:♭⍜⍉(↙1).⊐/⊂≡(□ SplitRange),:⊙:☇1∩°□
FindMinBound! ← (
  ⊃(ParseRangeMaps|^1ParseSeeds)ReadLines
  ⊢/↧∧ProcessRange
)

PartOne ← FindMinBound!∵(⊂:+1.)
PartTwo ← FindMinBound!(≡\+↯[¯1 2])

---
⍤⊃⋅∘=35 PartOne SmallData
⍤⊃⋅∘=177942185 PartOne BigData
⍤⊃⋅∘=46 PartTwo SmallData
⍤⊃⋅∘=69841803 PartTwo BigData
---
