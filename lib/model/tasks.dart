class tasks{
  final String name;
  bool isdone;

  tasks({required this.name,required this.isdone});
  
  void toggleDone(){
    isdone =!isdone;
  }
}