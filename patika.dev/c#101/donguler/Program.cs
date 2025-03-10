//Ekrandan girilen sayıya kadar olan tek sayıları yazdırma
Console.Write("Sayı giriniz:");
int sayac = int.Parse(Console.ReadLine());
for (int i = 1; i <= sayac; i++)
{
    if (i % 2 == 1)
        Console.WriteLine(i);
}
//1 ile 1000 arasındaki tek ve çift sayıların kendi içlerinde toplamlalarını yazdırma
int tekToplam = 0;
int cifToplam = 0;
for (int i = 1; i <= 1000; i++)
{
    if (i % 2 == 1)
        tekToplam += i; //tektoplam = tektoplam +i;
    else
        cifToplam += i; //cifToplam = cifToplam +i;
}
Console.WriteLine("Tek Sayıların toplamı=" + tekToplam);
Console.WriteLine("Çift Sayıların toplamı=" + cifToplam);

//break, continue

for (int i = 1; i < 10; i++)
{
    if (i == 7)
        break;
    Console.WriteLine(i);
}
for (int i = 1; i < 10; i++)
{
    if (i == 7)
        continue;
    Console.WriteLine(i);
}
//while
//1den başlayarak konsoldan girilen sayıya kadar ortalama hesaplayıp konsola yazdırma
Console.Write("Sayı giriniz:");
int sayi = int.Parse(Console.ReadLine()); //10
int sayac = 1;
int toplam = 0;
while (sayac <= sayi)
{
    toplam += sayac;
    sayac++;
}
Console.WriteLine(toplam / sayi);

// 'a' dan 'z' ye kadar tüm harfleri konsola yazdırma
char character = 'a';
while (character < 'z')
{
    Console.Write(character);
    character++;
}

Console.WriteLine("*** Foreach ***");

string[] arabalar = { "mustang", "dodge", "astonmartin", "tofaşslx1.6" };
foreach (var araba in arabalar)
{
    Console.WriteLine(araba);
}