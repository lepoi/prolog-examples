es_un(ave, animal).
es_un(mamifero, animal).
es_un(avestruz, ave).
es_un(albatros, ave).
es_un(ballena, mamifero).
es_un(tigre, mamifero).

es_un(X, Z) :-
	es_un(X, Z);
    es_un(X, Y),
    es_un(Y, Z).

puede(animal, respirar).

vuela(ave, bien).
vuela(albatros, muy_bien).
vuela(avestruz, no_puede).

tiene(ave, plumas).
tiene(mamifero, pelo).
tiene(ballena, piel).

pone(ave, huevos).

patas(avestruz, largas).

da(mamifero, leche).

vive_en(ballena, mar).

come(tigre, carne).