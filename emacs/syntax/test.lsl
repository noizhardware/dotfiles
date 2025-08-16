// sample LSL file

// Examples of variable declaration and assignment:
integer score = 0;
string mySay = "i ♥ you";
vector v = <3,4,5>;
list myList= [2,4,7,3];

// Example of defining a function.
// built-in function's names start with “ll” (Linden Library).
integer sum(integer a, integer b)
{
    integer result = a + b;
    return result;
}

 default
 {
     state_entry()
     {
         llSay(0, mySay);
     }

     touch_start(integer total_number)
     {
         if (score == 1) {
             llSay(0, mySay);
         } else {
             llWhisper(0, "Ouch!");
         }
     }
 }
