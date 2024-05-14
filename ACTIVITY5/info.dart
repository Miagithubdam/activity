import 'dart:io';

void main(){
    print("Enter name:");
    String? name = stdin.readLineSync();

    print("Enter address:");
    String? address = stdin.readLineSync();
    
    print("Enter description:");
    String? description = stdin.readLineSync();
    print("my full information ${name}${address}${description}");
}