Algoritmo MergeSort
    Definir num, i Como Enteros;
    Definir vector Como Entero;
    Escribir "Ingrese el tamano del vector";
    Leer num;
    dimension vector[num];
    Para i<-1 Hasta num Con Paso 1 Hacer
        Escribir "Ingrese el numero ", i;
        Leer vector[i];
    FinPara
    mezcla(vector, num);
    Escribir "los elementos ordenados del vector son: ";
    Para i<-1 Hasta num-1 Con Paso 1 Hacer
        Escribir vector[i];
    FinPara
FinAlgoritmo
	SubProceso mezclar (arreglo1, n1, arreglo2, n2, arreglo3)
    Definir x1,x2,x3 Como Enteros;
    x1<-1;
    x2<-1;
    x3<-0;
    Mientras (x1 < n1 y x2 < n2) Hacer
        Si arreglo1[x1] < arreglo2[x2] Entonces
            arreglo3[x3] <- arreglo1[x1];
            x1<-x1 + 1;
        Sino
            arreglo3[x3] <- arreglo2[x2];
            x2<-x2 + 1;
        FinSi
        x3<-x3 + 1;
    FinMientras
    Mientras x1 < n1 Hacer
        arreglo3[x3] <- arreglo2[x1];
        x1<-x1 + 1;
        x3<-x3 + 1;
    FinMientras
    Mientras x2 < n2 Hacer
        arreglo3[x3] <- arreglo2[x2];
        x2<-x2 + 1;
        x3<-x3 + 1;
    FinMientras
FinSubProceso
SubProceso mezcla ( vector por referencia, n )
    Definir n1, n2, x, t Como Enteros;
    Si n > 1 Entonces
        Si n % 2 = 0 Entonces
            n1 <- trunc(n / 2);
            n2 <- n1;
        Sino
            n1 <- trunc(n / 2);
            n2 <- n1+1;
        FinSi
        Dimension vector1[n1];
        Dimension vector2[n2];
        Definir vector1, vector2 Como Enteros;
        Para x<-1 Hasta n1-1 Con Paso 1 Hacer
            vector1[x] <- vector[x];
            Para t <- 1 Hasta n2-1 Con Paso 1 Hacer
                vector2[t] <- vector[x];
            FinPara
        FinPara
        mezcla(vector1,n1);
        mezcla(vector2,n2);
        mezclar(vector1, n1, vector2, n2, vector);
    FinSi
FinSubProceso