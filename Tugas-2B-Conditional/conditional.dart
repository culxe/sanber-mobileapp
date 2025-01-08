import 'dart:io';

// Soal 1

// void main(List<String> args){
//     print("Masukkan input (y/t):");
//     String? installga = stdin.readLineSync()!;
//     (installga == "y") ? print("anda akan menginstall aplikasi dart") : print("aborted");
//     }

// Soal 2
// void main(List<String> args){
//     print("masukkan nama: ");
//     String? name = stdin.readLineSync()!;
//     print("masukkan peran: ");
//     String? peran = stdin.readLineSync()!;
//     if (name == null || name.isEmpty && peran == null ) {
//         print('Nama harus diisi!');
//     } else if (peran == null || peran.isEmpty ) {
//         print('Halo $name, Pilih peranmu untuk memulai game!');
//     } else if (peran == "penyihir") {
//         print('Selamat datang di Dunia Werewolf, $name. Halo $peran $name, kamu dapat melihat siapa yang menjadi werewolf!');
//     } else if (peran == "guard") {
//         print('Selamat datang di Dunia Werewolf, $name. Halo $peran $name, kamu akan membantu melindungi temanmu dari serangan werewolf');
//     } else if (peran == "werewolf") {
//         print('Selamat datang di Dunia Werewolf, $name. Halo $peran $name, Kamu akan memakan mangsa setiap malam!');
//     } 
// }

// Soal 3
// void main(List<String> args) { 
// print("masukkan hari: ");
// String? hari = stdin.readLineSync()!;
// switch(hari) {
//   case 'senin':   { print('Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.'); break; }
//   case 'selasa':   { print('Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.'); break; }
//   case 'rabu':   { print('Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.'); break; }
//   case 'kamis':   { print('Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.'); break; }
//   case 'jumat':   { print('Hidup tak selamanya tentang pacar.'); break; }
//   case 'sabtu':   { print('Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.'); break; }
//   case 'minggu':   { print('Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.'); break; }
// }
// }

// Soal 4
int tanggal=21;
int bulan=1;
int tahun=1945;


void main(){
    late String namaBulan;
    switch (bulan) {
    case 1: {
        namaBulan = "Januari";
        break;
    }
    case 2: {
        namaBulan = "Februari";
        break;
    }
    case 3: {
        namaBulan = "Maret";
        break;
    }
    case 4: {
        namaBulan = "April";
        break;
    }
    case 5: {
        namaBulan = "Mei";
        break;
    }
    case 6: {
        namaBulan = "Juni";
        break;
    }
    case 7: {
        namaBulan = "Juli";
        break;
    }
    case 8: {
        namaBulan = "Agustus";
        break;
    }
    case 9: {
        namaBulan = "September";
        break;
    }
    case 10: {
        namaBulan = "Oktober";
        break;
    }
    case 11: {
        namaBulan = "November";
        break;
    }
    case 12: {
        namaBulan = "Desember";
        break;
    }
    default: {
        namaBulan = "Bulan tidak valid!";
    }
    }


    print("$tanggal $namaBulan $tahun");
}
