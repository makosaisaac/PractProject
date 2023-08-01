import ballerina/io;

type Car record {
    int wheels;
    string color;
};

public function main() {
    io:println("Hello, World!");
    string name = "Isaac";
    // int age = 55;
    decimal salary = 10.89;
    float height = 1.76;
    // Conditions
    if height > 9.0 {
        io:println("height is greater than 9.0");
    } else {
        io:println("height is less than 9.0");
    }

    io:println(height > 9.0 ? "height is greater than 9.0" : "height is less than 9.0");

    match age {
        2 => {
            io:println("age is greater than 2");
        }
        5 => {
            io:println("age is greater than 2");
        }
        8 => {
            io:println("age is greater than 2");
        }
        _ => {
            io:println("Invalid Age");
        }

    }
    // Arrays
    int[7] ages = [1, 2, 3, 76, 89, 356, 29];

    // Loops
    foreach int age in ages {
        if (age >= 3) {
            io:println(age);
            break;
        }
    }

    foreach int i in 0 ... 100 {
        io:println(i, name, "Isaac");
    }

    while height <= 2.2 {

    }

    // Tuples
    [string, int, float] Me = ["Isaac", 45, 3.54];

    // Maps
    map<string> actions = {
        "attack": "an attack is something",
        "enable": "allow access"
    };

    string action = actions["enable"] ?: "";
    string action1 = actions.get("attack");

    Car car1 = {
        color: "red",
        wheels: 6
    };

}
