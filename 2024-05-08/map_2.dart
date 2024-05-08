

void main() {
   Map<String, int> scores = {
    "Alice": 85,
    "Bob": 92,
    "Charlie": 78,
   };

   print(scores);

   scores.entries.forEach((entry) {
    print(entry.key);
    print(entry.value);
   });

  
  Map<String, dynamic> data = Map();
  data["name"] = "John";
  data["age"] = 30;
  data["isStudent"] = true;   
  data["scores"] = scores;

  print(data);


  Map<int, dynamic> students = Map();
  students[1] = data;
  students[2] = {"name": "Jane", "age": 25, "isStudent": false, "scores": {"Alice": 90, "Bob": 88, "Charlie": 82}};


  print(students);


  bool isNotEmpty = students.isNotEmpty;
  print(isNotEmpty);

print("-------------------------");
students.keys.forEach((element) {
  print(element);
  print(students[element]);
});


for(var entry in students.entries){
  print('<-------- ${entry.key} ${entry.value} ------>');
}

for(var key in students.keys){
  print('${key}');
}


}