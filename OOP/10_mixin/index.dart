mixin Like{
  int like = 0;

  void increment(){
    like++;
  }

  void decrement(){
    like--;
  }

  void displayLike(){
    print(like);
  }
}

class Post with Like{

}
// with Like - interface er age thake. extend er pore

void main(){
  Post post = Post();
  post.increment();
  post.increment();
  post.increment();
  post.displayLike();
  post.decrement();
  post.displayLike();
}