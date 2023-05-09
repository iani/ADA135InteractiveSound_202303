// Write a program that returns a random integer between 2 and 7
// and uses the message rand
6.rand + 2;
//:
((7 - 2) + 1) + 2
//: from, to:
((to - from) + 1).rand + from;
5.rand + 2;
//:
var from, to;
from = 2;
to = 7;
((to - from) + 1).rand + from;
//:
f = { | from = 1, to = 10 |
	((to - from) + 1).rand + from;
};
//:
f.(10, 12);
//:
{ f.(10, 12); } ! 100;
//:
({ f.(10, 12); } ! 100 ) do: _.postln;
//: