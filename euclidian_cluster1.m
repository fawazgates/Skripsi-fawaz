%membaca data project yang akan ditentukan
A=xlsread('som_dataset.csv','A2:C243');
%membaca data nilai centroid cluster green and red
C=xlsread('som_dataset.csv','G7:I9');
%membaca ukuran data
[baris, kolom]=size(A);
%proses menghitung manhatt setiap baris data dengan centroid cluster 1 dan 2
for i=1:baris
    for j=1:kolom
        kelas1=sqrt(sum((A(i,j)-C(1,j)).^2));
        kelas2=sqrt(sum((A(i,j)-C(2,j)).^2));
        kelas3=sqrt(sum((A(i,j)-C(3,j)).^2));
    end
   if(kelas1<kelas2)
       if(kelas1<kelas3)
           H(i)='1';
       else
           H(i)='3';
   end
       H(i)='2';
   end
end
H=H';
xlswrite('Hasil.xls',H);