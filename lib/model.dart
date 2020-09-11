import 'package:math_expressions/math_expressions.dart';

class Model{
  String expression;
  String history;
  
  Model(this.expression,this.history);

  parsing(){
    ContextModel cm = ContextModel();
    Parser p = new Parser();
    double eval;
    try{
      expression = expression.replaceAll('log','log10');
      expression = expression.replaceAll('÷','/');
      expression = expression.replaceAll('√','sqrt');
      print('expression : $expression');

      Expression exp = p.parse(expression);
      eval = exp.evaluate(EvaluationType.REAL, cm);
      if(eval.ceil() == eval.floor())
        expression = eval.toInt().toString();
      else
        expression = eval.toString();
    }catch (e) {
      if(eval == null){
        history = '';
        expression = 'INCORRECT SYNTAX';
      }
    }
    
    // return expression;
  }

}