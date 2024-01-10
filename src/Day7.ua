BigData ← &fras"resources/day7.txt"
SmallData ← $ 32T3K 765
            $ T55J5 684
            $ KK677 28
            $ KTJJT 220
            $ QQQJA 483
CardRank ← "23456789TJQKA"
CardRankTwo ← ⊂@J▽≠,@J CardRank
TypeCriteria ← [1_1 2_1 2_2 3_1 3_2 4_1 5_0]
ParseHands ← ⊜(⊃(°□⊢|⋕°□⊢⇌)⊜□≠,@ )≠,@\n
HandType ← ⊗:TypeCriteria ⬚0↙2⊏⍖.⊕⧻⊛.
FindTotal!! ← /+×+1⇡⧻.⊏⍏≡(/+×ⁿ:13⇡⧻.⊂⊃(⇌⊗:^0|^1)) ParseHands

PartOne ← FindTotal!!CardRank HandType
PartTwo ← FindTotal!!CardRankTwo(/↥≡(HandType)(☇1;|⊝⍉⊞((⊙;|;)=@J.):)>0⧻.⊝▽≠,@J.)

---
⍤⊃⋅∘=6440 PartOne SmallData
⍤⊃⋅∘=248217452 PartOne BigData
⍤⊃⋅∘=5905 PartTwo SmallData
⍤⊃⋅∘=245576185 PartTwo BigData
---
