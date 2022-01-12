% Ene, Maris, Aiki ja Triin kannavad erineva värvusega pluuse 
% (punane, sinine, valge ja roheline). 
% Küsimusele, mis värvi on kellegi pluus, saadi neidudelt järgmised vastused:
% *Aiki pluus on sinine, Triinu pluus on valge,
% * Aiki pluus on punane, Marise pluus on sinine,
% * Ene pluus on sinine, Triinu pluus on roheline.
% Igas vastuses on üks osa õige, teine osa väär. 
% Mis värvi pluusi kandis iga neiu?

% neiu(Nimi, Pluus).

pluusid(Pl):-            
    length(Pl, 4),      
    Pl = [                
        neiu(aiki, _),
        neiu(triinu, _),
        neiu(maris, _),      
        neiu(ene, _)
        ],    
    member(neiu(_, valge), Pl),
    member(neiu(_, sinine), Pl),
    member(neiu(_, punane), Pl),
    member(neiu(_, roheline), Pl),
    or(member(neiu(aiki, sinine), Pl),member(neiu(triinu, valge), Pl)),
    or(member(neiu(aiki, punane), Pl),member(neiu(maris, sinine), Pl)),
    or(member(neiu(ene, sinine), Pl),member(neiu(triinu, roheline), Pl)).
    or(member(neiu(A, B), Pl),member(neiu(C, D), Pl)):- 
    member(neiu(A, B), Pl) ; 
    member(neiu(C, D), Pl).
