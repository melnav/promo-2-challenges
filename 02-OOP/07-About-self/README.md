You use the `self` keyword in ruby to access the context that the program is currently working inside of. There are basically 3 contexts :

1. The global or "main" context, which you can see by typing `self.inspect`  in IRB console (**try it**)

2. The Class or Module context where the `self` keyword represents a Class or Module

3. The object context where `self` represents an instance of a class. 

The rule is simple. Used inside an instance method, self will point to an object. When used inside the class or module, or before the method name when defining a class method (i.e. `def self.method ; end`), self represent the first class or module enclosing it.

### Get the tierce
* Look at the following code with nested module, class and methods. Implement the return of each method, so that you get the winning tierce ! when you are sure you have it, run the test to check it out !

### Chaining with self
In **chaining_with_self.rb**, we gave you a program which does not run without errors. In fact, we tried to implement method chaining but failed miserably.. There is a **very** small fix to make our program work ! try to figure it out .

**Tips** : of course this fix involves using `self`. This exercice is not completely out of the point :)