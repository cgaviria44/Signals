% Christian Camilo Gaviria Castro - 1017229318
% Steven Urrego Rodriguez - 1152692904
% Juan Camilo Villegas - 1037648638

clc,clearvars,clear workspace, close all

Estudiante=('a. Steven urrego\nb. Camilo Villegas\nc. Christian Gaviria\n');
disp('Seleccione el estudiante que desea analizar:')
fprintf(Estudiante)
Usuario=input(':','s');

switch Usuario
    case 'a' %Steven Urrego
        Grabacion=('a. Con ruido\nb. Sin ruido\n');
        disp('Seleccione si desea escuchar la grabación con o sin ruido:')
        fprintf(Grabacion)
        Audio=input(':','s');
        
        switch Audio
            case 'a' %Con ruido
                Cuento=('a. La tortuga gigante\nb. Cisóforo el mago\n');
                disp('Seleccione el cuento que desea analizar:')
                fprintf(Cuento)
                Analizar=input(':','s');
                
                switch Analizar
                    case 'a' %La Tortuga gigante
                        [y,Fs]=audioread('jcamilo_ruido.mp3');
                        Mono=sum(y,2)/size(y,2);
                        disp('Seleccione el rango de tiempo en el que desea analizar (Rango disponible: 1-554 s):')
                        disp('Tiempo inicial:')
                        In=input('');
                        disp('Tiempo final:')
                        Fi=input('');
                        Inicio=In*Fs;
                        Fin=Fi*Fs;
                        M=Mono(Inicio:Fin);
                        
                    case 'b' %Cisóforo el Mago
                        [y,Fs]=audioread('jcamilo_ruido.mp3');
                        Mono=sum(y,2)/size(y,2);
                        Tiempo=size(Mono,1)/Fs;
                        disp('Seleccione el rango de tiempo en la que desea analizar (Rango disponible: 555-725 s):')
                        disp('Tiempo inicial:')
                        In=input('');
                        disp('Tiempo final:')
                        Fi=input('');
                        Inicio=In*Fs;
                        Fin=Fi*Fs;
                        M=Mono(Inicio:Fin);
                        
                    otherwise
                        disp('Cuento no identificado, intente nuevamente.')
                end
                
            case 'b' %Sin ruido
                Cuento=('a. La tortuga gigante\nb. Cisóforo el mago\n');
                disp('Seleccione el cuento que desea analizar:')
                fprintf(Cuento)
                Analizar=input(':','s');
                
                switch Analizar
                    case 'a' %La Tortuga gigante
                        [y,Fs]=audioread('jcamilo_ruido.mp3');
                        Mono=sum(y,2)/size(y,2);
                        disp('Seleccione el rango de tiempo en el que desea analizar (Rango disponible: 1-554 s):')
                        disp('Tiempo inicial:')
                        In=input('');
                        disp('Tiempo final:')
                        Fi=input('');
                        Inicio=In*Fs;
                        Fin=Fi*Fs;
                        M=Mono(Inicio:Fin);
                        
                    case 'b' %Cisóforo el Mago
                        [y,Fs]=audioread('jcamilo_ruido.mp3');
                        Mono=sum(y,2)/size(y,2);
                        Tiempo=size(Mono,1)/Fs;
                        disp('Seleccione el rango de tiempo en la que desea analizar (Rango disponible: 555-725 s):')
                        disp('Tiempo inicial:')
                        In=input('');
                        disp('Tiempo final:')
                        Fi=input('');
                        Inicio=In*Fs;
                        Fin=Fi*Fs;
                        M=Mono(Inicio:Fin);
                        
                    otherwise
                        disp('Cuento no identificado, intente nuevamente.')
                end
                
            otherwise
                disp('Audio no identificado, intente nuevamente.')
        end
        
    case 'b' %Camilo Villegas
        Grabacion=('a. Con ruido\nb. Sin ruido\n');
        disp('Seleccione si desea escuchar la grabación con o sin ruido:')
        fprintf(Grabacion)
        Audio=input(':','s');
        
        switch Audio
            case 'a' %Con ruido
                Cuento=('a. La tortuga gigante\nb. Cisóforo el mago\n');
                disp('Seleccione el cuento que desea analizar:')
                fprintf(Cuento)
                Analizar=input(':','s');
                
                switch Analizar
                    case 'a' %La Tortuga gigante
                        [y,Fs]=audioread('jcamilo_ruido.mp3');
                        Mono=sum(y,2)/size(y,2);
                        disp('Seleccione el rango de tiempo en el que desea analizar (Rango disponible: 1-553 s):')
                        disp('Tiempo inicial:')
                        In=input('');
                        disp('Tiempo final:')
                        Fi=input('');
                        Inicio=In*Fs;
                        Fin=Fi*Fs;
                        M=Mono(Inicio:Fin);
                        
                    case 'b' %Cisóforo el Mago
                        [y,Fs]=audioread('jcamilo_ruido.mp3');
                        Mono=sum(y,2)/size(y,2);
                        disp('Seleccione el rango de tiempo en la que desea analizar (Rango disponible: 554-725 s):')
                        disp('Tiempo inicial:')
                        In=input('');
                        disp('Tiempo final:')
                        Fi=input('');
                        Inicio=In*Fs;
                        Fin=Fi*Fs;
                        M=Mono(Inicio:Fin);
                        
                    otherwise
                        disp('Cuento no identificado, intente nuevamente.')
                end
                
            case 'b' %Sin ruido
                Cuento=('a. La tortuga gigante\nb. Cisóforo el mago\n');
                disp('Seleccione el cuento que desea analizar:')
                fprintf(Cuento)
                Analizar=input(':','s');
                
                switch Analizar
                    case 'a' %La Tortuga gigante
                        [y,Fs]=audioread('jcamilo.mp3');
                        Mono=sum(y,2)/size(y,2);
                        disp('Seleccione el rango de tiempo en el que desea analizar (Rango disponible: 1-573 s):')
                        disp('Tiempo inicial:')
                        In=input('');
                        disp('Tiempo final:')
                        Fi=input('');
                        Inicio=In*Fs;
                        Fin=Fi*Fs;
                        M=Mono(Inicio:Fin);
                        
                    case 'b' %Cisóforo el Mago
                        [y,Fs]=audioread('jcamilo.mp3');
                        Mono=sum(y,2)/size(y,2);
                        Tiempo=size(Mono,1)/Fs;
                        disp('Seleccione el rango de tiempo en la que desea analizar (Rango disponible: 574-753 s):')
                        disp('Tiempo inicial:')
                        In=input('');
                        disp('Tiempo final:')
                        Fi=input('');
                        Inicio=In*Fs;
                        Fin=Fi*Fs;
                        M=Mono(Inicio:Fin);
                        
                    otherwise
                        disp('Cuento no identificado, intente nuevamente.')
                end
                
            otherwise
                disp('Estudiante no identificado, intente nuevamente.')
        end
        
    case 'c' %Christian Gaviria
        Grabacion=('a. Con ruido\nb. Sin ruido\n');
        disp('Seleccione si desea escuchar la grabación con o sin ruido:')
        fprintf(Grabacion)
        Audio=input(':','s');
        
        switch Audio
            case 'a' %Con ruido
                Cuento=('a. La tortuga gigante\nb. Cisóforo el mago\n');
                disp('Seleccione el cuento que desea analizar:')
                fprintf(Cuento)
                Analizar=input(':','s');
                
                switch Analizar
                    case 'a' %La Tortuga gigante
                        [y,Fs]=audioread('jcamilo_ruido.mp3');
                        Mono=sum(y,2)/size(y,2);
                        Tiempo=size(Mono,1)/Fs;
                        disp('Seleccione el rango de tiempo en el que desea analizar (Rango disponible: 1-554 s):')
                        disp('Tiempo inicial:')
                        In=input('');
                        disp('Tiempo final:')
                        Fi=input('');
                        Inicio=In*Fs;
                        Fin=Fi*Fs;
                        M=Mono(Inicio:Fin);
                        
                    case 'b' %Cisóforo el Mago
                        [y,Fs]=audioread('jcamilo_ruido.mp3');
                        Mono=sum(y,2)/size(y,2);
                        disp('Seleccione el rango de tiempo en la que desea analizar (Rango disponible: 555-725 s):')
                        disp('Tiempo inicial:')
                        In=input('');
                        disp('Tiempo final:')
                        Fi=input('');
                        Inicio=In*Fs;
                        Fin=Fi*Fs;
                        M=Mono(Inicio:Fin);
                        
                    otherwise
                        disp('Cuento no identificado, intente nuevamente.')
                end
                
            case 'b' %Sin ruido
                Cuento=('a. La tortuga gigante\nb. Cisóforo el mago\n');
                disp('Seleccione el cuento que desea analizar:')
                fprintf(Cuento)
                Analizar=input(':','s');
                
                switch Analizar
                    case 'a' %La Tortuga gigante
                        [y,Fs]=audioread('jcamilo_ruido.mp3');
                        Mono=sum(y,2)/size(y,2);
                        disp('Seleccione el rango de tiempo en el que desea analizar (Rango disponible: 1-554 s):')
                        disp('Tiempo inicial:')
                        In=input('');
                        disp('Tiempo final:')
                        Fi=input('');
                        Inicio=In*Fs;
                        Fin=Fi*Fs;
                        M=Mono(Inicio:Fin);
                        
                    case 'b' %Cisóforo el Mago
                        [y,Fs]=audioread('jcamilo_ruido.mp3');
                        Mono=sum(y,2)/size(y,2);
                        disp('Seleccione el rango de tiempo en la que desea analizar (Rango disponible: 555-725 s):')
                        disp('Tiempo inicial:')
                        In=input('');
                        disp('Tiempo final:')
                        Fi=input('');
                        Inicio=In*Fs;
                        Fin=Fi*Fs;
                        M=Mono(Inicio:Fin);
                        
                    otherwise
                        disp('Cuento no identificado, intente nuevamente.')
                end
                
            otherwise
                disp('Audio no identificado, intente nuevamente.')
        end
        
    otherwise
        disp('Estudiante no identificado, intente nuevamente.')
end

Signal=('a. Amplificar\nb. Atenuar\nc. No hacer nada\n');
disp('Seleccione si desea amplificar o atenuar la señal:')
fprintf(Signal)
Preguntar=input(':','s');

switch Preguntar
    case 'a' %Amplificar
        disp('Ingrese el parámetro de amplificación:')
        Amplificar=input(':');
        M=Amplificar*Mono(Inicio:Fin);
    case 'b' %Atenuar
        disp('Ingrese el parámetro de atenuación:')
        Atenuar=input(':');
        M=Mono(Inicio:Fin)/Atenuar;
    case 'c' %No hacer nada
end

Signal2=('a. Diezmar\nb. Interpolar\nc. No hacer nada\n');
disp('Seleccione si desea diezmar o interpolar la señal:')
fprintf(Signal2)
Preguntar2=input(':','s');

switch Preguntar2
    case 'a' %Diezmar
        disp('Ingrese el parámetro de diezmado:')
        Diez=input('');
        M=decimate(M,Diez);
    case 'b' %Interpolar
        disp('Ingrese el parámetro de interpolación:')
        Inter=input('');
        M=interp(M,Inter);
    case 'c' %No hacer nada
end

Max=max(M);
Min=min(M);
disp('Ingrese la resolución en [mV] que desea tener:')
Delta=input(':');
Bit=log10((Max-Min)/Delta)/log10(2);
disp('número de bits necesarios para codificar la señal:')
Bits=ceil(Bit)

Mf=fft(M);
Muestras=length(Mf);
k=0:Muestras-1;
L=length(M);
t=linspace(Inicio/Fs,Fin/Fs,L);

Grafica=('a. En frecuencia analógica\nb. En frecuencia digital o normalizada\n');
disp('Eliga como desea observar la gráfica:')
fprintf(Grafica)
funcion=input(':','s');

switch funcion
    case 'a'
        z=Fs*k/Muestras;
    case 'b'
        z=2*pi*k/Muestras;
end

subplot(211)
plot(t./60,M), axis tight, grid on
xlabel 'Tiempo [min]', ylabel 'Amplitud [v]', title 'Intervalo de la señal analizada'

subplot(212)
plot(z,(20*log10(abs(Mf).^2))), axis tight, grid on
xlabel 'Frecuencia \omega [Rad]', ylabel 'ESD [dB]', title 'Espectro de Fourier'

song = audioplayer(M,Fs);
play(song)