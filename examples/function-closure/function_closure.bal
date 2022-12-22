import ballerina/io;

public function main() {
    string[] names = ["Ana", "Alice", "Bob"];

    // Define a function to modify and return the variable 'names' that are declared outside the scope.
    var innerFunction = function() returns string[] {
        // Access the variable `name` as closure within the `innerFunction`.
        names.push("James");
        return names;
    };

    io:println(innerFunction());
    io:println(names);
}
