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
                    case 'a' %La Tortuga
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
                        
                        P=('a. Amplificar\nb. Atenuar\nc. No hacer nada\n');
                        disp('Seleccione si desea amplificar o atenuar la señal:')
                        fprintf(P)
                        Pregunta=input(':','s');
                        
                        switch Pregunta
                            case 'a' %Amplificar
                                disp('Ingrese el parámetro de amplificación:')
                                Amplificar=input(':');
                                M=Amplificar*Mono(Inicio:Fin);
                            case 'b' %Atenuar
                                disp('Ingrese el parámetro de atenuación:')
                                Atenuar=input(':');
                                M=Mono(Inicio:Fin)/Atenuar;
                            case 'c' %No hacer nada
                                M=Mono(Inicio:Fin);
                        end
                        
                        Signal2=('a. Diezmar\nb. Interpolar\nc. No hacer nada\n');
                        disp('Seleccione si desea diezmar o interpolar la señal:')
                        fprintf(Signal2)
                        Modificar2=input(':','s');
                        
                        switch Modificar2
                            case 'a' %Diezmar
                                disp('Ingrese el parámetro de diezmado:')
                                Diez=input('');
                                X=decimate(M,Diez);
                                %song = audioplayer(M,Fs);
                                %play(song)
                            case 'b' %Interpolar
                                disp('Ingrese el parámetro de interpolación:')
                                Inter=input('');
                                X=interp(M,Inter);
                                %song = audioplayer(M,Fs);
                                %play(song)
                            case 'c' %No hacer nada
                                M=Mono(Inicio:Fin);
                                %song = audioplayer(M,Fs);
                                %play(song)
                        end
                        
                        Max=max(M);
                        Min=min(M);
                        disp('Ingrese la resolución en [mV] que desea tener:')
                        Delta=input(':');
                        B=log10((Max-Min)/Delta)/log10(2);
                        disp('número de bits necesarios para codificar la señal:')
                        Bits=ceil(B)
                        
                    case 'b' %El Mago
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
                        
                        P=('a. Amplificar\nb. Atenuar\nc. No hacer nada\n');
                        disp('Seleccione si desea amplificar o atenuar la señal:')
                        fprintf(P)
                        Pregunta=input(':','s');
                        
                        switch Pregunta
                            case 'a' %Amplificar
                                disp('Ingrese el parámetro de amplificación:')
                                Amplificar=input(':');
                                M=Amplificar*Mono(Inicio:Fin);
                            case 'b' %Atenuar
                                disp('Ingrese el parámetro de atenuación:')
                                Atenuar=input(':');
                                M=Mono(Inicio:Fin)/Atenuar;
                            case 'c' %No hacer nada
                                M=Mono(Inicio:Fin);
                        end
                        
                        Signal2=('a. Diezmar\nb. Interpolar\nc. No hacer nada\n');
                        disp('Seleccione si desea diezmar o interpolar la señal:')
                        fprintf(Signal2)
                        Modificar2=input(':','s');
                        
                        switch Modificar2
                            case 'a' %Diezmar
                                disp('Ingrese el parámetro de diezmado:')
                                Diez=input('');
                                X=decimate(M,Diez);
                                %song = audioplayer(M,Fs);
                                %play(song)
                            case 'b' %Interpolar
                                disp('Ingrese el parámetro de interpolación:')
                                Inter=input('');
                                X=interp(M,Inter);
                                %song = audioplayer(M,Fs);
                                %play(song)
                            case 'c' %No hacer nada
                                M=Mono(Inicio:Fin);
                                %song = audioplayer(M,Fs);
                                %play(song)
                        end
                        
                        Max=max(M);
                        Min=min(M);
                        disp('Ingrese la resolución en [mV] que desea tener:')
                        Delta=input(':');
                        B=log10((Max-Min)/Delta)/log10(2);
                        disp('número de bits necesarios para codificar la señal:')
                        Bits=ceil(B)
                end
                
            case 'b' %Sin ruido
                %toda la mierda anterior pero con los audios sin ruido.
        end
        
    case 'b' %Camilo Villegas
        Grabacion=('a. Con ruido\nb. Sin ruido\n');
        disp('Seleccione como desea escuchar la grabación:')
        fprintf(Grabacion)
        Audio=input(':','s');
        
        switch Audio
            case 'a'
                Cuento=('a. La tortuga gigante\nb. Cisóforo el mago\n');
                disp('Seleccione el cuento que desea analizar:')
                fprintf(Cuento)
                Analizar=input(':','s');
                
            case 'b'
                Cuento=('a. La tortuga gigante\nb. Cisóforo el mago\n');
                disp('Seleccione el cuento que desea analizar:')
                fprintf(Cuento)
                Analizar=input(':','s');
        end
        
    case 'c' %Christian Gaviria
        Grabacion=('a. Con ruido\nb. Sin ruido\n');
        disp('Seleccione como desea escuchar la grabación:')
        fprintf(Grabacion)
        Audio=input(':','s');
        
        switch Audio
            case 'a'
                Cuento=('a. La tortuga gigante\nb. Cisóforo el mago\n');
                disp('Seleccione el cuento que desea analizar:')
                fprintf(Cuento)
                Analizar=input(':','s');
                
            case 'b'
                Cuento=('a. La tortuga gigante\nb. Cisóforo el mago\n');
                disp('Seleccione el cuento que desea analizar:')
                fprintf(Cuento)
                Analizar=input(':','s');
        end
        
    otherwise
        disp('Estudiante no identificado, intente nuevamente.')
end