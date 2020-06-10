%The objective is to maximize the damage with only 1 choice

int: nSpots;
set of int:SPOTS = 1..nSpots;
array[SPOTS] of int: damage;

enum SYMB;
array[SYMB] of set of SPOTS: group;

var set of SPOTS: attacks;

constraint forall(s in SYMB)(card(attacks intersect group[s])
    <= 1);

var int: totalDamages = sum(p in attacks)(damage[p]);
solve maximize (totalDamages);

output ["Total damage: \(totalDamages) \nBest attacks: \(attacks)"]