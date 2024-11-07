import 'package:http/http.dart';
import 'lib/requests.dart';
import 'dart:io';
import 'package:chalkdart/chalk.dart';
import 'package:chalkdart/chalk_x11.dart';

void main() async {
  menuItem();
}

void menuItem() {
  print(chalk.bold.bgBlue('   MENU ITEMS   '));
  print(chalk.bold.cyan('1. Get All Data'));
  print(chalk.bold.cyan('2. Get Single Item'));
  print(chalk.bold.cyan('3. Publish a Post'));
  print(chalk.bold.cyan('4. Delete Post'));
  print(chalk.bold.cyan('===================='));
  print(chalk.bold.green('Enter your choice: '));

  String? s_men = stdin.readLineSync();
  int? men = int.tryParse(s_men ?? "");

  if (men != null) {
    switch (men) {
      case 1:
        getAllPosts();
        break;
      case 2:
        getSinglePost();
        break;
      case 3:
        publishPost();
        break;
      case 4:
        deletePost();
        break;
      default:
        print(chalk.bold.red('Invalid Input'));
        break;
    }
  } else {
    print(chalk.bold.red('Invalid Input'));
  }
}

void getAllPosts() async {
  print(chalk.bold.bgMagenta('Fetching all posts...'));
  var data = await Requests.getAllData();
  print(chalk.greenBright(data));
}

void getSinglePost() async {
  print(chalk.bold.bgMagenta('Find post by ID: '));
  String? s_id = stdin.readLineSync();
  int? id = int.tryParse(s_id ?? "");

  if (id != null) {
    print(chalk.bold.blue('Fetching post with ID: $id'));
    var post = await Requests.getSingleData(id);
    print(chalk.greenBright(post));
  } else {
    print(chalk.bold.red('Invalid ID'));
  }
}

void publishPost() async {
  Map<String, dynamic> data = {};
  
  print(chalk.bold.blue('Enter Title:'));
  String? title = stdin.readLineSync();

  print(chalk.bold.blue('Enter Description:'));
  String? desc = stdin.readLineSync();

  print(chalk.bold.blue('Enter Author:'));
  String? author = stdin.readLineSync();

  data['title'] = title ?? '';
  data['desc'] = desc ?? '';
  data['author'] = author ?? '';

  print(chalk.bold.bgMagenta('Publishing post...'));
  var post = await Requests.publishPost(data);
  print(chalk.greenBright(post));
}

void deletePost() async {
  print(chalk.bold.bgMagenta('Enter post ID to delete: '));
  String? s_id = stdin.readLineSync();
  int? id = int.tryParse(s_id ?? "");

  if (id != null) {
    print(chalk.bold.red('Deleting post with ID: $id'));
    var post = await Requests.deletePost(id);
    print(chalk.greenBright(post));
  } else {
    print(chalk.bold.red('Invalid ID'));
  }
}
