/*
Bir konsol uygulamasında kullanıcıdan pozitif bir sayı girmesini isteyin(n). 
Sonrasında kullanıcıdan n adet pozitif sayı girmesini isteyin. 
Kullanıcının girmiş olduğu sayılardan çift olanlar console'a yazdırın.

using System;
using System.Collections.Generic;

class Program
{
    static void Main()
    {
        Console.WriteLine("Pozitif bir sayı girin (n):");
        int n = GetPositiveNumber();
        
        Console.WriteLine($"Lütfen {n} adet pozitif sayı girin:");
        List<int> numbers = GetNumbers(n);
        
        Console.WriteLine("Girilen çift sayılar:");
        PrintEvenNumbers(numbers);
    }

    static int GetPositiveNumber()
    {
        int number;
        while (true)
        {
            if (int.TryParse(Console.ReadLine(), out number) && number > 0)
            {
                return number;
            }
            Console.WriteLine("Geçersiz giriş! Lütfen pozitif bir sayı girin:");
        }
    }

    static List<int> GetNumbers(int count)
    {
        List<int> numbers = new List<int>();
        for (int i = 0; i < count; i++)
        {
            Console.Write($"{i + 1}. sayı: ");
            numbers.Add(GetPositiveNumber());
        }
        return numbers;
    }

    static void PrintEvenNumbers(List<int> numbers)
    {
        foreach (int number in numbers)
        {
            if (number % 2 == 0)
            {
                Console.WriteLine(number);
            }
        }
    }
}
*/

/*Bir konsol uygulamasında kullanıcıdan pozitif iki sayı girmesini isteyin (n, m). 
Sonrasında kullanıcıdan n adet pozitif sayı girmesini isteyin. 
Kullanıcının girmiş olduğu sayılardan m'e eşit yada tam bölünenleri console'a yazdırın

using System;
using System.Collections.Generic;

class Program
{
    static void Main()
    {
        Console.WriteLine("Lütfen iki pozitif sayı girin (n ve m):");
        
        Console.Write("n: ");
        int n = GetPositiveNumber();
        
        Console.Write("m: ");
        int m = GetPositiveNumber();
        
        Console.WriteLine($"Lütfen {n} adet pozitif sayı girin:");
        List<int> numbers = GetNumbers(n);
        
        Console.WriteLine($"Girilen sayılardan {m}'e eşit olan veya {m} ile tam bölünenler:");
        PrintDivisibleNumbers(numbers, m);
    }

    static int GetPositiveNumber()
    {
        int number;
        while (true)
        {
            if (int.TryParse(Console.ReadLine(), out number) && number > 0)
            {
                return number;
            }
            Console.WriteLine("Geçersiz giriş! Lütfen pozitif bir sayı girin:");
        }
    }

    static List<int> GetNumbers(int count)
    {
        List<int> numbers = new List<int>();
        for (int i = 0; i < count; i++)
        {
            Console.Write($"{i + 1}. sayı: ");
            numbers.Add(GetPositiveNumber());
        }
        return numbers;
    }

    static void PrintDivisibleNumbers(List<int> numbers, int m)
    {
        foreach (int number in numbers)
        {
            if (number == m || number % m == 0)
            {
                Console.WriteLine(number);
            }
        }
    }
}

*/

/*  
Bir konsol uygulamasında kullanıcıdan pozitif bir sayı girmesini isteyin (n). 
Sonrasında kullanıcıdan n adet kelime girmesi isteyin. 
Kullanıcının girişini yaptığı kelimeleri sondan başa doğru console'a yazdırın.


using System;
using System.Collections.Generic;

class Program
{
    static void Main()
    {
        Console.WriteLine("Pozitif bir sayı girin (n):");
        int n = GetPositiveNumber();
        
        Console.WriteLine($"Lütfen {n} adet kelime girin:");
        List<string> words = GetWords(n);
        
        Console.WriteLine("Kelimelerin sondan başa doğru sıralanışı:");
        PrintWordsReverse(words);
    }

    static int GetPositiveNumber()
    {
        int number;
        while (true)
        {
            if (int.TryParse(Console.ReadLine(), out number) && number > 0)
            {
                return number;
            }
            Console.WriteLine("Geçersiz giriş! Lütfen pozitif bir sayı girin:");
        }
    }

    static List<string> GetWords(int count)
    {
        List<string> words = new List<string>();
        for (int i = 0; i < count; i++)
        {
            Console.Write($"{i + 1}. kelime: ");
            string word = Console.ReadLine();
            words.Add(word);
        }
        return words;
    }

    static void PrintWordsReverse(List<string> words)
    {
        for (int i = words.Count - 1; i >= 0; i--)
        {
            Console.WriteLine(words[i]);
        }
    }
}

*/


/*
Bir konsol uygulamasında kullanıcıdan bir cümle yazması isteyin. 
Cümledeki toplam kelime ve harf sayısını console'a yazdırın.

using System;
using System.Linq;

class Program
{
    static void Main()
    {
        Console.WriteLine("Lütfen bir cümle yazın:");
        string sentence = Console.ReadLine();

        // Kelime sayısı (noktalama işaretlerini dikkate almadan)
        int wordCount = sentence.Split(new[] {' ', ',', '.', '!', '?'}, 
                                     StringSplitOptions.RemoveEmptyEntries).Length;
        
        // Harf sayısı (sadece harfleri say)
        int letterCount = sentence.Count(c => char.IsLetter(c));

        Console.WriteLine($"Toplam Kelime Sayısı: {wordCount}");
        Console.WriteLine($"Toplam Harf Sayısı: {letterCount}");
    }
}

*/

