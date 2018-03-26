% Calcular Função
% Autor: Francirley Santos
% Manaus 01/06/2016

function varargout = calcular_funcao(varargin)
% CALCULAR_FUNCAO MATLAB code for calcular_funcao.fig
%      CALCULAR_FUNCAO, by itself, creates a new CALCULAR_FUNCAO or raises the existing
%      singleton*.
%
%      H = CALCULAR_FUNCAO returns the handle to a new CALCULAR_FUNCAO or the handle to
%      the existing singleton*.
%
%      CALCULAR_FUNCAO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCULAR_FUNCAO.M with the given input arguments.
%
%      CALCULAR_FUNCAO('Property','Value',...) creates a new CALCULAR_FUNCAO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calcular_funcao_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calcular_funcao_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to hel calcular_funcao

% Last Modified by GUIDE v2.5 02-Jun-2017 15:55:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calcular_funcao_OpeningFcn, ...
                   'gui_OutputFcn',  @calcular_funcao_OutputFcn, ...
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




% --- Executes just before calcular_funcao is made visible.
function calcular_funcao_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calcular_funcao (see VARARGIN)

% Choose default command line output for calcular_funcao
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calcular_funcao wait for user response (see UIRESUME)
% uiwait(handles.figure1);

clc;
clearvars;
global chkEqn
    chkEqn = 0;
global chkInt
    chkInt = 0;
global chkIntDef
    chkIntDef = 0;
global chkDev
    chkDev = 0;
global chkDevDef
    chkDevDef = 0;

  


% --- Outputs from this function are returned to the command line.
function varargout = calcular_funcao_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




function txtValorA_Callback(~, ~, ~)
% hObject    handle to txtValorA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: get(hObject,'String') returns contents of txtValorA as text
%        str2double(get(hObject,'String')) returns contents of txtValorA as a double


% --- Executes during object creation, after setting all properties.
function txtValorA_CreateFcn(hObject, ~, ~)
% hObject    handle to txtValorA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtValorB_Callback(~, ~, ~)
% hObject    handle to txtValorB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: get(hObject,'String') returns contents of txtValorB as text
%        str2double(get(hObject,'String')) returns contents of txtValorB as a double


% --- Executes during object creation, after setting all properties.
function txtValorB_CreateFcn(hObject, ~, ~)
% hObject    handle to txtValorB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtValorC_Callback(~, ~, ~)
% hObject    handle to txtValorC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% Hints: get(hObject,'String') returns contents of txtValorC as text
%        str2double(get(hObject,'String')) returns contents of txtValorC as a double


% --- Executes during object creation, after setting all properties.
function txtValorC_CreateFcn(hObject, ~, ~)
% hObject    handle to txtValorC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function grfFuncaoQuadratica_CreateFcn(~, ~, ~) %#ok<DEFNU>
% hObject    handle to grfFuncaoQuadratica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate grfFuncaoQuadratica


% --------------------------------------------------------------------
function Arq_Callback(~, ~, ~)
% hObject    handle to Arq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Close_Callback(~, ~, ~)
% hObject    handle to Close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all hidden


% --------------------------------------------------------------------
function Hel_Callback(~, ~, ~)
% hObject    handle to Hel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --------------------------------------------------------------------
function Aju_Callback(~, ~, ~)
% hObject    handle to Aju (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpdlg('Calcular a função - Versão 2.0', 'MATLAB - GUIDE');


% --------------------------------------------------------------------
function Sob_Callback(~, ~, ~)
% hObject    handle to Sob (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in btnCalcularFuncao2.
function btnCalcularFuncao2_Callback(~, ~, handles)
% hObject    handle to btnCalcularFuncao2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtValorC as text
%        str2double(get(hObject,'String')) returns contents of txtValorC as a double

%  Função get, coleta os valor dos coeficientes
%  passado pelo usuário e atribui as variáveis
a = str2double(get(handles.txtValorA, 'String'));
b = str2double(get(handles.txtValorB, 'String'));
c = str2double(get(handles.txtValorC, 'String'));

%  Fórmula de Baskara:
%  x = ( -b +- sqrt( b² - 4*a*c)) / (2*a)

%  Formuda de Baskara desmembrada:
%  delta = b² - 4*a*c
%  x' = (-b + sqrt(delta)) / (2*a)
%  x" = (-b - sqrt(delta)) / (2*a)

%  Calcula o delta:
delta = b^2 - 4*a*c;

%  Calcula o valor de x1 e x2:
x1 = (-b + sqrt(delta)) / (2*a);
x2 = (-b - sqrt(delta)) / (2*a);

%  Retorna os valos de x1 e x2 para os
%  campos de destino
set(handles.txtX1, 'String', x1);
set(handles.txtX2, 'String', x2);

%  Calcula o vértice da parábola:
%  xv = -b / (2*a)
%  yv = -delta / (4*a)
xv = -b / (2*a);
yv = -delta / (4*a);

%  Retorna os valores de xv e yv para os
%  campos de destino
set(handles.txtXv, 'String', xv);
set(handles.txtYv, 'String', yv);

axes(handles.grfFuncaoQuadratica)
%  Confecção da funçao y = ax² + bx + c
%  pra plotar o gráfico 

%  Condição que verifica se o coeficiente
%  "a" > 0, sendo atribui valores para "x"
%  de -x2 para x1, caso contrario atribui
%  atribui valor para "x" de -x1 para x2
if a > 0
    x = (x2-1:0.01:x1+1);
    y = (a*x.^2 + (b)*x + (c)); 
    plot(x,y);
    
    %  Dados gráfico
    title('Gráfico da função quadrática');
    xlabel('eixo das abscissa (x)');
    ylabel('eixo das ordenadas (y)');
    
    %  Transforma os valores dos coeficientes
    %  em string
    stra = num2str(a);
    strb = num2str(b);
    strc = num2str(c);

    %  Condição para atribuir sinal negativo ou
    %  Positivo a função da legenda
    if b >= 0
        sb = '+';
    else
        sb = ' ';
    end;

    if c >= 0
        sc = '+';
    else
        sc = ' ';
    end;
        
    %  Concatena as strings para montar a 
    %  função de (y)
    f = strcat('y = ', ' (', stra, 'x² ',sb, strb, 'x', ...
        sc, strc,')');        
    hold on;
    
else
    x = (x1-1:0.01:x2+1);
    y = (a*x.^2 + (b)*x + (c)); 
    plot(x,y);
    
    %  Dados gráfico
    title('Gráfico da função quadrática');
    xlabel('eixo das abscissa: (x)');
    ylabel('eixo das ordenadas: (y)');
    
    %  Transforma os valores dos coeficientes
    %  em string
    stra = num2str(a);
    strb = num2str(b);
    strc = num2str(c);
    
    %  Condição para atribuir sinal negativo ou
    %  Positivo a função da legenda
    if b >= 0
        sb = '+';
    else
        sb = ' ';
    end;

     if c >= 0
        sc = '+';
    else
        sc = ' ';
    end;
        
    %  Concatena as strings para montar a 
    %  função de (y)
    f = strcat('y = ', ' (', stra, 'x² ',sb, strb, 'x', ...
        sc, strc,')');    
    hold on;
    
end;

%  Plotar os zeros da função:

%  Plota a raiz x1 no gráfico
plot(x1, 0, 'o');
%  Transforma o valor de x1 em uma string
strx1 = num2str(x1);
%  Concatena as strings
str1 = strcat('  x1 = ', ' (',strx1, ')');
%  Atribui um texto a raiz x1
text(x1,0, str1);
hold on;

%  Plota a raiz x2 no gráfico
plot(x2, 0, 'or');
%  Transforma o valor de x2 em string
strx2 = num2str(x2);
%  Concatena as strings
str2 = strcat('  x2 =  ', ' (', strx2, ')');
%  Atribui um texto a raiz x2
text(x2,0, str2);

hold on;

% Plotar o vértice da parábola:
plot(xv,yv, 'og');
% Transforma os valores de "xv e yv" em 
%  string para indentificar o vértice com 
%  valor do eixos v = (xv, yv)
strxv = num2str(xv);
stryv = num2str(yv);
str = strcat('  V = ', ' (',strxv, ', ', stryv,')');
text(xv,yv, str);
legend(f, str1, str2, str, 'Location', 'NorthWestOutside');
grid;
hold off;

set(handles.txtFuncaoFx, 'String', 'Informe aqui sua Função!');
set(handles.txtLimInfA, 'String', 0);
set(handles.txtLimSupB, 'String', 0);
set(handles.txtFuncaoY, 'String', ' ');
set(handles.txtValorArea, 'String', ' ');


% --- Executes on button press in btnRestart.
function btnRestart_Callback(~, ~, handles)
% hObject    handle to btnRestart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Função restart, retorna os valores para o padrão
set(handles.txtValorA, 'String', 0);
set(handles.txtValorB, 'String', 0);
set(handles.txtValorC, 'String', 0);
set(handles.txtX1, 'String', 0);
set(handles.txtX2, 'String', 0);
set(handles.txtXv, 'String', 0);
set(handles.txtYv, 'String', 0);
set(handles.txtFuncaoFx, 'String', 'Informe aqui sua Função!');
set(handles.txtLimInfA, 'String', 0);
set(handles.txtLimSupB, 'String', 0);
set(handles.txtFuncaoY, 'String', ' ');
set(handles.txtValorArea, 'String', ' ');
set(handles.txtDevOrdem, 'String', 1);
set(handles.txtValorDevX, 'String', 0);
set(handles.txtDevOrdem, 'Visible', 'on');
set(handles.rtlDevOrdem, 'Visible', 'on');
set(handles.txtValorDevX, 'Visible', 'on');
set(handles.rtlValorDevX, 'Visible', 'on');
set(handles.txtValorArea, 'Visible', 'on');
set(handles.rtlValorArea, 'Visible', 'on');
set(handles.txtLimInfA, 'Visible', 'on');
set(handles.rtlLimInfA, 'Visible', 'on');
set(handles.txtLimSupB, 'Visible', 'on');
set(handles.rtlLimSupB, 'Visible', 'on');
set(handles.txtFuncaoFx, 'Visible', 'on');
set(handles.rtlFuncaoFx, 'Visible', 'on');
set(handles.txtFuncaoY, 'Visible', 'on');
set(handles.rtlFuncaoY, 'Visible', 'on');
set(handles.txtIntervalo, 'Visible', 'on');
set(handles.rtlIntervalo, 'Visible', 'on');
set(handles.txtValorA, 'Visible', 'on');
set(handles.txtValorB, 'Visible', 'on');
set(handles.txtValorC, 'Visible', 'on');
set(handles.rtlValorA, 'Visible', 'on');
set(handles.rtlValorB, 'Visible', 'on');
set(handles.rtlValorC, 'Visible', 'on');
set(handles.txtIntervalo, 'String', 0.01);
plot(0);
zoom off;

% Hint: get(hObject,'Value') returns toggle state of btnRestart

%  Torna a variável chkInt em global para ter acesso em
%  outras funções
global chkInt
    chkInt = 0;
    set(handles.chkIntIndefinida, 'Value', chkInt);
 
%  Atribui zero para os campos predefinidos
global chkIntDef
    chkIntDef = 0;
    set(handles.chkIntDefinida, 'Value', chkIntDef);
    
global chkDev
    chkDev = 0;
    set(handles.chkDerivada, 'Value', chkDev);
    
global chkDevDef
    chkDevDef = 0;
    set(handles.chkDevDefinida, 'Value', chkDevDef);
    
global chkEqn
    chkEqn = 0;
    set(handles.chkEqn2Grau, 'Value', chkEqn);


function txtX2_Callback(~, ~, ~)
% hObject    handle to txtX2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtX2 as text
%        str2double(get(hObject,'String')) returns contents of txtX2 as a double


% --- Executes during object creation, after setting all properties.
function txtX2_CreateFcn(hObject, ~, ~)
% hObject    handle to txtX2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtX1_Callback(~, ~, ~)
% hObject    handle to txtX1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtX1 as text
%        str2double(get(hObject,'String')) returns contents of txtX1 as a double


% --- Executes during object creation, after setting all properties.
function txtX1_CreateFcn(hObject, ~, ~)
% hObject    handle to txtX1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(~, ~, ~)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, ~, ~)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(~, ~, ~)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, ~, ~)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtXv_Callback(~, ~, ~)
% hObject    handle to txtXv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtXv as text
%        str2double(get(hObject,'String')) returns contents of txtXv as a double


% --- Executes during object creation, after setting all properties.
function txtXv_CreateFcn(hObject, ~, ~)
% hObject    handle to txtXv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtYv_Callback(~, ~, ~)
% hObject    handle to txtYv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtYv as text
%        str2double(get(hObject,'String')) returns contents of txtYv as a double


% --- Executes during object creation, after setting all properties.
function txtYv_CreateFcn(hObject, ~, ~)
% hObject    handle to txtYv (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(~, ~, ~)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, ~, ~)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnRnd.
function btnRnd_Callback(hObject, eventdata, handles)
% hObject    handle to btnRnd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of btnRnd   

global chkEqn

if chkEqn ~= 1
            errordlg('Por favor selecione a Equação do segundo grau para gerar gráficos RND', 'Eqn RND');            
else 
             chkEqn = 1;
                        rndA = - rand + (rand*2);
                        rndB = rand + (rand*3);
                        rndC = rand + (rand*4);
                        set(handles.txtValorA, 'String', rndA);
                        set(handles.txtValorB, 'String', rndB);
                        set(handles.txtValorC, 'String', rndC);

                        %  Função get, coleta os valor dos coeficientes
                        %  passado pelo usuário e atribui as variáveis
                        a = str2double(get(handles.txtValorA, 'String'));
                        b = str2double(get(handles.txtValorB, 'String'));
                        c = str2double(get(handles.txtValorC, 'String'));
                        nt = str2double(get(handles.txtIntervalo, 'String'));

                        %  Fórmula de Baskara:
                        %  x = ( -b +- sqrt( b² - 4*a*c)) / (2*a)

                        %  Formuda de Baskara desmembrada:
                        %  delta = b² - 4*a*c
                        %  x' = (-b + sqrt(delta)) / (2*a)
                        %  x" = (-b - sqrt(delta)) / (2*a)

                        %  Calcula o delta:
                        delta = b^2 - 4*a*c;

                        %  Calcula o valor de x1 e x2:
                        x1 = (-b + sqrt(delta)) / (2*a);
                        x2 = (-b - sqrt(delta)) / (2*a);

                        %  Retorna os valos de x1 e x2 para os
                        %  campos de destino
                        set(handles.txtX1, 'String', x1);
                        set(handles.txtX2, 'String', x2);

                        %  Calcula o vértice da parábola:
                        %  xv = -b / (2*a)
                        %  yv = -delta / (4*a)
                        xv = -b / (2*a);
                        yv = -delta / (4*a);

                        %  Retorna os valores de xv e yv para os
                        %  campos de destino
                        set(handles.txtXv, 'String', xv);
                        set(handles.txtYv, 'String', yv);

                        axes(handles.grfFuncaoQuadratica)
                        %  Confecção da funçao y = ax² + bx + c
                        %  pra plotar o gráfico 

                        %  Condição que verifica se o coeficiente
                        %  "a" > 0, sendo atribui valores para "x"
                        %  de -x2 para x1, caso contrario atribui
                        %  atribui valor para "x" de -x1 para x2
                        if a > 0
                            x = (x2-1:nt:x1+1);
                            y = (a*x.^2 + (b)*x + (c)); 
                            plot(x,y);

                            %  Dados gráfico
                            title('Gráfico da função quadrática');
                            xlabel('eixo das abscissa (x)');
                            ylabel('eixo das ordenadas (y)');

                            %  Transforma os valores dos coeficientes
                            %  em string
                            stra = num2str(a);
                            strb = num2str(b);
                            strc = num2str(c);

                            %  Condição para atribuir sinal negativo ou
                            %  Positivo a função da legenda
                            if b >= 0
                                sb = '+';
                            else
                                sb = ' ';
                            end;

                            if c >= 0
                                sc = '+';
                            else
                                sc = ' ';
                            end;

                            %  Concatena as strings para montar a 
                            %  função de (y)
                            f = strcat('y = ', ' (', stra, 'x² ',sb, strb, 'x', ...
                                sc, strc,')');        
                            hold on;

                        else
                            x = (x1-1:nt:x2+1);
                            y = (a*x.^2 + (b)*x + (c)); 
                            plot(x,y);

                            %  Dados gráfico
                            title('Gráfico da função quadrática');
                            xlabel('eixo das abscissa: (x)');
                            ylabel('eixo das ordenadas: (y)');

                            %  Transforma os valores dos coeficientes
                            %  em string
                            stra = num2str(a);
                            strb = num2str(b);
                            strc = num2str(c);

                            %  Condição para atribuir sinal negativo ou
                            %  Positivo a função da legenda
                            if b >= 0
                                sb = '+';
                            else
                                sb = ' ';
                            end;

                             if c >= 0
                                sc = '+';
                            else
                                sc = ' ';
                            end;

                            %  Concatena as strings para montar a 
                            %  função de (y)
                            f = strcat('y = ', ' (', stra, 'x² ',sb, strb, 'x', ...
                                sc, strc,')');    
                            hold on;
                        end

            %  Plotar os zeros da função:

            %  Plota a raiz x1 no gráfico
            plot(x1, 0, 'o');
            %  Transforma o valor de x1 em uma string
            strx1 = num2str(x1);
            %  Concatena as strings
            str1 = strcat('  x1 = ', ' (',strx1, ')');
            %  Atribui um texto a raiz x1
            text(x1,0, str1);
            hold on;

            %  Plota a raiz x2 no gráfico
            plot(x2, 0, 'or');
            %  Transforma o valor de x2 em string
            strx2 = num2str(x2);
            %  Concatena as strings
            str2 = strcat('  x2 =  ', ' (', strx2, ')');
            %  Atribui um texto a raiz x2
            text(x2,0, str2);

            hold on;

            % Plotar o vértice da parábola:
            plot(xv,yv, 'og');
            % Transforma os valores de "xv e yv" em 
            %  string para indentificar o vértice com 
            %  valor do eixos v = (xv, yv)
            strxv = num2str(xv);
            stryv = num2str(yv);
            str = strcat('  V = ', ' (',strxv, ', ', stryv,')');
            text(xv,yv, str);
            legend(f, str1, str2, str, 'Location', 'NorthOutside');
            grid on;
            hold off;
            zoom on;

            set(handles.txtFuncaoFx, 'String', 'Informe aqui sua Função!');
            set(handles.txtLimInfA, 'String', 0);
            set(handles.txtLimSupB, 'String', 0);
            set(handles.txtFuncaoY, 'String', ' ');
            set(handles.txtValorArea, 'String', ' ');
end

% --- Executes during object creation, after setting all properties.
function txtLimSupB_CreateFcn(hObject, ~, ~)
% hObject    handle to txtLimSupB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function txtLimSupB_Callback(~, ~, ~)
% hObject    handle to txtLimSupB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLimSupB as text
%        str2double(get(hObject,'String')) returns contents of txtLimSupB as a double

function edit21_Callback(~, ~, ~)
% hObject    handle to txtLimSupB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLimSupB as text
%        str2double(get(hObject,'String')) returns contents of txtLimSupB as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, ~, ~)
% hObject    handle to txtLimSupB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(~, eventdata, handles)
% hObject    handle to txtLimSupB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLimSupB as text
%        str2double(get(hObject,'String')) returns contents of txtLimSupB as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtLimSupB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to txtLimSupB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLimSupB as text
%        str2double(get(hObject,'String')) returns contents of txtLimSupB as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtLimSupB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit22_Callback(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit22 as text
%        str2double(get(hObject,'String')) returns contents of edit22 as a double


% --- Executes during object creation, after setting all properties.
function edit22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit23_Callback(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit23 as text
%        str2double(get(hObject,'String')) returns contents of edit23 as a double


% --- Executes during object creation, after setting all properties.
function edit23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in chkIntIndefinida.
function chkIntIndefinida_Callback(hObject, eventdata, handles)
% hObject    handle to chkIntIndefinida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkIntIndefinida

global chkInt
    chkInt = get(handles.chkIntIndefinida, 'Value');
    
global chkIntDef
    chkIntDef = 0;
    set(handles.chkIntDefinida, 'Value', chkIntDef);    
global chkDev
    chkDev = 0;
    set(handles.chkDerivada, 'Value', chkDev);
global chkDevDef
    chkDevDef = 0;
    set(handles.chkDevDefinida, 'Value', chkDevDef);
global chkEqn
    chkEqn = 0;
    set(handles.chkEqn2Grau, 'Value', chkEqn);
    
set(handles.txtValorDevX, 'Visible', 'off');
set(handles.rtlValorDevX, 'Visible', 'off');
set(handles.txtDevOrdem, 'Visible', 'off');
set(handles.rtlDevOrdem, 'Visible', 'off');
set(handles.txtLimInfA, 'Visible', 'off');
set(handles.rtlLimInfA, 'Visible', 'off');
set(handles.txtLimSupB, 'Visible', 'off');
set(handles.rtlLimSupB, 'Visible', 'off');
set(handles.txtValorArea, 'Visible', 'off');
set(handles.rtlValorArea, 'Visible', 'off');
set(handles.txtFuncaoFx, 'Visible', 'on');
set(handles.rtlFuncaoFx, 'Visible', 'on');
set(handles.txtFuncaoY, 'Visible', 'on');
set(handles.rtlFuncaoY, 'Visible', 'on');
set(handles.txtValorA, 'Visible', 'off');
set(handles.txtValorB, 'Visible', 'off');
set(handles.txtValorC, 'Visible', 'off');
set(handles.rtlValorA, 'Visible', 'off');
set(handles.rtlValorB, 'Visible', 'off');
set(handles.rtlValorC, 'Visible', 'off');
set(handles.txtIntervalo, 'Visible', 'off');
set(handles.rtlIntervalo, 'Visible', 'off');





function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to txtLimSupB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLimSupB as text
%        str2double(get(hObject,'String')) returns contents of txtLimSupB as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtLimSupB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in chkDerivada.
function chkDerivada_Callback(hObject, eventdata, handles)
% hObject    handle to chkDerivada (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkDerivada

global chkDev
    chkDev = get(handles.chkDerivada, 'Value');
    
global chkInt
    chkInt = 0;
    set(handles.chkIntIndefinida, 'Value', chkInt);
global chkIntDef
    chkIntDef = 0;
    set(handles.chkIntDefinida, 'Value', chkIntDef); 
global chkDevDef
    chkDevDef = 0;
    set(handles.chkDevDefinida, 'Value', chkDevDef);
global chkEqn
    chkEqn = 0;
    set(handles.chkEqn2Grau, 'Value', chkEqn);

set(handles.txtFuncaoFx, 'Visible', 'on');
set(handles.rtlFuncaoFx, 'Visible', 'on');
set(handles.txtFuncaoY, 'Visible', 'on');
set(handles.rtlFuncaoY, 'Visible', 'on')    
set(handles.txtValorDevX, 'Visible', 'off');
set(handles.rtlValorDevX, 'Visible', 'off');
set(handles.txtDevOrdem, 'Visible', 'on');
set(handles.rtlDevOrdem, 'Visible', 'on');
set(handles.txtLimInfA, 'Visible', 'off');
set(handles.rtlLimInfA, 'Visible', 'off');
set(handles.txtLimSupB, 'Visible', 'off');
set(handles.rtlLimSupB, 'Visible', 'off');
set(handles.txtValorArea, 'Visible', 'off');
set(handles.rtlValorArea, 'Visible', 'off');
set(handles.txtValorA, 'Visible', 'off');
set(handles.txtValorB, 'Visible', 'off');
set(handles.txtValorC, 'Visible', 'off');
set(handles.rtlValorA, 'Visible', 'off');
set(handles.rtlValorB, 'Visible', 'off');
set(handles.rtlValorC, 'Visible', 'off');
set(handles.txtIntervalo, 'Visible', 'off');
set(handles.rtlIntervalo, 'Visible', 'off');


function txtValorDevX_Callback(hObject, eventdata, handles)
% hObject    handle to txtValorDevX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtValorDevX as text
%        str2double(get(hObject,'String')) returns contents of txtValorDevX as a double


% --- Executes during object creation, after setting all properties.
function txtValorDevX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtValorDevX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnCalcularIntDev.
function btnCalcularIntDev_Callback(hObject, eventdata, handles)

%     Condição que verifica o tipo de integral (definida ou indefinida)
    
    global chkEqn
    global chkInt
    global chkIntDef
    global chkDev
    global chkDevDef
    syms x
    
    if chkEqn == 0 && chkInt == 0 && chkIntDef == 0  && chkDev == 0  && ...
    chkDevDef == 0
            errordlg('Por favor selecione o tipo de cálculo!', 'Tipo de Cálculo');            
    else          
            if chkEqn == 1
                    %  Função get, coleta os valor dos coeficientes
                    %  passado pelo usuário e atribui as variáveis
                    a = str2double(get(handles.txtValorA, 'String'));
                    b = str2double(get(handles.txtValorB, 'String'));
                    c = str2double(get(handles.txtValorC, 'String'));
                    nt = str2double(get(handles.txtIntervalo, 'String'));

                    %  Fórmula de Baskara:
                    %  x = ( -b +- sqrt( b² - 4*a*c)) / (2*a)

                    %  Formuda de Baskara desmembrada:
                    %  delta = b² - 4*a*c
                    %  x' = (-b + sqrt(delta)) / (2*a)
                    %  x" = (-b - sqrt(delta)) / (2*a)

                    %  Calcula o delta:
                    delta = b^2 - 4*a*c;

                    %  Calcula o valor de x1 e x2:
                    x1 = (-b + sqrt(delta)) / (2*a);
                    x2 = (-b - sqrt(delta)) / (2*a);

                    %  Retorna os valos de x1 e x2 para os
                    %  campos de destino
                    set(handles.txtX1, 'String', x1);
                    set(handles.txtX2, 'String', x2);

                    %  Calcula o vértice da parábola:
                    %  xv = -b / (2*a)
                    %  yv = -delta / (4*a)
                    xv = -b / (2*a);
                    yv = -delta / (4*a);

                    %  Retorna os valores de xv e yv para os
                    %  campos de destino
                    set(handles.txtXv, 'String', xv);
                    set(handles.txtYv, 'String', yv);

                    axes(handles.grfFuncaoQuadratica)
                    %  Confecção da funçao y = ax² + bx + c
                    %  pra plotar o gráfico 

                    %  Condição que verifica se o coeficiente
                    %  "a" > 0, sendo atribui valores para "x"
                    %  de -x2 para x1, caso contrario atribui
                    %  atribui valor para "x" de -x1 para x2
                    if a > 0
                        x = (x2-1:nt:x1+1);
                        y = (a*x.^2 + (b)*x + (c)); 
                        plot(x,y);

                        %  Dados gráfico
                        title('Gráfico da função quadrática');
                        xlabel('eixo das abscissa (x)');
                        ylabel('eixo das ordenadas (y)');

                        %  Transforma os valores dos coeficientes
                        %  em string
                        stra = num2str(a);
                        strb = num2str(b);
                        strc = num2str(c);

                        %  Condição para atribuir sinal negativo ou
                        %  Positivo a função da legenda
                        if b >= 0
                            sb = '+';
                        else
                            sb = ' ';
                        end;

                        if c >= 0
                            sc = '+';
                        else
                            sc = ' ';
                        end;

                        %  Concatena as strings para montar a 
                        %  função de (y)
                        f = strcat('y = ', ' (', stra, 'x² ',sb, strb, 'x', ...
                            sc, strc,')');        
                        hold on;

                    else
                        x = (x1-1:nt:x2+1);
                        y = (a*x.^2 + (b)*x + (c)); 
                        plot(x,y);

                        %  Dados gráfico
                        title('Gráfico da função quadrática');
                        xlabel('eixo das abscissa: (x)');
                        ylabel('eixo das ordenadas: (y)');

                        %  Transforma os valores dos coeficientes
                        %  em string
                        stra = num2str(a);
                        strb = num2str(b);
                        strc = num2str(c);

                        %  Condição para atribuir sinal negativo ou
                        %  Positivo a função da legenda
                        if b >= 0
                            sb = '+';
                        else
                            sb = ' ';
                        end;

                         if c >= 0
                            sc = '+';
                        else
                            sc = ' ';
                        end;

                        %  Concatena as strings para montar a 
                        %  função de (y)
                        f = strcat('y = ', ' (', stra, 'x² ',sb, strb, 'x', ...
                            sc, strc,')');    
                        hold on;

                    end;

                    %  Plotar os zeros da função:

                    %  Plota a raiz x1 no gráfico
                    plot(x1, 0, 'o');
                    %  Transforma o valor de x1 em uma string
                    strx1 = num2str(x1);
                    %  Concatena as strings
                    str1 = strcat('  x1 = ', ' (',strx1, ')');
                    %  Atribui um texto a raiz x1
                    text(x1,0, str1);
                    hold on;

                    %  Plota a raiz x2 no gráfico
                    plot(x2, 0, 'or');
                    %  Transforma o valor de x2 em string
                    strx2 = num2str(x2);
                    %  Concatena as strings
                    str2 = strcat('  x2 =  ', ' (', strx2, ')');
                    %  Atribui um texto a raiz x2
                    text(x2,0, str2);

                    hold on;

                    % Plotar o vértice da parábola:
                    plot(xv,yv, 'og');
                    % Transforma os valores de "xv e yv" em 
                    %  string para indentificar o vértice com 
                    %  valor do eixos v = (xv, yv)
                    strxv = num2str(xv);
                    stryv = num2str(yv);
                    str = strcat('  V = ', ' (',strxv, ', ', stryv,')');
                    text(xv,yv, str);
                    legend(f, str1, str2, str, 'Location', 'NorthOutside');
                    grid on;
                    hold off;
                    zoom on;

                    set(handles.txtFuncaoFx, 'String', 'Informe aqui sua Função!');
                    set(handles.txtLimInfA, 'String', 0);
                    set(handles.txtLimSupB, 'String', 0);
                    set(handles.txtFuncaoY, 'String', ' ');
                    set(handles.txtValorArea, 'String', ' ');

            elseif chkInt == 1
                    strF = get(handles.txtFuncaoFx,'String');
                    symF = sym(eval(strF));
                    intF = int(symF);
                    charF = char(intF);
                    set(handles.txtFuncaoY, 'String', charF);
                    set(handles.txtValorArea, 'String', ' ');
                    set(handles.txtLimInfA, 'String', 0);
                    set(handles.txtLimSupB, 'String', 0);
                    plot(0);

                    set(handles.txtValorA, 'String', 0);
                    set(handles.txtValorB, 'String', 0);
                    set(handles.txtValorC, 'String', 0);
                    set(handles.txtX1, 'String', 0);
                    set(handles.txtX2, 'String', 0);
                    set(handles.txtXv, 'String', 0);
                    set(handles.txtYv, 'String', 0);

            elseif chkIntDef == 1
                    %     Função a ser integrada   
                    strF = get(handles.txtFuncaoFx, 'String');
                    symF = sym(eval(strF));
                    a = str2double(get(handles.txtLimInfA,'String'));
                    b = str2double(get(handles.txtLimSupB,'String'));
                    nt = str2double(get(handles.txtIntervalo, 'String'));
                    charF = char(int(symF));
                    A = int(symF,a,b);
                    A1 = abs(double(A));
                    A2 = num2str(A1);
                    strA = strcat('A área calculada é: ', A2);
                    set(handles.txtValorArea, 'String', strA);
                    set(handles.txtFuncaoY, 'String', charF);

                %     Função para plotar o gráfico da função
                    axes(handles.grfFuncaoQuadratica);
                    x = a:nt:b;   
                    y = double(subs(symF));    
                    plot(x,y, 'k');
                    hold on;
                    title('Gráfico da integral direta');
                    xlabel('eixo das abscissa "X"');
                    ylabel('eixo das ordenadas "Y"');
                    strF = char(symF);
                    strB = strcat(A2);            
                    xn = a:nt:b;
                    area(xn,y);
                    legend(strF, strB,'Location', 'NorthOutside');
                    grid on;
                    hold off;
                    zoom on;

                    set(handles.txtValorA, 'String', 0);
                    set(handles.txtValorB, 'String', 0);
                    set(handles.txtValorC, 'String', 0);
                    set(handles.txtX1, 'String', 0);
                    set(handles.txtX2, 'String', 0);
                    set(handles.txtXv, 'String', 0);
                    set(handles.txtYv, 'String', 0);         

            elseif chkDev == 1
                    n = str2double(get(handles.txtDevOrdem, 'String'));
                    strF = get(handles.txtFuncaoFx,'String');
                    symF = sym(eval(strF));
                    charF = char(subs(diff(symF,n)));
                    set(handles.txtFuncaoY, 'String', charF);
                    plot(0);

                    set(handles.txtValorA, 'String', 0);
                    set(handles.txtValorB, 'String', 0);
                    set(handles.txtValorC, 'String', 0);
                    set(handles.txtX1, 'String', 0);
                    set(handles.txtX2, 'String', 0);
                    set(handles.txtXv, 'String', 0);
                    set(handles.txtYv, 'String', 0);

            elseif chkDevDef == 1
                    n = str2double(get(handles.txtDevOrdem, 'String'));
                    strF = get(handles.txtFuncaoFx, 'String');
                    symF = sym(eval(strF));
                    diffF = diff(symF, n);
                    dblY = double(subs(diffF));
                    charY = num2str(dblY);
                    set(handles.txtFuncaoY, 'String', charY);  
                    plot(0);

                    set(handles.txtValorA, 'String', 0);
                    set(handles.txtValorB, 'String', 0);
                    set(handles.txtValorC, 'String', 0);
                    set(handles.txtX1, 'String', 0);
                    set(handles.txtX2, 'String', 0);
                    set(handles.txtXv, 'String', 0);
                    set(handles.txtYv, 'String', 0);

            end 
    end
    clc


function txtFuncaoFx_Callback(hObject, eventdata, handles)
% hObject    handle to txtFuncaoFx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtFuncaoFx as text
%        str2double(get(hObject,'String')) returns contents of txtFuncaoFx as a double


% --- Executes during object creation, after setting all properties.
function txtFuncaoFx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtFuncaoFx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtLimInfA_Callback(hObject, eventdata, handles)
% hObject    handle to txtLimInfA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLimInfA as text
%        str2double(get(hObject,'String')) returns contents of txtLimInfA as a double


% --- Executes during object creation, after setting all properties.
function txtLimInfA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtLimInfA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtFuncaoY_Callback(hObject, eventdata, handles)
% hObject    handle to txtFuncaoY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtFuncaoY as text
%        str2double(get(hObject,'String')) returns contents of txtFuncaoY as a double


% --- Executes during object creation, after setting all properties.
function txtFuncaoY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtFuncaoY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtValorArea_Callback(hObject, eventdata, handles)
% hObject    handle to txtValorArea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtValorArea as text
%        str2double(get(hObject,'String')) returns contents of txtValorArea as a double


% --- Executes during object creation, after setting all properties.
function txtValorArea_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtValorArea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit28 as text
%        str2double(get(hObject,'String')) returns contents of edit28 as a double


% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtDevOrdem_Callback(hObject, eventdata, handles)
% hObject    handle to txtDevOrdem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtDevOrdem as text
%        str2double(get(hObject,'String')) returns contents of txtDevOrdem as a double


% --- Executes during object creation, after setting all properties.
function txtDevOrdem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtDevOrdem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in chkDevDefinida.
function chkDevDefinida_Callback(hObject, eventdata, handles)
% hObject    handle to chkDevDefinida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkDevDefinida

global chkDevDef
    chkDevDef = get(handles.chkDevDefinida, 'Value');
    
global chkInt
    chkInt = 0;
    set(handles.chkIntIndefinida, 'Value', chkInt);
global chkIntDef
    chkIntDef = 0;
    set(handles.chkIntDefinida, 'Value', chkIntDef); 
global chkDev
    chkDev = 0;
    set(handles.chkDerivada, 'Value', chkDev);
global chkEqn
    chkEqn = 0;
    set(handles.chkEqn2Grau, 'Value', chkEqn);
    
set(handles.txtValorDevX, 'Visible', 'on');
set(handles.rtlValorDevX, 'Visible', 'on');
set(handles.rtlDevOrdem, 'Visible', 'on');
set(handles.txtDevOrdem, 'Visible', 'on');
set(handles.txtFuncaoFx, 'Visible', 'on');
set(handles.rtlFuncaoFx, 'Visible', 'on');
set(handles.txtFuncaoY, 'Visible', 'on');
set(handles.rtlFuncaoY, 'Visible', 'on')
set(handles.txtLimInfA, 'Visible', 'off');
set(handles.rtlLimInfA, 'Visible', 'off');
set(handles.txtLimSupB, 'Visible', 'off');
set(handles.rtlLimSupB, 'Visible', 'off');
set(handles.txtValorArea, 'Visible', 'off');
set(handles.rtlValorArea, 'Visible', 'off');
set(handles.txtValorA, 'Visible', 'off');
set(handles.txtValorB, 'Visible', 'off');
set(handles.txtValorC, 'Visible', 'off');
set(handles.rtlValorA, 'Visible', 'off');
set(handles.rtlValorB, 'Visible', 'off');
set(handles.rtlValorC, 'Visible', 'off');
set(handles.txtIntervalo, 'Visible', 'off');
set(handles.rtlIntervalo, 'Visible', 'off');


% --- Executes during object creation, after setting all properties.
function rtlDevOrdem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rtlDevOrdem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in chkIntDefinida.
function chkIntDefinida_Callback(hObject, eventdata, handles)
% hObject    handle to chkIntDefinida (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkIntDefinida

global chkIntDef
    chkIntDef = get(handles.chkIntDefinida, 'Value');
    
global chkInt
    chkInt = 0;
    set(handles.chkIntIndefinida, 'Value', chkInt);
global chkDev
    chkDev = 0;
    set(handles.chkDerivada, 'Value', chkDev);
global chkDevDef
    chkDevDef = 0;
    set(handles.chkDevDefinida, 'Value', chkDevDef);
global chkEqn
    chkEqn = 0;
    set(handles.chkEqn2Grau, 'Value', chkEqn);

set(handles.txtIntervalo, 'Visible', 'on');
set(handles.rtlIntervalo, 'Visible', 'on');    
set(handles.txtLimInfA, 'Visible', 'on');
set(handles.rtlLimInfA, 'Visible', 'on');
set(handles.txtLimSupB, 'Visible', 'on');
set(handles.rtlLimSupB, 'Visible', 'on');
set(handles.txtValorArea, 'Visible', 'on');
set(handles.rtlValorArea, 'Visible', 'on');
set(handles.txtFuncaoFx, 'Visible', 'on');
set(handles.rtlFuncaoFx, 'Visible', 'on');
set(handles.txtFuncaoY, 'Visible', 'on');
set(handles.rtlFuncaoY, 'Visible', 'on');
set(handles.txtValorDevX, 'Visible', 'off');
set(handles.rtlValorDevX, 'Visible', 'off');
set(handles.txtDevOrdem, 'Visible', 'off');
set(handles.rtlDevOrdem, 'Visible', 'off');
set(handles.txtValorA, 'Visible', 'off');
set(handles.txtValorB, 'Visible', 'off');
set(handles.txtValorC, 'Visible', 'off');
set(handles.rtlValorA, 'Visible', 'off');
set(handles.rtlValorB, 'Visible', 'off');
set(handles.rtlValorC, 'Visible', 'off');


% --- Executes on button press in chkEqn2Grau.
function chkEqn2Grau_Callback(hObject, eventdata, handles)
% hObject    handle to chkEqn2Grau (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of chkEqn2Grau

global chkEqn
    chkEqn = get(handles.chkEqn2Grau, 'Value');
    
global chkInt
    chkInt = 0;
    set(handles.chkIntIndefinida, 'Value', chkInt);
global chkIntDef
    chkIntDef = 0;
    set(handles.chkIntDefinida, 'Value', chkIntDef);
global chkDev
    chkDev = 0;
    set(handles.chkDerivada, 'Value', chkDev);
global chkDevDef
    chkDevDef = 0;
    set(handles.chkDevDefinida, 'Value', chkDevDef);

set(handles.txtIntervalo, 'Visible', 'on');
set(handles.rtlIntervalo, 'Visible', 'on');
set(handles.txtValorA, 'Visible', 'on');
set(handles.txtValorB, 'Visible', 'on');
set(handles.txtValorC, 'Visible', 'on');
set(handles.rtlValorA, 'Visible', 'on');
set(handles.rtlValorB, 'Visible', 'on');
set(handles.rtlValorC, 'Visible', 'on');
set(handles.txtLimInfA, 'Visible', 'off');
set(handles.rtlLimInfA, 'Visible', 'off');
set(handles.txtLimSupB, 'Visible', 'off');
set(handles.rtlLimSupB, 'Visible', 'off');
set(handles.txtValorArea, 'Visible', 'off');
set(handles.rtlValorArea, 'Visible', 'off');
set(handles.txtValorDevX, 'Visible', 'off');
set(handles.rtlValorDevX, 'Visible', 'off');
set(handles.txtDevOrdem, 'Visible', 'off');
set(handles.rtlDevOrdem, 'Visible', 'off');
set(handles.txtFuncaoFx, 'Visible', 'off');
set(handles.rtlFuncaoFx, 'Visible', 'off');
set(handles.txtFuncaoY, 'Visible', 'off');
set(handles.rtlFuncaoY, 'Visible', 'off');



function txtIntervalo_Callback(hObject, eventdata, handles)
% hObject    handle to txtIntervalo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtIntervalo as text
%        str2double(get(hObject,'String')) returns contents of txtIntervalo as a double


% --- Executes during object creation, after setting all properties.
function txtIntervalo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtIntervalo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
