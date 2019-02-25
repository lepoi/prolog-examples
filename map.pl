flight(amsterdam, pa01, brasilia).
flight(brasilia, pa02, amsterdam).
flight(calcuta, pa03, amsterdam).
flight(amsterdam, pa04, calcuta).
flight(calcuta, pa05, denver).
flight(brasilia, pa06, denver).
flight(denver, pa07, mexicali).
flight(mexicali, pa08, denver).

flight(amsterdam, pa09, mexicali).
flight(mexicali, pa10, amsterdam).
flight(denver, pa11, brasilia).
flight(denver, pa12, calcuta).

price(pa01, 10).
price(pa02, 11).
price(pa03, 12).
price(pa04, 13).
price(pa05, 14).
price(pa06, 15).
price(pa07, 16).
price(pa08, 17).
price(pa09, 18).
price(pa10, 19).
price(pa11, 20).
price(pa12, 21).

path_to(From, To) :-
	path_to(From, To, [], 0).

path_to(From, To, Visited, Price) :-
    From == To,
    write([From | Visited]),
    write(", $"),
    write(Price);
    
    From \= To,
    \+ member(To, Visited),
    flight(Inter, Flight, To),
    price(Flight, Price2),
    PriceSum is Price + Price2,
    path_to(From, Inter, [To | Visited], PriceSum).
