// // SOAL 1
// teriak(){
//     print("Halo Sanbers!");
// }
// void main(){
// teriak();
// }

// SOAL 2
// kalikan(int a, int b){
//     return a*b;
// }
// var num1 = 12;
// var num2 = 4;
// void main(){
//     var hasilKali = kalikan(num1, num2);
//     print(hasilKali);
// }

// SOAL 3
// String nama_method(var name, var age, var address, var hobby){
//     return "Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!";
// }
// void main(){
// var name = "Agus";
// var age = 30;
// var address = "Jln. Malioboro, Yogyakarta";
// var hobby = "Gaming";
 
// var perkenalan = nama_method(name, age, address, hobby);
// print(perkenalan);
// }

// SOAL 4
int faktorial(var n){
    if(n<=1){
        return 1;
    }
    return n*faktorial(n-1);
}
void main(){
    print(faktorial(5));
}