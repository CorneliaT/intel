% Kaarel, Mattias, Arko ja Teet kannavad erineva värvusega pluuse 
% (punane, sinine, valge ja roheline). 
% Küsimusele, mis värvi on kellegi pluus, saadi noormeestelt järgmised vastused:
% * Arko pluus on sinine, Teet pluus on valge,
% * Arko pluus on punane, Mattiase pluus on sinine,
% * Kaareli pluus on sinine, Teedu pluus on roheline.
% Igas vastuses on üks osa õige, teine osa väär. 
% Mis värvi pluusi kandis iga noormees?

% noormees(Nimi, Pluus).

pluusid(Pl):-            
    length(Pl, 4),      
    Pl = [                
        noormees(arko, _),
        noormees(teet, _),
        noormees(mattias, _),      
        noormees(kaarel, _)
        ],    
    member(noormees(_, valge), Pl),
    member(noormees(_, sinine), Pl),
    member(noormees(_, punane), Pl),
    member(noormees(_, roheline), Pl),
    or(member(noormees(arko, sinine), Pl),member(noormees(teet, valge), Pl)),
    or(member(noormees(arko, punane), Pl),member(noormees(mattias, sinine), Pl)),
    or(member(noormees(kaarel, sinine), Pl),member(noormees(teet, roheline), Pl)).
    or(member(noormees(A, B), Pl),member(noormees(C, D), Pl)):- 
    member(noormees(A, B), Pl) ; 
    member(noormees(C, D), Pl).
