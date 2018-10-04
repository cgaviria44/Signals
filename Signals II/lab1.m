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
        disp('Seleccione como desea escuchar la grabación:')
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
                        
                        if In>=1 && Fi<=554
                            M=Mono(Inicio:Fin);
                        else
                            disp('Error al ingresar el rango.')
                        end
                        
                        P=('1. Sí\n2. No\n');
                        disp('Desea amplificar o atenuar la señal?')
                        fprintf(P)
                        Pregunta=input(':');
                        
                        if Pregunta==1
                            
                            Signal=('a. Amplificar\nb. Atenuar\n');
                            disp('Qué desea hacer?')
                            fprintf(Signal)
                            Modificar=input(':','s');
                            
                            switch Modificar
                                case 'a' %Amplificar
                                    disp('Ingrese el parámetro de amplificación:')
                                    Amplificar=input(':');
                                    M=Amplificar*Mono(Inicio:Fin);
                                case 'b' %Atenuar
                                    disp('Ingrese el parámetro de atenuación:')
                                    Atenuar=input(':');
                                    M=Mono(Inicio:Fin)/Atenuar;
                            end
                            
                        elseif Pregunta==2
                            
                            N=('1. Sí\n2. No\n');
                            disp('Desea diezmar o interpolar la señal?')
                            fprintf(N)
                            Pregunta2=input(':');
                            
                            if Pregunta2==1
                                
                                Signal2=('a. Diezmar\nb. Interpolar\n');
                                disp('Qué desea hacer?')
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
                                        %                                     case 'c' no hacer nada
                                        
                                end
                                
                                jmax=max(M);
                                jmin=min(M);
                                disp('Ingrese la resolución en [mV] que desea tener')
                                Delta=input(':');
                                B=log10((jmax-jmin)/Delta)/log10(2);
                                disp('número de bits necesarios para codificar la señal:')
                                Bits=ceil(B)
                                
                            else Pregunta2==2
                                
                                jmax=max(M);
                                jmin=min(M);
                                disp('Ingrese la resolución en [mV] que desea tener')
                                Delta=input(':');
                                B=log10((jmax-jmin)/Delta)/log10(2);
                                disp('número de bits necesarios para codificar la señal:')
                                Bits=ceil(B)
                            end
                        end
                        
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
                        
                        if In>=555 && Fi<=725
                            M=Mono(Inicio:Fin);
                        else
                            disp('Error al ingresar el rango.')
                        end
                        
                        P=('1. Sí\n2. No\n');
                        disp('Desea amplificar o atenuar la señal?')
                        fprintf(P)
                        Pregunta=input(':');
                        
                        if Pregunta==1
                            
                            Signal=('a. Amplificar\nb. Atenuar\n');
                            disp('Qué desea hacer?')
                            fprintf(Signal)
                            Modificar=input(':','s');
                            
                            switch Modificar
                                case 'a' %Amplificar
                                    disp('Ingrese el parámetro de amplificación:')
                                    Amplificar=input(':');
                                    M=Amplificar*Mono(Inicio:Fin);
                                case 'b' %Atenuar
                                    disp('Ingrese el parámetro de atenuación:')
                                    Atenuar=input(':');
                                    M=Mono(Inicio:Fin)/Atenuar;
                            end
                            
                        elseif Pregunta==2
                            
                            N=('1. Sí\n2. No\n');
                            disp('Desea diezmar o interpolar la señal?')
                            fprintf(N)
                            Pregunta2=input(':');
                            
                            if Pregunta2==1
                                
                                Signal2=('a. Diezmar\nb. Interpolar\n');
                                disp('Qué desea hacer?')
                                fprintf(Signal2)
                                Modificar2=input(':','s');
                                
                                switch Modificar2
                                    case 'a' %Diezmar
                                        disp('Ingrese el parámetro de diezmado:')
                                        Diez=input('');
                                        X=decimate(M,Diez);
                                    case 'b' %Interpolar
                                        disp('Ingrese el parámetro de interpolación:')
                                        Inter=input('');
                                        X=interp(M,Inter);
                                end
                                
                            else Pregunta2==2
                                disp('gonorrea hpta')
                            end
                        end
                end
                
            case 'b' %Sin ruido
                
            otherwise
                disp('Error, intente nuevamente.')
                
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