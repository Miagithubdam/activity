import 'dart:io';

void main() {
  print("Enter the name of the file you want to read:");
  String fileName = stdin.readLineSync()!.trim();

  try {
    File file = File(fileName);

    if (!file.existsSync()) {
      print("File not found: $fileName");
      return;
    }

    String extension = fileName.split('.').last.toLowerCase();

    if (extension == 'csv') {
      // Read and print CSV file
      printCSV(file);
    } else if (extension == 'java' || extension == 'dart' || extension == 'txt') {
      // Read and print Java/Dart/Text file
      printPlainText(file);
    } else {
      print("Unsupported file format.");
    }
  } catch (e) {
    print("Error occurred: $e");
  }
}

void printCSV(File file) {
  List<String> lines = file.readAsLinesSync();
  print("File contents:");
  for (String line in lines) {
    print(line);
  }
}

void printPlainText(File file) {
  String content = file.readAsStringSync();
  print("File contents:");
  print(content);
}
