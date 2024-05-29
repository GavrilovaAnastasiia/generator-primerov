program Primeri;
var a:array [1..300] of double;
    b:array [1..300] of double;
    i, m, k:integer;
    q:longint;
    n,v:byte;//цифры после запятой
    z:array [1..4] of string;
    f: text; // переменная для текстового файла
begin
 z[1]:='+';
 z[2]:='-';
 z[3]:='*';
 z[4]:='/';
 write('Введите количество вариантов: ');
 readln(m);
  write('Введите количество цифр целой части числа: ');
 readln(n);
 q:=1;
 for i:=1 to n do
   q:=q*10;
 write('Введите количество знаков после запятой: ');
 readln(n);
 writeln('Задание: Проведите вычисления в компьютерной форме. Сделайте проверку, используя приложение.');
  assign(f, 'Laboratornaya.txt'); // назначаем файл
  rewrite(f); // открываем файл для записи
 writeln(f, 'Задание: Проведите вычисления в компьютерной форме. Сделайте проверку, используя приложение.'); 
k:=1;
v:=1;
 randomize;
 for i:=1 to m*4 do begin
 if k=1 then begin writeln('Вариант № ',v); writeln(f, 'Вариант № ', v); v:=v+1; end;
  a[i]:=random*(2*q)-q;
  b[i]:=random*(2*q)-q;
  if (z[k]='+') then begin a[i]:=abs(a[i]); b[i]:=abs(b[i]); end;
  if abs(a[i])<(q div 10) then a[i]:=(a[i]/abs(a[i]))*(q-abs(a[i]));
  if abs(b[i])<(q div 10) then b[i]:=(b[i]/abs(b[i]))*(q-abs(b[i]));
  if a[i]<0 then begin write(k,'. (',a[i]:0:n,')'); write(f, k,'. (', a[i]:0:n, ')'); end else begin write(k,'. ',a[i]:0:n);  write(f, k,'. ', a[i]:0:n); end;
   write(' ',z[k],' ');
   write(f, ' ', z[k], ' '); 
  if b[i]<0 then begin writeln('(',b[i]:0:n,')'); writeln(f, '(', b[i]:0:n, ')'); end else begin writeln(b[i]:0:n);  writeln(f, b[i]:0:n); end;
  k:=k+1;
  if k=5 then k:=1;
 end;
  close(f);
   write('Файл в фоомате txt сформирован!');
end.

            
