import 'package:get/get.dart';

class TapController extends GetxController{
  int _x = 0;
  int get x => _x;

  RxInt _y=0.obs;
  RxInt get y => _y;

  RxInt _z=0.obs;
  RxInt get z => _z;

  void increaseX(){
    _x++;
    update();
  }
  void decreaseX(){
    _x--;
    update();
  }
  //Obs don't need update()
  void increaseY(){
    _y.value++;
  }
  void decreaseY(){
    _y.value--;
  }

  void totalXY(){
    _z.value = x+_y.value;
  }

}