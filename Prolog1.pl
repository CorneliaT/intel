isikudkoolid(Is):-
    length(Is, 2),
    Is = [
        isik(cornelia, _),
        isik(mattias, _)
        ],
    member(isik(_, tlu), Is),
    member(isik(_, taltech), Is).
