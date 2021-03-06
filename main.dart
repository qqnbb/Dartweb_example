import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  // 取得用于显示dart是否连接成功的div
  final div = querySelector("#hint") as DivElement;
  div.text = "dart connected.";

  // 从js上下文中获取chart类
  var chart = context['chart'];
  // 构件js型的变量data
  var data = JsObject.jsify([
    {'candy': '旺仔牛奶糖', 'sales': 150},
    {'candy': '大白兔奶糖', 'sales': 100},
    {'candy': '悠哈', 'sales': 80},
    {'candy': '玉米糖', 'sales': 60}
  ]);

  // 调用chart的source与render函数向其传入新的数据并使其重新渲染
  chart.callMethod('source', [data]);
  chart.callMethod('render', []);

  print('data updated');
}