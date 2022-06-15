

Future<String> getTeamName(){
  return Future.delayed(const Duration(seconds: 3), ()=>"Liverpool");
}

void getData() async {
  final result = await getTeamName();
  print(result);
}

// Streams
Stream<String> getScore(){
  return Stream.periodic(const Duration(seconds: 1), (value) => 'Score');
}

int counter = 1;
void streamData() async{
  await for (final value in getScore()){
    if (counter >= 10){
      print('Stream Completed...');
      break;
    }
    print(value);
    counter++;
  }
}

void main(){
  print('Waiting...');
  getData();
  streamData();
 
}