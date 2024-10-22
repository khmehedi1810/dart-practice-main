enum Gender {Male, Female, Trabs}
void main(){
  final gen = Gender.Male;

  switch(gen){
    case Gender.Male:
    print("Male");
    break;
    case Gender.Female:
    print('Female');

    default: 
    print("No");
    break;
  }
}

