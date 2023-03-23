import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:todo_app/model/todo_model.dart';

class TodoController extends GetxController {
  static TodoController get to => Get.find<TodoController>();

  /// 할일목록의 초기값을 정의합니다. 이제 Firebase를 통하여 데이터를 받아올 것이므로, 빈값으로 둡니다.
  List<TodoModel> todos = [];

  void getTodos() async {
    try {
      /// 파이어베이스로부터 데이터를 받아옵니다.
      final QuerySnapshot<Map<String, dynamic>> querySnapshot =
          await getTodosFromFireStore();

      /// 서버로부터 받아온 데이터를 역직렬화합니다.
      final querySnapshotToTodoModel = querySnapshot.docs.map((todoSnapshot) {
        /// 서버에서 받아온 데이터는 QuerySnapshot<Map<String, dynamic>> 타입으로 되어있으므로,
        /// 이것을 Map<String, dynamic> 타입으로 직렬화합니다.
        final Map<String, dynamic> toMap = {
          'id': todoSnapshot.id,
          ...todoSnapshot.data()
        };

        /// Map<String, dynamic> 데이터를 TodoModel로 역직렬화합니다.
        return TodoModel.fromJson(toMap);
      }).toList();

      /// 역직렬화된 데이터를 todos에 업데이트합니다.
      todos = querySnapshotToTodoModel;

      /// 뷰를 업데이트합니다.
      update();
    } catch (e) {
      print('서버 데이터 동기화에 실패했습니다.');
    }
  }

  void addTodo(String todo) async {
    /// [todo] : 할일
    try {
      /// Firebase에 데이터를 추가합니다.
      final DocumentReference<Map<String, dynamic>> querySnapshot =
          await addTodoFromFireStore(todo);

      /// 서버에서 받아온 데이터는 QuerySnapshot<Map<String, dynamic>> 타입으로 되어있으므로,
      /// 이것을 Map<String, dynamic> 타입으로 직렬화합니다.
      final toMap = {'id': querySnapshot.id, 'todo': todo};

      /// 받아온 서버데이터를 TodoModel로 역직렬화합니다.
      final jsonDataToTodoModel = TodoModel.fromJson(toMap);

      ///todos에 데이터를 업데이트합니다.
      todos = [jsonDataToTodoModel, ...todos];

      /// 뷰를 업데이트합니다.
      update();
    } catch (e) {
      print('데이터 추가에 실패했습니다.');
    }
  }

  void deleteTodo(String id) async {
    /// [id] : 선택한 할일의 id 값
    try {
      /// Firebase에 데이터를 삭제합니다.
      await deleteTodoFromFireStore(id);

      /// 선택한 할일을 뺀 나머지 할일목록들을 반환합니다.
      final remainingTodos =
          todos.where((element) => element.id != id).toList();

      /// 기존 할일목록을 담는 변수에 업데이트합니다.
      todos = remainingTodos;

      /// 뷰를 업데이트합니다.
      update();
    } catch (e) {
      print('데이터 삭제에 실패했습니다.');
    }
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getTodosFromFireStore() {
    /// FireStore의 todos 컬렉션의 전체 데이터를 반환해줍니다.
    return FirebaseFirestore.instance.collection('todos').get();
  }

  Future<DocumentReference<Map<String, dynamic>>> addTodoFromFireStore(
      String todo) {
    /// FireStore의 todos 컬렉션에 추가한 데이터를 반환해줍니다.
    return FirebaseFirestore.instance.collection('todos').add({'todo': todo});
  }

  Future<bool> deleteTodoFromFireStore(String id) async {
    /// FireStore의 todos 컬렉션에 선택된 데이터를 삭제합니다.
    final documentRef = FirebaseFirestore.instance.collection('todos').doc(id);
    await documentRef.delete();
    return true;
  }

  @override
  void onInit() async {
    /// 컨트롤러 최초 생성시 서버로부터 할일목록을 가져옵니다.
    super.onInit();
    getTodos();
  }
}
