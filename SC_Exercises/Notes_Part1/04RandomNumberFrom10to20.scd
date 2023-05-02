//:Answer
10 rrand: 20;
//Variants:
10.rrand(20);
rrand(10, 20);
//Notes:
// You should consult the help file to make sure that both 10 and 20 are included
// as possible outputs of rrand in the above expression.
// You can explore this by running the expression many times and looking
// at the results. But this is not guaranteed to give you always the right answer.
// Run this many times to check that 10 and 20 are indeed the minimum and maximum values
{ 10 rrand: 20 } ! 50; // runs 50 times and returns all result values (!)
//:Find the smallest value from the resulting array:
({ 10 rrand: 20 } ! 50).minItem;
//:Find the largest value from the resulting array:
({ 10 rrand: 20 } ! 50).maxItem;
//:Find both the smallest and the largest value:
var array;
array = { 10 rrand: 20 } ! 5000;
array.minItem.postln;
array.maxItem;
//:Variant 1: write as a function.
// Note: this is equivalent to the above.  The interpreter always runs
// code lines like above as a function which it evaluates
{
	var array;
	array = { 10 rrand: 20 } ! 5000;
	array.minItem.postln;
	array.maxItem;
}.value;
//:
{ | ar | [\min, ar.minItem, \max, ar.maxItem, ar.size] }.({ 10 rrand: 20 } ! 5000);
//: More elaborate details: Use variables.
{ | ar |
	var min, max, size, subfunc;
	min = ar.minItem;
	max = ar.maxItem;
	size = ar.size;
	[\min, ar.minItem, \max, ar.maxItem, ar.size]
}.({ 10 rrand: 20 } ! 5000);
//:
f = {
	var count = 0;
	{ count = count + 1; };
};
//:
a = f.value;
b = f.value;
//:
a.value;
b.value;

//
//:
//:Note. See information on the concepts:
// - Functions as first class objects
// - Closures;
//Variants:
10.rrand(20);
rrand(10, 2)
//Notes:
/// Run this many times to check that 10 and 20 are indeed the minimum and maximum values
/{ 10 rrand: 20d:  20 } ! 50;10 rrand: 20;

{}
{

}