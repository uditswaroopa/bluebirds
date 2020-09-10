class Model{
  String expression;
  String history;
  
  Model(this.expression,this.history);

  update(String text){
    expression += text;
  }

}