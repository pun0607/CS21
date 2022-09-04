import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  //このウィジェットはアプリケーションのルートです。

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Birthday reminender',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.

        // これはアプリケーションのテーマです。
        //
        // "flutter run" でアプリケーションを実行してみてください。
        // アプリケーションに青いツールバーがあることがわかります。
        // 次に、アプリを終了せずに、下の primarySwatchを 
        // Colors.green に変更してから、「ホット リロード」を呼び出します
        // (「flutter run」を実行したコンソールで「r」を押すか、
        // 単に変更を「ホット リロード」に保存します)。 Flutter IDE)。
        // カウンターがゼロにリセットされていないことに注意してください。
        // アプリケーションは再起動されません。

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Birthday reminender'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  // このウィジェットはアプリケーションのホームページです。 
  //これはステートフルです。
  //つまり、外観に影響を与えるフィールドを含む 
  //State オブジェクト (以下で定義) を持っていることを意味します。

  // このクラスは状態の構成です。 
  //親 (この場合はアプリ ウィジェット) によって提供され、
  //State のビルド メソッドによって使用される値 (この場合はタイトル) を保持します。 
  //Widget サブクラスのフィールドは常に「final」とマークされます。

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      //このsetStateへの呼び出しは、Flutterフレームワークに何かが持っていること
      //を伝えます。
      //この状態で変更されました。これにより、以下の構築メソッドが再実行されます。
      //更新された値が表示に反映されるようにします。もし私たちが
      //setState()を呼び出さずに//_counterを呼び出すと、構築メソッドは
      //もう一度呼び出されると、何も起こらないように見えます。


      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    // このメソッドは、たとえば上記の _incrementCounter メソッドによって
    // 行われたように、setState が呼び出されるたびに再実行されます。
    // Flutter フレームワークはビルド メソッドの再実行を高速化するように
    // 最適化されているため、ウィジェットのインスタンスを個別に変更するのではなく、
    // 更新が必要なものを再構築するだけで済みます。
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.

        // ここで、App.build メソッドによって作成された
        // MyHomePage オブジェクトから値を取得し、
        // それを使用して appbar のタイトルを設定します。
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.]
        // Center はレイアウト ウィジェットです。
        // 1 つの子を取得し、親の中央に配置します。
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).

          // 列もレイアウト ウィジェットです。 子のリストを取り、
          // それらを垂直に配置します。 デフォルトでは、
          // 子を水平方向に合わせてサイズを変更し、親と同じ高さにしようとします。

           // 「デバッグ ペインティング」を呼び出します (コンソールで「p」を押し、
           // Android Studio の Flutter Inspector の
           //「Toggle Debug Paint」アクション、または
           // Visual Studio Code の「Toggle Debug Paint」コマンド）を使用して、
           // 各ウィジェットのワイヤーフレームを表示します。
           ///
           // 列には、それ自体のサイズと子の配置方法を制御する
           // さまざまなプロパティがあります。
           //  ここでは mainAxisAlignment を使用して、子を垂直方向の中央に配置します。
           // ここでの主軸は垂直軸です。これは、列が垂直であるためです
           // (交差軸は水平になります)。
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
        // この末尾のコンマにより、
        // ビルド メソッドの自動フォーマットがより適切になります。  
    );
  }
}
