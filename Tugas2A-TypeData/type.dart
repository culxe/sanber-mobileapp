// Soal 1
// var word = 'dart';
// var second = 'is';
// var third = 'awesome';
// var fourth = 'and';
// var fifth = 'I';
// var sixth = 'love';
// var seventh = 'it!'; 
// void main(){
//    print('$word $second $third $fourth $fifth $sixth $seventh');
// }


// Soal 2
// var sentence = "I am going to be Flutter Developer";

// var exampleFirstWord = sentence[0] ;
// var exampleSecondWord = sentence[2] + sentence[3] ;
// var thirdWord = sentence[5] + sentence[6] + sentence[7] + sentence[8] + sentence[9];
//   var fourthWord = sentence[11] + sentence[12];
//   var fifthWord = sentence[14] + sentence[15]; 
//   var sixthWord = sentence[17] + sentence[18] + sentence[19] + sentence[20] + sentence[21] + sentence[22] + sentence[23];
//   var seventhWord = sentence.substring(25,33);

// void main(){
//     print('First Word: ' + exampleFirstWord);
//     print('Second Word: ' + exampleSecondWord);
//     print('Third Word: ' + thirdWord);
//     print('Fourth Word: ' + fourthWord);
//     print('Fifth Word: ' + fifthWord);
//     print('Sixth Word: ' + sixthWord);
//     print('Seventh Word: ' + seventhWord);
// }

// Soal 3
// import 'dart:io';

// void main(List<String> args) {
//     print("masukan nama depan :");
//     String? namaDepan = stdin.readLineSync()!;
//     print("masukan nama belakang :");
//     String? namaBelakang = stdin.readLineSync()!;
    
//     print("nama lengkap anda adalah");
//     print("${namaDepan} ${namaBelakang}");
 
// }

// Soal 4
int a=5;
int b=10;
int perkalian = a * b;
double pembagian = a/b;
int penambahan = a+b;
int pengurangan = a-b;

void main(){
    print("Perkalian: $perkalian");

    print("Pembagian: $pembagian ");

    print("Penambahan: $penambahan ");

    print("Pengurangan: $pengurangan ");
}