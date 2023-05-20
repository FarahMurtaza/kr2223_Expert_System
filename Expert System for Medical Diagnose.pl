diagnose :- 
 write('This is an expert system for dignosis of mental disorders.'), nl,
 write('To accurately diagnose mental disorders, it is necessary to answer a series of important questions.'), nl, nl,
 disorder(X),
 write('Condition was diagnosed as '), 
 write(X),
 write('.').
diagnose :- 
    write('The diagnose was not found.').
 

%The question predicate will have to determine from the user
%whether or not a given attribute-value pair is true
question(Attribute, Value):-
 retract(yes, Attribute, Value), !.
question(Attribute, Value):-
 retract(_, Attribute, Value),  !, fail.
question(Attribute, Value):-
 write('Is the '),
 write(Attribute),
 write(' - '),
 write(Value),
 write('?'),
 read(Y), 
assert(retract( Y , Attribute , Value )),
 Y == yes.



:- dynamic(retract/3).

%. The program needs to be modified to specify which attributes are askable
food_amount(X) :- question(food_amount,X).
symptom(X) :- question(symptom,X).
mentality(X) :- question(mentality,X).
cause(X) :- question(cause, X).
consequence(X) :- question(consquence,X).
face_features(X) :- question(face_features,X).
brain_function(X) :- question(brain_function,X).


disorder(anorexia_nervosa) :- type(eating_disorder),
						  consequence(low_weight),
						  food_amount(food_restriction).

disorder(bulimia_nervosa) :- type(eating_disorder),
						 consequence(purging),
						 food_amount(binge_eating).

disorder(fragile_X_syndrome) :- type(genetic_disorder),
					   symptom(delayed_physical_growth),
					   face_features(long_and_narrow),
					   brain_function(intellectual_disability).

disorder(down_syndrome) :- type(genetic_disorder),
     				face_features(small_chin_and_slanted_eyes),
   				brain_function(intellectual_disability).
    
    
type(eating_disorder) :- symptom(abnormal_eating_habits),
						 mentality(strong_desire_to_be_thin).

type(genetic_disorder) :- cause(abnormalities_in_genome).
