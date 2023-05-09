Collection.dumpClassSubtree;
//:
SequenceableCollection
ArrayedCollection
//:
Dictionary
//:
Set
//: ITERATION
// ----------------------
do:
collect:
select:
reject:
keysDo:
pairsDo:
keysValuesDo:
detect:
//:
//:
[] respondsTo: \do;
[] respondsTo: \pairsDo;

//: INTROSPECTION

1 isKindOf: Integer;
1 isKindOf: Float;

Integer.class;
Float.class;

1.class.class.class.class.class

1.class.superclass.superclass.superclass.superclass.superclass;

//: RECURSION

//: Functions as first class objects.

Help.gui;

//:
FloatArray
Signal