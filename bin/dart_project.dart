//import 'package:dart_project/dart_project.dart' as dart_project;
import 'dart:io';
int intro(){
  print ("""Hollo How are You? are you ready to start quiz? """);
  print ("1:Iam ready let's go     0:Iam no ready and Exit");
  String ?s=stdin.readLineSync();
  late int x;
  if (s!=null){
    x=int.parse(s);
  }
  return x;
}
// to check the input is correct
bool valid (String s){
  try {
   if((s!="A"&&s!="B"&&s!="C"&&s!="D"))
   return false;
  }catch(e){
    return false;
  }
  return true;
}
void main (){
 int x= intro();
 if (x==0){
  return ;
 }
 print ('Choose correct answer');
 //List to strore the q
 List<Map>list=[
  {"""1. Which of the following is an example of a Divide and Conquer algorithm?
  A- Binary Search
  B- Linear Search
  C- Selection Sort
  D- Bubble Sort""":"A"},
  {"""2. In Divide and Conquer, what does the "Conquer" step refer to?
  A- Dividing the problem into smaller subproblems.
  B- Combining the results of subproblems.
  C- Solving the subproblems independently.
  D- Choosing the correct algorithm to divide the problem.""":"C"},
  {"""3. Which of the following best describes the time complexity of the Merge Sort algorithm?
  A- O(n)
  B- O(n log n)
  C- O(log n)
  D- O(n^2)""":"B"},
  {"""4. What is the major advantage of using Divide and Conquer?
  A- It guarantees an optimal solution.
  B- It simplifies solving complex problems.
  C- It is faster than all other algorithms.
  D- It requires less memory.""":"B"},
  {"""7. In the context of the Divide and Conquer strategy, what is the "Merge" step typically used for?
  A- Dividing the problem into smaller subproblems.
  B- Merging the subproblem solutions to form the final answer.
  C- Optimizing the algorithm's space complexity.
  D- Calling the recursive function.""":"B"},
 ];
 int score=0;
 for (int i=0;i<5;i++){
  //display q
  print("\n${list[i].keys.first}");
  print ('Enter your answer...');
  //take user input
  String ?s = stdin.readLineSync();
  while (s!=null&&valid (s)==false){
    print ('please Enter a valid input');
    s=stdin.readLineSync();
  }
  
if (s!=null ){
   s = s.toUpperCase();
  print (list[i].values.first);
  if (s==list[i].values.first){

    print ('Correct');
    score++;
  }
  else {
    print ('The correct answer is ${list[i].values.first} good luck');
  }
}
 }
 print ('your score is $score');
}
