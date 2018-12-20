% Christian Camilo Gaviria Castro - 1017229318
% Steven Urrego Rodriguez - 1152692904
% Juan Camilo Villegas - 1037648638

function varargout = cgaviria_surrego_jvillegas(varargin)
% CGAVIRIA_SURREGO_JVILLEGAS MATLAB code for cgaviria_surrego_jvillegas.fig
%      CGAVIRIA_SURREGO_JVILLEGAS, by itself, creates a new CGAVIRIA_SURREGO_JVILLEGAS or raises the existing
%      singleton*.
%
%      H = CGAVIRIA_SURREGO_JVILLEGAS returns the handle to a new CGAVIRIA_SURREGO_JVILLEGAS or the handle to
%      the existing singleton*.
%
%      CGAVIRIA_SURREGO_JVILLEGAS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CGAVIRIA_SURREGO_JVILLEGAS.M with the given input arguments.
%
%      CGAVIRIA_SURREGO_JVILLEGAS('Property','Value',...) creates a new CGAVIRIA_SURREGO_JVILLEGAS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cgaviria_surrego_jvillegas_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cgaviria_surrego_jvillegas_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cgaviria_surrego_jvillegas

% Last Modified by GUIDE v2.5 25-Nov-2018 02:45:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cgaviria_surrego_jvillegas_OpeningFcn, ...
                   'gui_OutputFcn',  @cgaviria_surrego_jvillegas_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before cgaviria_surrego_jvillegas is made visible.
function cgaviria_surrego_jvillegas_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cgaviria_surrego_jvillegas (see VARARGIN)

% Choose default command line output for cgaviria_surrego_jvillegas
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cgaviria_surrego_jvillegas wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = cgaviria_surrego_jvillegas_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)



function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in estudiantes.%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
function estudiantes_Callback(hObject, eventdata, handles)
global  a
a=get(hObject,'Value');

% --- Executes during object creation, after setting all properties.
function estudiantes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to estudiantes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in audios.
function audios_Callback(hObject, eventdata, handles)
% SELECCIÓN DE AUDIO CON O SIN RUIDO %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global a y Fs   
estudiantes=a;
switch estudiantes
    case 2 %steven   %%%%%%%%%%%%%%%%%% USUARIO %%%%%%%%%%%%%%%%%%%%%%%%%%%
        b=get(hObject,'Value');
        audio=b;
        
        switch audio
            case 2
                [y,Fs] = audioread('surrego_ruido.mp3');
                y=sum(y,2)/size(y,2);
                texto='Rango disponible: 0s-642s ';
                set(handles.text12,'string',texto) ;
               
            case 3
                [y,Fs] = audioread('surrego.mp3');
                y=sum(y,2)/size(y,2);
                texto='Rango disponible: 0s-611s ';
                set(handles.text12,'string',texto) ;
            case 4
                [y,Fs] = audioread('surrego_ruido.mp3');
                y=sum(y,2)/size(y,2);
                texto='Rango disponible: 643s-857s ';
                set(handles.text12,'string',texto) ;
                
            case 5
                [y,Fs] = audioread('surrego.mp3');
                y=sum(y,2)/size(y,2);
                texto='Rango disponible: 612s-811s ';
                set(handles.text12,'string',texto) ;
        end
        
    case 3 %christian  %%%%%%%%%%%%%%%%%% USUARIO %%%%%%%%%%%%%%%%%%%%%%%%%%%
        b=get(hObject,'Value');
        audio=b;
        
        switch audio
            case 2
                [y,Fs] = audioread('cgaviria_ruido.mp3');
                y=sum(y,2)/size(y,2);
                texto='Rango disponible: 0s-639s ';
                set(handles.text12,'string',texto) ;
                
               
            case 3
                [y,Fs] = audioread('cgaviria.mp3');
                y=sum(y,2)/size(y,2);
                texto='Rango disponible: 0s-600s ';
                set(handles.text12,'string',texto) ;
                
            case 4
                [y,Fs] = audioread('cgaviria_ruido.mp3');
                y=sum(y,2)/size(y,2);
                texto='Rango disponible: 640s-869s ';
                set(handles.text12,'string',texto) ;
                
            case 5
                [y,Fs] = audioread('cgaviria.mp3');
                y=sum(y,2)/size(y,2);
                texto='Rango disponible: 601s-797s ';
                set(handles.text12,'string',texto) ;
                
        end
        
    case 4 % camilo  %%%%%%%%%%%%%%%%%% USUARIO %%%%%%%%%%%%%%%%%%%%%%%%%%%
        b=get(hObject,'Value');
        audio=b;
        
        switch audio
            
            case 2
                [y,Fs] = audioread('jcamilo_ruido.mp3');
                y=sum(y,2)/size(y,2);
                texto='Rango disponible: 0s-558s ';
                set(handles.text12,'string',texto) ;
               
               
            case 3
                [y,Fs] = audioread('jcamilo.mp3');
                y=sum(y,2)/size(y,2);
                texto='Rango disponible: 0s-575s ';
                set(handles.text12,'string',texto) ;
                
            case 4
                [y,Fs] = audioread('jcamilo_ruido.mp3');
                y=sum(y,2)/size(y,2);
                texto='Rango disponible: 555s-729s ';
                set(handles.text12,'string',texto) ;
                
            case 5
                [y,Fs] = audioread('jcamilo.mp3');
                y=sum(y,2)/size(y,2);
                texto='Rango disponible: 575s-756s ';
                set(handles.text12,'string',texto) ;
                
        end
end






% --- Executes during object creation, after setting all properties.
function audios_CreateFcn(hObject, eventdata, handles)
% hObject    handle to audios (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)



function edit3_Callback(hObject, eventdata, handles)
global inicio
t_inicial=get(hObject, 'string');
inicio=str2num(t_inicial);




function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
global final
t_final=get(hObject, 'string');
final=str2num(t_final);



% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global t y inicio final signal Fs 
signal=y(inicio*Fs:final*Fs);
L=length(signal);
t=linspace(inicio,final,L);
plot(handles.axes1,t,signal)
xlabel(handles.axes1,'Tiempo [s]')
axis tight
ylabel(handles.axes1,'Amplitud [v]')
title(handles.axes1,'Señal en el dominio del tiempo')
                
 
 


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, ~, handles)
global tipo tipo_filtro Ak
tipo_filtro=get(hObject,'Value');
switch tipo_filtro
    case 2
        tipo= 'low';
        Ak =[1 1 1 0 0 0];
        
    case 3
        tipo= 'high';
        Ak =[0 0 0 1 1 1];
        
    case 4
        tipo= 'bandpass';
        Ak=[0 0 1 1 0 0];
       
    case 5
        tipo= 'stop';
        Ak=[1 1 0 0 1 1];
end

% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, ~, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
global  Fs Fc2
F_sup=get(hObject, 'string');
f=str2num(F_sup);
Fc2=(f*2/(Fs));




function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
global  Fs Fc1
F_inf=get(hObject, 'string');
f=str2num(F_inf);
Fc1=(f*2/(Fs));


function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


        
   


function popupmenu5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(hObject, eventdata, handles)
global tipo Fs Fc1 Fc2 topo signal tipo_filtro Ak fil t inicio final
topo=get(hObject,'Value');
switch topo 
     
    case 2  %FIR Enventanado
        
        switch tipo_filtro
            
            case 2 % LOW
                orden=30;
                filtro1=fir1(orden,Fc1,tipo);
                [h,w]=freqz(filtro1,1);
                fil=filter(filtro1,1,signal);
                
               
                %RESPUESTA EN FRECUENCIA DE MAGNITUD
                plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                xlabel(handles.axes5,'Frecuencia [Hz]')
                axis tight
                ylabel(handles.axes5,'|H_{dB}(\omega)|')
                title(handles.axes5,'Respuesta en frecuencia de magnitud')
                
                
                % RESPUESTA EN FRECUENCIA DE FASE
                plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                axis tight
                title(handles.axes6,'Respuesta en frecuencia  de fase')
                xlabel(handles.axes6,'Frecuencia [Hz]')
                ylabel(handles.axes6,'|\angle H(\omega)|')
                
               
            case 3 %HIGH
                orden=30;
                filtro1=fir1(orden,Fc2,tipo);
                [h,w]=freqz(filtro1,1);
                fil=filter(filtro1,1,signal);
               
                %RESPUESTA EN FRECUENCIA DE MAGNITUD
                plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                axis tight
                xlabel(handles.axes5,'Frecuencia [Hz]')
                ylabel(handles.axes5,'Magnitud [dB]')
                title(handles.axes5,'Respuesta en frecuencia de magnitud')
                
                % RESPUESTA EN FRECUENCIA DE FASE
                plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                axis tight
                title(handles.axes6,'Respuesta en frecuencia  de fase')
                xlabel(handles.axes6,'Frecuencia [Hz]')
                ylabel(handles.axes6,'|\angle H(\omega)|')
                
            case 4 %BANDPASS
                
                orden=30;
                filtro1=fir1(orden,[Fc1 Fc2],tipo);
                [h,w]=freqz(filtro1,1);
                fil=filter(filtro1,1,signal);
               
                %RESPUESTA EN FRECUENCIA DE MAGNITUD
                plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                axis tight
                xlabel(handles.axes5,'Frecuencia [Hz]')
                ylabel(handles.axes5,'Magnitud [dB]')
                title(handles.axes5,'Respuesta en frecuencia de magnitud')
                
                % RESPUESTA EN FRECUENCIA DE FASE
                plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                axis tight
                title(handles.axes6,'Respuesta en frecuencia  de fase')
                xlabel(handles.axes6,'Frecuencia [Hz]')
                ylabel(handles.axes6,'|\angle H(\omega)|')
                
            case 5 %STOP
                orden=30;
                filtro1=fir1(orden,[Fc1 Fc2],tipo);
                [h,w]=freqz(filtro1,1);
                fil=filter(filtro1,1,signal);
               
                %RESPUESTA EN FRECUENCIA DE MAGNITUD
                plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                axis tight
                xlabel(handles.axes5,'Frecuencia [Hz]')
                ylabel(handles.axes5,'Magnitud [dB]')
                title(handles.axes5,'Respuesta en frecuencia de magnitud')
                
                % RESPUESTA EN FRECUENCIA DE FASE
                plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                axis tight
                title(handles.axes6,'Respuesta en frecuencia  de fase')
                xlabel(handles.axes6,'Frecuencia [Hz]')
                ylabel(handles.axes6,'|\angle H(\omega)|')
        end
        
    case 3  %FIR Muestreo en Frecuencia 
       
        orden=60;
        filtro2= fir2(orden,[0 Fc1-0.00005 Fc1 Fc2 Fc2+0.00005 1],Ak);
        fil=filter(filtro2,1,signal);
        [h,w]=freqz(filtro2,1);
        
        %RESPUESTA EN FRECUENCIA DE MAGNITUD
        plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
        axis tight
        xlabel(handles.axes5,'Frecuencia [Hz]')
        ylabel(handles.axes5,'Magnitud [dB]')
        title(handles.axes5,'Respuesta en frecuencia de magnitud')
        
        % RESPUESTA EN FRECUENCIA DE FASE
        plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
        axis tight
        title(handles.axes6,'Respuesta en frecuencia  de fase')
        xlabel(handles.axes6,'Frecuencia [Hz]')
        ylabel(handles.axes6,'|\angle H(\omega)|')
        
    case 4  %FIR Parks-McClellan
        
        orden=50;
        filtroPM=firpm(orden,[0 Fc1-0.000005 Fc1 Fc2 Fc2+0.000005 1],Ak);
        fil=filter(filtroPM,1,signal);
        [h,w]=freqz(filtroPM,1);
        
        %RESPUESTA EN FRECUENCIA DE MAGNITUD
        plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
        axis tight
        xlabel(handles.axes5,'Frecuencia [Hz]')
        ylabel(handles.axes5,'Magnitud [dB]')
        title(handles.axes5,'Respuesta en frecuencia de magnitud')
        
        % RESPUESTA EN FRECUENCIA DE FASE
        plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
        axis tight
        title(handles.axes6,'Respuesta en frecuencia  de fase')
        xlabel(handles.axes6,'Frecuencia [Hz]')
        ylabel(handles.axes6,'|\angle H(\omega)|')
        
    case 5  %IIR Butterworth
        
        switch tipo_filtro
            
            case 2 % LOW
                
                orden=10;
                [num,den]=butter(orden,Fc1,tipo);
                fil=filter(num,den,signal);
                [h,w]=freqz(num,den,512);
                
                %RESPUESTA EN FRECUENCIA DE MAGNITUD
                plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                axis tight
                xlabel(handles.axes5,'Frecuencia [Hz]')
                ylabel(handles.axes5,'Magnitud [dB]')
                title(handles.axes5,'Respuesta en frecuencia de magnitud')
                
                % RESPUESTA EN FRECUENCIA DE FASE
                plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                axis tight
                title(handles.axes6,'Respuesta en frecuencia  de fase')
                xlabel(handles.axes6,'Frecuencia [Hz]')
                ylabel(handles.axes6,'|\angle H(\omega)|')
                
                
            case 3 % HIGH
                
                orden=10;
                [num,den]=butter(orden,Fc2,tipo);
                fil=filter(num,den,signal);
                [h,w]=freqz(num,den,512);
                
                %RESPUESTA EN FRECUENCIA DE MAGNITUD
                plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                axis tight
                xlabel(handles.axes5,'Frecuencia [Hz]')
                ylabel(handles.axes5,'Magnitud [dB]')
                title(handles.axes5,'Respuesta en frecuencia de magnitud')
                
                % RESPUESTA EN FRECUENCIA DE FASE
                plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                axis tight
                title(handles.axes6,'Respuesta en frecuencia  de fase')
                xlabel(handles.axes6,'Frecuencia [Hz]')
                ylabel(handles.axes6,'|\angle H(\omega)|')
                
                
                
            case 4 % BANDPASS
                
                orden=10;
                [num,den]=butter(orden,[Fc1 Fc2],tipo);
                fil=filter(num,den,signal);
                [h,w]=freqz(num,den,512);
                
                %RESPUESTA EN FRECUENCIA DE MAGNITUD
                plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                axis tight
                xlabel(handles.axes5,'Frecuencia [Hz]')
                ylabel(handles.axes5,'Magnitud [dB]')
                title(handles.axes5,'Respuesta en frecuencia de magnitud')
                
                % RESPUESTA EN FRECUENCIA DE FASE
                plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                axis tight
                title(handles.axes6,'Respuesta en frecuencia  de fase')
                xlabel(handles.axes6,'Frecuencia [Hz]')
                ylabel(handles.axes6,'|\angle H(\omega)|')
                
            case 5 % STOP
                
                orden=10;
                [num,den]=butter(orden,[Fc1 Fc2],tipo);
                %[numD,denD] = bilinear(num,den,Fs);
                %filtro=filter(numD,denD,signal);
                fil=filter(num,den,signal);
                [h,w]=freqz(num,den,512);
                
                %RESPUESTA EN FRECUENCIA DE MAGNITUD
                plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                axis tight
                xlabel(handles.axes5,'Frecuencia [Hz]')
                ylabel(handles.axes5,'Magnitud [dB]')
                title(handles.axes5,'Respuesta en frecuencia de magnitud')
                
                % RESPUESTA EN FRECUENCIA DE FASE
                plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                axis tight
                title(handles.axes6,'Respuesta en frecuencia  de fase')
                xlabel(handles.axes6,'Frecuencia [Hz]')
                ylabel(handles.axes6,'|\angle H(\omega)|')
        end
        
    case 6  %IIR Chebyshov I
        
          switch tipo_filtro
              
              case 2 % LOW
                  
                  orden=5;
                  [num,den]=cheby1(orden,8,Fc1,tipo);
                  fil=filter(num,den,signal);
                  [h,w]=freqz(num,den,512);
                  
                  %RESPUESTA EN FRECUENCIA DE MAGNITUD
                  plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                  axis tight
                  xlabel(handles.axes5,'Frecuencia [Hz]')
                  ylabel(handles.axes5,'Magnitud [dB]')
                  title(handles.axes5,'Respuesta en frecuencia de magnitud')
                  
                  % RESPUESTA EN FRECUENCIA DE FASE
                  plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                  axis tight
                  title(handles.axes6,'Respuesta en frecuencia  de fase')
                  xlabel(handles.axes6,'Frecuencia [Hz]')
                  ylabel(handles.axes6,'|\angle H(\omega)|')
                
              case 3 % HIGH
                  
                  orden=5;
                  [num,den]=cheby1(orden,5,Fc2,tipo);
                  fil=filter(num,den,signal);
                  [h,w]=freqz(num,den,512);
                  
                  %RESPUESTA EN FRECUENCIA DE MAGNITUD
                  plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                  axis tight
                  xlabel(handles.axes5,'Frecuencia [Hz]')
                  ylabel(handles.axes5,'Magnitud [dB]')
                  title(handles.axes5,'Respuesta en frecuencia de magnitud')
                  
                  % RESPUESTA EN FRECUENCIA DE FASE
                  plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                  axis tight
                  title(handles.axes6,'Respuesta en frecuencia  de fase')
                  xlabel(handles.axes6,'Frecuencia [Hz]')
                  ylabel(handles.axes6,'|\angle H(\omega)|')
                
              case 4 % BANDPASS
                  
                  orden=5;
                  [num,den]=cheby1(orden,4,[Fc1 Fc2],tipo);
                  fil=filter(num,den,signal);
                  [h,w]=freqz(num,den,512);
                  
                  %RESPUESTA EN FRECUENCIA DE MAGNITUD
                  plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                  axis tight
                  xlabel(handles.axes5,'Frecuencia [Hz]')
                  ylabel(handles.axes5,'Magnitud [dB]')
                  title(handles.axes5,'Respuesta en frecuencia de magnitud')
                  
                  % RESPUESTA EN FRECUENCIA DE FASE
                  plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                  axis tight
                  title(handles.axes6,'Respuesta en frecuencia  de fase')
                  xlabel(handles.axes6,'Frecuencia [Hz]')
                  ylabel(handles.axes6,'|\angle H(\omega)|')
                  
              case 5 % STOP
                  
                  orden=5;
                  [num,den]=cheby1(orden,8,[Fc1 Fc2],tipo);
                  fil=filter(num,den,signal);
                  [h,w]=freqz(num,den,512);
                  
                  %RESPUESTA EN FRECUENCIA DE MAGNITUD
                  plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                  axis tight
                  xlabel(handles.axes5,'Frecuencia [Hz]')
                  ylabel(handles.axes5,'Magnitud [dB]')
                  title(handles.axes5,'Respuesta en frecuencia de magnitud')
                  
                  % RESPUESTA EN FRECUENCIA DE FASE
                  plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                  axis tight
                  title(handles.axes6,'Respuesta en frecuencia  de fase')
                  xlabel(handles.axes6,'Frecuencia [Hz]')
                  ylabel(handles.axes6,'|\angle H(\omega)|')
                  
          end
                  
    case 7  %IIR Chebyshov II
        
        switch tipo_filtro
              
              case 2 % LOW
                  
                  orden=9;
                  [num,den]=cheby2(orden,30,Fc1,tipo);
                  fil=filter(num,den,signal);
                  [h,w]=freqz(num,den,512);
                  
                  %RESPUESTA EN FRECUENCIA DE MAGNITUD
                  plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                  axis tight
                  xlabel(handles.axes5,'Frecuencia [Hz]')
                  ylabel(handles.axes5,'Magnitud [dB]')
                  title(handles.axes5,'Respuesta en frecuencia de magnitud')
                  
                  % RESPUESTA EN FRECUENCIA DE FASE
                  plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                  axis tight
                  title(handles.axes6,'Respuesta en frecuencia  de fase')
                  xlabel(handles.axes6,'Frecuencia [Hz]')
                  ylabel(handles.axes6,'|\angle H(\omega)|')
                  
              case 3 % HIGH
                  
                  orden=9;
                  [num,den]=cheby2(orden,20,Fc2,tipo);
                  fil=filter(num,den,signal);
                  [h,w]=freqz(num,den,512);
                  
                  %RESPUESTA EN FRECUENCIA DE MAGNITUD
                  plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                  axis tight
                  xlabel(handles.axes5,'Frecuencia [Hz]')
                  ylabel(handles.axes5,'Magnitud [dB]')
                  title(handles.axes5,'Respuesta en frecuencia de magnitud')
                  
                  % RESPUESTA EN FRECUENCIA DE FASE
                  plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                  axis tight
                  title(handles.axes6,'Respuesta en frecuencia  de fase')
                  xlabel(handles.axes6,'Frecuencia [Hz]')
                  ylabel(handles.axes6,'|\angle H(\omega)|')
                  
              case 4 % BANDPASS
                  
                  orden=9;
                  [num,den]=cheby2(orden,25,[Fc1 Fc2],tipo);
                  fil=filter(num,den,signal);
                  [h,w]=freqz(num,den,512);
                  
                  %RESPUESTA EN FRECUENCIA DE MAGNITUD
                  plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                  axis tight
                  xlabel(handles.axes5,'Frecuencia [Hz]')
                  ylabel(handles.axes5,'Magnitud [dB]')
                  title(handles.axes5,'Respuesta en frecuencia de magnitud')
                  
                  % RESPUESTA EN FRECUENCIA DE FASE
                  plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                  axis tight
                  title(handles.axes6,'Respuesta en frecuencia  de fase')
                  xlabel(handles.axes6,'Frecuencia [Hz]')
                  ylabel(handles.axes6,'|\angle H(\omega)|')
                  
              case 5 % STOP
                  
                  orden=9;
                  [num,den]=cheby2(orden,25,[Fc1 Fc2],tipo);
                  fil=filter(num,den,signal);
                  [h,w]=freqz(num,den,512);
                  
                  %RESPUESTA EN FRECUENCIA DE MAGNITUD
                  plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                  axis tight
                  xlabel(handles.axes5,'Frecuencia [Hz]')
                  ylabel(handles.axes5,'Magnitud [dB]')
                  title(handles.axes5,'Respuesta en frecuencia de magnitud')
                  
                  % RESPUESTA EN FRECUENCIA DE FASE
                  plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                  axis tight
                  title(handles.axes6,'Respuesta en frecuencia  de fase')
                  xlabel(handles.axes6,'Frecuencia [Hz]')
                  ylabel(handles.axes6,'|\angle H(\omega)|')
        end
          
    case 8  %IRR Elíptico
        
        switch tipo_filtro
              
              case 2 % LOW
                  
                  orden=9;
                  [num,den]=ellip(orden,5,40,Fc1,tipo);
                  fil=filter(num,den,signal);
                  [h,w]=freqz(num,den,512);
                  
                  %RESPUESTA EN FRECUENCIA DE MAGNITUD
                  plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                  axis tight
                  xlabel(handles.axes5,'Frecuencia [Hz]')
                  ylabel(handles.axes5,'Magnitud [dB]')
                  title(handles.axes5,'Respuesta en frecuencia de magnitud')
                  
                  % RESPUESTA EN FRECUENCIA DE FASE
                  plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                  axis tight
                  title(handles.axes6,'Respuesta en frecuencia  de fase')
                  xlabel(handles.axes6,'Frecuencia [Hz]')
                  ylabel(handles.axes6,'|\angle H(\omega)|')
                
              case 3 % HIGH
                  
                  orden=9;
                  [num,den]=ellip(orden,3,50,Fc2,tipo);
                  fil=filter(num,den,signal);
                  [h,w]=freqz(num,den,512);
                  
                  %RESPUESTA EN FRECUENCIA DE MAGNITUD
                  plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                  axis tight
                  xlabel(handles.axes5,'Frecuencia [Hz]')
                  ylabel(handles.axes5,'Magnitud [dB]')
                  title(handles.axes5,'Respuesta en frecuencia de magnitud')
                  
                  % RESPUESTA EN FRECUENCIA DE FASE
                  plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                  axis tight
                  title(handles.axes6,'Respuesta en frecuencia  de fase')
                  xlabel(handles.axes6,'Frecuencia [Hz]')
                  ylabel(handles.axes6,'|\angle H(\omega)|')
                  
              case 4 % BANDPASS
                  
                  orden=9;
                  [num,den]=ellip(orden,3,40,[Fc1 Fc2],tipo);
                  fil=filter(num,den,signal);
                  [h,w]=freqz(num,den,512);
                  
                  %RESPUESTA EN FRECUENCIA DE MAGNITUD
                  plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                  axis tight
                  xlabel(handles.axes5,'Frecuencia [Hz]')
                  ylabel(handles.axes5,'Magnitud [dB]')
                  title(handles.axes5,'Respuesta en frecuencia de magnitud')
                  
                  % RESPUESTA EN FRECUENCIA DE FASE
                  plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                  axis tight
                  title(handles.axes6,'Respuesta en frecuencia  de fase')
                  xlabel(handles.axes6,'Frecuencia [Hz]')
                  ylabel(handles.axes6,'|\angle H(\omega)|')
                  
              case 5 % STOP
                  
                  orden=9;
                  [num,den]=ellip(orden,5,50,[Fc1 Fc2],tipo);
                  fil=filter(num,den,signal);
                  [h,w]=freqz(num,den,512);
                  
                  %RESPUESTA EN FRECUENCIA DE MAGNITUD
                  plot(handles.axes5,w*Fs/(2*pi),20*log10(abs(h)))
                  axis tight
                  xlabel(handles.axes5,'Frecuencia [Hz]')
                  ylabel(handles.axes5,'Magnitud [dB]')
                  title(handles.axes5,'Respuesta en frecuencia de magnitud')
                  
                  % RESPUESTA EN FRECUENCIA DE FASE
                  plot(handles.axes6,w*Fs/(2*pi),angle(h)*180/pi)
                  axis tight
                  title(handles.axes6,'Respuesta en frecuencia  de fase')
                  xlabel(handles.axes6,'Frecuencia [Hz]')
                  ylabel(handles.axes6,'|\angle H(\omega)|')
                  
          end
end


[f0,loc] = pitch(signal,Fs,'method','LHS','range',[10 8800],'windowlength',round(Fs*0.04),'overlapLength',round(Fs*0.02));
L=length(f0);
t6=linspace(inicio,final,L);
[f02,loc] = pitch(fil,Fs,'method','LHS','range',[10 8800],'windowlength',round(Fs*0.04),'overlapLength',round(Fs*0.02));
L2=length(f02);
t7=linspace(inicio,final,L2);
figure
plot(t6,f0)
hold on 
plot (t7,f02)
title('Frecuencia fundamental (Pitch)')
ylabel('Frecuencia fundamental (Hz)')
xlabel('Time (s)')
axis tight
legend('Audio señal cruda','Audio señal filtrada')

%%%%%%% DERIVADA FRECUENCIA FUENDAMENTAL (PITCH) %%%%%%%%%%
delta_senalcruda=diff(f0); 
Ld1=length(delta_senalcruda);
t8=linspace(inicio,final,Ld1);

delta_senalfiltrada=diff(f02);
Ld2=length(delta_senalfiltrada);
t9=linspace(inicio,final,Ld2);

figure
plot(t8,delta_senalcruda);
hold on
plot(t9,delta_senalfiltrada);
title('\Lambda Frecuencia caracteristica')
ylabel('Frecuencia fundamental (Hz)')
xlabel('Time (s)')
axis tight
legend('Audio señal cruda','Audio señal filtrada')

%%%%%%% SEGUNDA DERIVADA FRECUENCIA FUENDAMENTAL (PITCH) %%%%%%%%%%
delta2_senalcruda=diff(delta_senalcruda);
Ld3=length(delta2_senalcruda);
t10=linspace(inicio,final,Ld3);

delta2_senalfiltrada=diff(delta_senalfiltrada);
Ld4=length(delta2_senalfiltrada);
t11=linspace(inicio,final,Ld4);

figure
plot(t10,delta2_senalcruda);
hold on
plot(t11,delta2_senalfiltrada);
title('\Lambda\Lambda Frecuencia caracteristica')
ylabel('Frecuencia fundamental (Hz)')
xlabel('Time (s)')
axis tight
legend('Audio señal cruda','Audio señal filtrada') 


%%%%%%%%%%% DENSIDAD ESPECTRAL DE ENERGIA (SEÑAL CRUDA) %%%%%%%%%%%%
FFT1=fft(signal);
muestras=length(FFT1);
k=0:muestras-1;
z=2*pi*k/muestras; % frecuencia digital 

figure
plot(z,(10*log10(abs(FFT1).^2)))
hold on 
%%%%%%%%% DENSIDAD ESPECTRAL DE ENERGIA (SEÑAL FILTRADA) %%%%%%%%%%%%
FFT2=fft(fil);
muestras2=length(FFT2);
k1=0:muestras2-1;
z2=2*pi*k1/muestras2; % frecuencia digital 

plot(z2,(10*log10(abs(FFT2).^2)))
axis tight
xlabel 'Frecuencia [Rad]'
ylabel 'ESD [dB]'
title ' Densidad espectral función de la frecuencia digital '
legend('Audio señal cruda','Audio señal filtrada')


% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text12_CreateFcn(hObject, eventdata, handles)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
%%% BOTON PARA REPRODUCIR EL AUDIO FILTRADO%%%%%%%%%
global fil Fs
sound(fil,Fs)
