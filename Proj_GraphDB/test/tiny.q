(:A {})
(:B {})

create (a:A)
create (b:B)

create (pp) -[:f]-> (ab)

set marie.nom = "Marie␣Dubois", marie.age = 25