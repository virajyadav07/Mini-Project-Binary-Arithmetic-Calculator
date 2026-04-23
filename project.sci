clc;
clear;

// Function to perform binary arithmetic
function binary_calculator()
    
    disp("===== Binary Arithmetic Calculator =====");
    
    // Input binary numbers
    b1 = input("Enter first binary number: ", "string");
    b2 = input("Enter second binary number: ", "string");
    
    // Convert to decimal
    d1 = bin2dec(b1);
    d2 = bin2dec(b2);
    
    // Choose operation
    disp("Choose Operation:");
    disp("1. Addition");
    disp("2. Subtraction");
    disp("3. Multiplication");
    disp("4. Division");
    
    choice = input("Enter your choice (1-4): ");
    
    select choice
    case 1 then
        result = d1 + d2;
        op = "Addition";
        
    case 2 then
        result = d1 - d2;
        op = "Subtraction";
        
    case 3 then
        result = d1 * d2;
        op = "Multiplication";
        
    case 4 then
        if d2 == 0 then
            disp("Error: Division by zero!");
            return;
        end
        result = d1 / d2;
        op = "Division";
        
    else
        disp("Invalid choice!");
        return;
    end
    
    // Convert result to binary
    binary_result = dec2bin(result);
    
    // Display result
    disp("=================================");
    disp("Operation: " + op);
    disp("Decimal Result: " + string(result));
    disp("Binary Result: " + binary_result);
    disp("=================================");
    
endfunction

// Call function
binary_calculator();
