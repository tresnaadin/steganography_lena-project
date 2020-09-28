clear all:

%Untuk membaca gambar lena512.bmp
%line imshow(q) hanya untuk mengecek apakah gambarnya bisa atau tidak
q = imread('lena512.bmp')
%imshow(q)

%Ambil 8 digit decimal dari matriks yang ada
angka = [136  143  148  146  139  124  103   77;
  127  126  121  112   92   79   64   58;
  114   94   83   70   67   50   55   47;
   94   73   64   48   50   46   47   49;
   82   59   53   46   49   47   46   44;
   61   47   48   52   47   46   51   51;
   53   44   44   43   48   46   45   48;
   50   40   46   43   48   47   48   50]

%Rubah decimal 8x8 ke biner
w=dec2bin(angka, 8)

%Dari konversi decimal ke biner tadi, ambil 8 digit biner terakhir
del = [01001101;
00111010;
00101111;
00110001;
00101100;
00110011;
00110000;
00110010]

%Ganti 8 digit biner tadi, menjadi kata baru. Untuk contoh kami rubah menjadi kata "desember"
gan = ['01100100';
    '01100101';
    '01110011';
    '01100101';
    '01101101';
    '01100010';
    '01100101';
    '01110010']

%Dari biner tadi, dirubah menjadi decimal kembali
x=bin2dec (gan)

%Dari decimal tersebut, diinput ke paling depan decimal 8x8 yang sebelumnya diambil dari matrix
berubah = [100  143  148  146  139  124  103   77;
  101  126  121  112   92   79   64   58;
  115   94   83   70   67   50   55   47;
   101   73   64   48   50   46   47   49;
   109   59   53   46   49   47   46   44;
   98   47   48   52   47   46   51   51;
   101   44   44   43   48   46   45   48;
   114   40   46   43   48   47   48   50]

%Ubah decimal 8x8 diatas, menjadi grayscale
form=mat2gray(berubah);

%Show hasil akhir
imshow(form)