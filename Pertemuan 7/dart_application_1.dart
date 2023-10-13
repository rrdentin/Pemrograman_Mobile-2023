void main(){
    print("============================ Arimetic =========================");
    //Arimetic
    print("var first = 100 & var second = 50");
    var first = 100;
    var second = 50;

    //print (+) 
    print("\nHasil Penjumlahan (first+second) \t\t= " + (first + second).toString());
    //-
    print("Hasil Pengurangan (first-second) \t\t= " + (first - second).toString());
    ///
    print("Hasil pembagian (first/second) \t\t\t= " + (first / second).toString());
    //~/
    print("Hasil pembulatan pembagian (first~/second) \t= " + (first ~/ second).toString());
    
  //comparison boolean
    print("\n============================ Comparison boolean ============================");
    print("var d = 10 & var c = 15");
    var d = 10;
    var c = 15;
    //print(==);
    print("Hasil == : " + (d == c).toString());
    //!=;
    print("Hasil != : " + (d != c).toString());
    //>
    print("Hasil <  : " + (d < c).toString());
    //<
    print("Hasil >  : " + (d > c).toString());
    //>=return
    print("Hasil >= : " + (d >= c).toString());
    //<=return
    print("Hasil <= : " + (d <= c).toString());
    

    //print ('alphabet'==);
    print("\n============================ Comparison boolean Alphabet ============================");
    //!=;
    print("alphabet & number");
    print ("Hasil == : " + ('alphabet' == 'number').toString());
    print ("Hasil != : " + ('alphabet' != 'number').toString());
  
  //increment decrement
    print("\n============================ Operasi Increment & Decrement ============================");
    print("var b = 10");
    var b = 10;
    print("b = b + 10");
    b = b + 10;
    //b += 10;
    print(b);

      //++var : var=1+var
      print("\nHasil (++b) : " + (++b).toString());
      //var++ : var=(var+1)
      print("Hasil (b++) : " + (b++).toString());

      //--var : var=1-var
      print("Hasil (--b) : " + (--b).toString());
      //var-- : var=(var-1)
      print("Hasil (b--) : " + (b--).toString());


      print("\nvar a = 0");
      var a = 0;
      ++a;
      print("Hasil (++a) : " + (a).toString());
      print("Hasil (a++) : " + (a).toString());
      print("Hasil (--a) : " + (--a).toString());
      print("Hasil (a--) : " + (a--).toString());


      print("\nIncrement e = a++");
      var e = a++; //((e=a)+1)
      print("Hasil (a) : " + (a).toString());
      print("Hasil (e) : " + (e).toString());

      print("\nIncrement f = ++a");
      var f = ++a; //(f=(a+1))
      print("Hasil (a) : " + (a).toString());
      print("Hasil (f) : " + (f).toString());

      print("\nDecrement g = a--");
      var g = a--; //((e=a)+1)
      print("Hasil (a) : " + (a).toString());
      print("Hasil (g) : " + (g).toString());

      print("\nDecrement h = --a");
      var h = --a; //(f=(a+1))
      print("Hasil (a) : " + (a).toString());
      print("Hasil (h) : " + (h).toString());
}