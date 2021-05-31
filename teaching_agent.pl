result :-
work(Manage),
write(Manage),
nl,
undo.
work(create_result) :- create_result, !.
work(unknown).


create_result :-

guess(marking),
guess(grading),
guess(publishresult),
nl.

ask(Question) :-
write('Does the teacher doing this work: '),
write(Question),
write('?'), 
read(Response),
nl,
( (Response == yes ; Response == y)
 ->
assert(yes(Question));
assert(no(Question)), fail).

:- dynamic yes/1,no/1.

guess(S) :-
(yes(S)
 ->
true ;
(no(S)
 ->
fail ;
ask(S))).
 
undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.

inputresult :-
        write('Enter the name of the student:'),
        read(N),
        write('Enter the matric id of the student:'),
        read(P),
        write('Enter the five subject marks of the student: '),
        subjectL(M).

subjectL(M):-
        write('Software Engineering :'),
        read(C),
        write('Data Communication :'),
        read(D),
        write('Economics :'),
        read(E),
        write('Artificial Intelligence :'),
        read(F),
        write('Operating System :'),
        read(G),
        sum(C,D,E,F,G)
        .

 sum(C,D,E,F,G) :- S is C+D+E+F+G,nl,
write('Total marks : '),
write(S)
.

marks :-
   write('Enter Your total marks :'),
        read(Z),
        show(Z).
  
show(Z) :-
  Z >= 450 , Z<500 , write('Execellent');
  Z >= 400 , Z<450 , write('Very Good');
  Z >= 350 , Z<400 , write('Good');
  Z >= 300 , Z<350 , write('Satisfactory');
  Z >= 250 , Z<300 , write('Bad');
  Z < 300, write('Very Bad');
  nl.

  se:-
   write('Enter your SE mark: ') ,
  read(I),  
  read_segrade(I) , nl
  .


  read_segrade(I) :-
  I =:= 100, write('A+');
  I >= 80 , I<100 , write('A+');
  I >= 76 , I<80 , write('A');
  I >= 70 , I<76 , write('A-');
  I >= 66 , I<70 , write('B+');
  I >= 60 , I<66 , write('B');
  I >= 56 , I<60 , write('B-');
  I >= 50 , I<56 , write('C+');
  I >= 46 , I<50 , write('C');
  I >= 40 , I<46 , write('D');
  I < 40, write('F');
  nl
  .

  dc:-
   write('Enter your DC mark: ') ,
  read(J),  
  read_dcgrade(J) , nl
  .


  read_dcgrade( J) :-
   J =:= 100, write('A+');
   J >= 80 ,  J<100 , write('A+');
   J >= 76 ,  J<80 , write('A');
   J >= 70 ,  J<76 , write('A-');
   J >= 66 ,  J<70 , write('B+');
   J >= 60 ,  J<66 , write('B');
   J >= 56 ,  J<60 , write('B-');
   J >= 50 ,  J<56 , write('C+');
   J >= 46 ,  J<50 , write('C');
   J >= 40 ,  J<46 , write('D');
   J < 40, write('F');
  nl
  .
    
  eco:-
   write('Enter your Eco mark: ') ,
  read(K),  
  read_ecograde(K) , nl
  .


  read_ecograde(K) :-
  K =:= 100, write('A+');
  K >= 80 , K<100 , write('A+');
  K >= 76 , K<80 , write('A');
  K >= 70 , K<76 , write('A-');
  K >= 66 , K<70 , write('B+');
  K >= 60 , K<66 , write('B');
  K >= 56 , K<60 , write('B-');
  K >= 50 , K<56 , write('C+');
  K >= 46 , K<50 , write('C');
  K >= 40 , K<46 , write('D');
  K < 40, write('F');
  nl
  .

  ai:-
   write('Enter your AI mark: ') ,
  read(L),  
  read_aigrade(L) , nl
  .


  read_aigrade(L) :-
  L =:= 100, write('A+');
  L >= 80 , L<100 , write('A+');
  L >= 76 , L<80 , write('A');
  L >= 70 , L<76 , write('A-');
  L >= 66 , L<70 , write('B+');
  L >= 60 , L<66 , write('B');
  L >= 56 , L<60 , write('B-');
  L >= 50 , L<56 , write('C+');
  L >= 46 , L<50 , write('C');
  L >= 40 , L<46 , write('D');
  L < 40, write('F');
  nl
  .


  os:-
   write('Enter your OS mark: ') ,
  read(M),  
  read_osgrade(M) , nl
  .


  read_osgrade(M) :-
  M =:= 100, write('A+');
  M >= 80 ,  M<100 , write('A+');
  M >= 76 ,  M<80 , write('A');
  M >= 70 ,  M<76 , write('A-');
  M >= 66 ,  M<70 , write('B+');
  M >= 60 ,  M<66 , write('B');
  M >= 56 ,  M<60 , write('B-');
  M >= 50 ,  M<56 , write('C+');
  M >= 46 ,  M<50 , write('C');
  M >= 40 ,  M<46 , write('D');
  M < 40, write('F');
  nl
  .

  gpa:-
  write('please enter Software Engineering grade: ') ,
  read(N), 
  write('please enter Data Communication grade: ') ,
  read(O),
  write('please enter Economics grade: ') ,
  read(P),
  write('please enter Artificial Intelligence grade: ') ,
  read(Q),
  write('please enter Operating System grade: ') ,
  read(R),
  show_gpa(N,O,P,Q,R),nl.

  show_gpa(N,O,P,Q,R) :-
               T is (N+O+P+Q+R)/5 ,nl,
               write('Your Gpa is : '),
               write(T).


  cgpa:-
   write('please enter your CGPA: ') ,
  read(X),  
  read_grade(X) , nl
  .




read_grade(X) :-
  X =:= 4, write('A+');
  X >= 3.75 , X<4 , write('A');
  X >= 3.50 , X<3.75 , write('A-');
  X >= 3.25 , X<3.50 , write('B+');
  X >= 3.00 , X<3.25 , write('B');
  X >= 2.75 , X<3.00 , write('B-');
  X >= 2.50 , X<2.75 , write('C+');
  X >= 2.25 , X<2.50 , write('C');
  X >= 2.00 , X<2.25 , write('D');
  X < 2.00, write('F');
  nl
  .

result(c181096,3.61).
result(c181085,3.54).
result(c181108,3.68).
result(c181115,3.75).
result(c181116,3.65).
result(c181122,3.34).
result(c181126,3.43).

get_result :-

write('whose result do you want to know?'),nl,
read(A),nl,
result(A,B),nl,
write(B).
