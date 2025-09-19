import 'dart:async';

Future<String> generateReport() {
  return Future.delayed(Duration(seconds: 1), () => "Report generated!");
}

Future<String> generateReportAsync() async {
  await Future.delayed(Duration(seconds: 1));
  return "Report generated!";
}

Future<int> fetchUserId() async {
  await Future.delayed(Duration(seconds: 1));
  return 123;
}

Future<String> fetchUserDetails(int userId) async {
  await Future.delayed(Duration(seconds: 1));
  return "User Name for ID $userId: Samira";
}

Future<String> fetchConfiguration() async {
  await Future.delayed(Duration(seconds: 1));
  return "Configuration Loaded";
}

Future<String> loadResources() async {
  await Future.delayed(Duration(seconds: 2));
  return "Resources Loaded";
}

Future<void> main() async {
  print("* * * * * Task 6.2 (Future with .then) * * * * *");
  generateReport().then((result) => print(result));
  await Future.delayed(Duration(seconds: 2)); 
  print("");

  print("* * * * * Task 6.3 (Async/Await) * * * * *");
  String report = await generateReportAsync();
  print(report);
  print("");

  print("* * * * * Task 6.4 (Chaining Async Calls) * * * * *");
  int userId = await fetchUserId();
  String userDetails = await fetchUserDetails(userId);
  print(userDetails);
  print("");

  print("* * * * * Task 6.5 (Concurrent Futures) * * * * *");
  List<String> results = await Future.wait([
    fetchConfiguration(),
    loadResources(),
  ]);
  for (var r in results) {
    print(r);
  }
  print("System Ready");
}
