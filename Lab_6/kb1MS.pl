% To load into SWI-Prolog: click on file or
% start swi prolog, File menu -> consult 

woman(mia).
woman(jody).
woman(yolanda).
playsAirGuitar(jody).
party.

playsAirGuitar(X) :- woman(X).