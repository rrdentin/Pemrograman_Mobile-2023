void main() {
  //. List type data adalah object dengan menggunakan []

    List<int> ListInt = [];
    var ListString = <String>[];

    print(ListInt);
    print(ListString);
    
  //. Data dalam list bisa kita tambahkan lebih dari satu baris dalam tabel
  //. Ukuran List secara otomatis bertambah dengan menggunakan metode add(variabel)
    // var names = <String>[];
    // names.add('Rr.');
    // names.add('Denti');
    // names.add('Nurramadhona');

    // print (names);
    // print(names.length);

    //atau tanpa koma
    //  var names = <String>[
    //   'RR.'
    //   'Denti'
    //   'Nurramadhona'
    //  ];

    // print (names);
    // print(names.length);

  //atau dengan koma
    // var names = <String>[
    //   'RR.',
    //   'Denti',
    //   'Nurramadhona',
    // ];

    // print (names);
    // print(names.length);

    final array1 = [1,2,3];
    const array2 = [4,5,6];
    array1[2] = 100;
    //array2[2] = 100;

    print(array1);
    print(array2);

  //Index
    // names[0] = 'Denti';
    // print(names[0]);

    // names.removeAt(1);
    // print(names);
    // print(names[1]);

    //Set
      Set<int> numbers = {};
      var strings = <String>{};
      var doubles = <double>{};

      print(numbers);
      
      var names = <String>{};

      names.add('RR.');
      names.add('RR.');
      names.add('Denti');
      names.add('Denti');
      names.add('Nurramadhona');
      names.add('Nurramadhona');

      print(names);
      print(names.length);

      names.remove('RR.');
      print(names);
      print(names.length);
}