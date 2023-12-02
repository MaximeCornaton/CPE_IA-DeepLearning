% Création des élèves
eleve(arthur, 23).
eleve(adrien, 22).
eleve(maxime, 22).
eleve(raphael, 22).
eleve(jean, 22).
eleve(paul, 23).

% Groupes de projet
groupe(arthur, groupe1).
groupe(adrien, groupe1).
groupe(maxime, groupe1).
groupe(raphael, groupe1).
groupe(jean, groupe2).
groupe(paul, groupe2).

% Gestion des notes
note(arthur, informatique, 16).
note(adrien, chimie, 15).
note(maxime, francais, 9).
note(raphael, physique, 17).
note(jean, anglais, 11).
note(paul, mathematiques, 8). 

% Gestion des modules
module(arthur, [dp, cee]).
module(adrien, [ssl, tns]).
module(maxime, [malg, mana]).
module(raphael, [ci, tsa]).

% Règles
reussite(Eleve) :- note(Eleve, _, Note), Note >= 10.
meme_groupe(Eleve1, Eleve2) :- groupe(Eleve1, Groupe), groupe(Eleve2, Groupe).
possede_module(Eleve, Module) :-eleve(Eleve, _), module(Eleve, Modules), member(Module, Modules).
