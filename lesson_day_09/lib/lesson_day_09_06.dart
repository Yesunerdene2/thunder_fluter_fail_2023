void main(){
  final ColorPrint colorPrint = ColorPrint();
  colorPrint.printColor();
  final Printer printer = Printer();
  printer.printData();
  final Printer print = Printer();
  print.printData();

}


class Printer{
   void printData(){
     print("Print data");
   }
}

class ColorPrint extends Printer{
  void printColor(){
    print("Printing in color");
  }
}