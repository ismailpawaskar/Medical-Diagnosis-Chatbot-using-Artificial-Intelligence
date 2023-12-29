go:- hypothesis(Disease),
write('I guess the patient have '),
write(Disease),
nl,
write('TAKE CARE '),
undo.

/*Hypothesis to be tested*/
hypothesis(cold) :- cold, !.
hypothesis(flu) :-  flu, !.
hypothesis(typhoid) :- typhoid, !.
hypothesis(measles) :- measles, !.
hypothesis(malaria) :- malaria, !.
hypothesis(chickenpox) :- chickenpox, !.
hypothesis(cholera) :- cholera, !.
hypothesis(unknown). /* no diagnosis*/

/*Hypothesis Identification Rules*/
cold :-
verify(headache),
verify(runny_nose),
verify(sneezing),
verify(sore_throat),
write('Advices and Sugestions:'),
nl,
write('1: Tylenol/tab'),
nl,
write('2: panadol/tab'),
nl,
write('3: Nasal spray'),
nl,
write('Please weare warm cloths Because'),
nl.

flu :-
verify(fever),
verify(headache),
verify(chills),
verify(body_ache),
write('Advices and Sugestions:'),
nl,
write('1: Tamiflu/tab'),
nl,
write('2: panadol/tab'),
nl,
write('3: Zanamivir/tab'),
nl,
write('Please take a warm bath and do salt gargling Because'),
nl.

typhoid :-
verify(headache),
verify(abdominal_pain),
verify(poor_appetite),
verify(fever),
write('Advices and Sugestions:'),
nl,
write('1: Chloramphenicol/tab'),
nl,
write('2: Amoxicillin/tab'),
nl,
write('3: Ciprofloxacin/tab'),
nl,
write('4: Azithromycin/tab'),
nl,
write('Please do complete bed rest and take soft Diet Because'),
nl.

measles :-
verify(fever),
verify(runny_nose),
verify(rash),
verify(conjunctivitis),
write('Advices and Sugestions:'),
nl,
write('1: Tylenol/tab'),
nl,
write('2: Aleve/tab'),
nl,
write('3: Advil/tab'),
nl,
write('4: Vitamin A'),
nl,
write('Please Get rest and use more liquid Because'),
nl.

malaria :-
verify(fever),
verify(sweating),
verify(headache),
verify(nausea),
verify(vomiting),
verify(diarrhea),
write('Advices and Sugestions:'),
nl,
write('1: Aralen/tab'),
nl,
write('2: Qualaquin/tab'),
nl,
write('3: Plaquenil/tab'),
nl,
write('4: Mefloquine'),
nl,
write('Please do not sleep in open air and cover your full skin Because'),
nl.

chickenpox:-
verify(fever),
verify(tiredness),
verify(headache),
verify(inflammation_of_brain),
verify(skin_infection),
verify(rash),
write('Advices and Sugestions:'),
nl,
write('1: Zovirax/tab'),
nl,
write('2: Valtrex/tab'),
nl,
write('3: Tylenol/tab'),
nl,
write('4: Benadryl/tab'),
nl,
write('Use cool wet compresses or cool water every three to four hours for the first few days to help relieve itching Because'),
nl.

cholera:-
verify(headache),
verify(muscle_cramps),
verify(vomiting),
verify(diarrhea),
write('Advices and Sugestions:'),
nl,
write('1: Oral Rehydration Salts(ORS)'),
nl,
write('2: Antibiotics'),
nl,
write('3: Zinc supplements'),
nl,
write('Consult the doctor immediately and replace lost fluids and electrolytes using a simple rehydration solution Because'),
nl.

/* Asking Question */
ask(Question) :-
write('Does the patient have following symptom:'),
write(Question),
write('? '),
read(Response),
nl,
( (Response == yes ; Response == y)
->
assert(yes(Question)) ;
assert(no(Question)), fail).

:- dynamic yes/1,no/1.
/*Verifying */
verify(S) :-
(yes(S)
->
true ;
(no(S)
->
fail ;
ask(S))).

/* undo all yes/no assertions */
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.
