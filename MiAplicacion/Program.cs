using System;

namespace MiAplicacion
{
    class Program
    {
        static void Main(string[] args)
        {


   string salida = "";
                        double hT = 0;
                        double sH = 0;
                        int t = 0; //(1.-obrero, 2.-empleado)
                        double sB = 0;
                        double sN = 0;
                        string Lector = "";
                        Console.WriteLine("----------------------------------------------------------------------------------------");
                        Console.WriteLine("---Bienvenido al sistema de calculo de nomina Seccion 777 de Programacion Estructurda---");
                        Console.WriteLine("----------------------------------------------------------------------------------------");
                        Console.WriteLine("---Alberto Pancracio          1-06-9999-------------------------------------------------");
                        Console.WriteLine("---Maria la del barrio        1-88-6666-------------------------------------------------");
                        Console.WriteLine("---Franklin Araugo            2-99-8887-------------------------------------------------");
                        Console.WriteLine("----------------------------------------------------------------------------------------");
                        Console.WriteLine("");

                        Console.WriteLine("Pana Dame las horas trabajadas por el susodicho");
                        Lector = Console.ReadLine();
                        hT = Convert.ToDouble(Lector);

                        Console.WriteLine("Cual es el salario por hora del fatal");
                        Lector = Console.ReadLine();
                        sH = Convert.ToDouble(Lector);

                        Console.WriteLine("Ahora dame el tipo, por si no sabes aqui solo vas a digitar 1 o 2, no te pongas de gracioso a digitar otra vaina que despues voy a explotar y vaina");
                        Lector = Console.ReadLine();
                        t = Convert.ToInt32(Lector);



                        sB = sH * hT;

                        if(sB >= 100000)
                        {

                            if(t == 1)
                            {
                                sN = sB - (sB * 0.10);
                            }
                            else if(t == 2)
                            {
                                sN = sB - (sB * 0.15);
                            }
                            else
                            {
                                Console.WriteLine("Usted si es bruto mano, le dije que digitara 1 o 2, :/");
                                Console.ReadKey();
                            }
                        }
                        else
                        {
                            sN = sB;
                        }




                        Console.WriteLine("Este empleado se gano: " + sN.ToString());
                        Console.ReadKey();








        }
    }
}
