
Iterable<int> getValues(int x) sync*{
  yield x + 1;
  yield x + 1;
  yield x + 1;
  yield x + 1;
  
}

void getData(){
  for (final value in getValues(5)){
    if (value == 2){
      break;
    }  
    print(value);
  }
}

void main(){
  getData();
}