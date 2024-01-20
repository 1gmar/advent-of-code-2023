BigData ← &fras"resources/day7.txt"
SmallData ← $ 32T3K 765
            $ T55J5 684
            $ KK677 28
            $ KTJJT 220
            $ QQQJA 483
CardRank ← "23456789TJQKA"
JokerRank ← ⊂@J▽≠,@J CardRank
ParseHands ← ⊜(⊃(°□⊢|⋕°□⊢⇌)⊜□≠,@ )≠,@\n
HandType ← /+×[10 1]⬚0↙2⊏⍖.⊕⧻⊛.
FindTotal!! ← /+×+1⍏⍏≡(⊂⊃(^1|⊗:^0)) ParseHands

PartOne ← FindTotal!!HandType CardRank
PartTwo ← FindTotal!!(/↥≡HandType ⍉⊞((⊙;|;)=@J.):⊝.)JokerRank

---
⍤⊃⋅∘=6440 PartOne SmallData
⍤⊃⋅∘=248217452 PartOne BigData
⍤⊃⋅∘=5905 PartTwo SmallData
⍤⊃⋅∘=245576185 PartTwo BigData
---
