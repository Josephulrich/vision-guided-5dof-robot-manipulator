function varargout = ROBOTOP(varargin)
% ROBOTOP MATLAB code for ROBOTOP.fig
%      ROBOTOP, by itself, creates a new ROBOTOP or raises the existing
%      singleton*.
%
%      H = ROBOTOP returns the handle to a new ROBOTOP or the handle to
%      the existing singleton*.
%
%      ROBOTOP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROBOTOP.M with the given input arguments.
%
%      ROBOTOP('Property','Value',...) creates a new ROBOTOP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ROBOTOP_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ROBOTOP_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ROBOTOP

% Last Modified by GUIDE v2.5 14-May-2022 15:35:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ROBOTOP_OpeningFcn, ...
                   'gui_OutputFcn',  @ROBOTOP_OutputFcn, ...
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


% --- Executes just before ROBOTOP is made visible.
function ROBOTOP_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ROBOTOP (see VARARGIN)

% Choose default command line output for ROBOTOP
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ROBOTOP wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ROBOTOP_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Px=str2double(get(handles.edit1,'String'))
Py=str2double(get(handles.edit2,'String'))
Pz=str2double(get(handles.edit3,'String'))
%% a refaire selon calcul
 theta1=2*atan((80*Py - 16*tan(Pz/2) + 80*Py*tan(Pz/2)^2 + (-(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1)*(20*Px*tan(Pz/2)^2 - 20*Px - 63*tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) - 63))^(1/2)/(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1) + (tan(Pz/2)^2*(-(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1)*(20*Px*tan(Pz/2)^2 - 20*Px - 63*tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) - 63))^(1/2))/(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1) + (100*Px^2*(-(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1)*(20*Px*tan(Pz/2)^2 - 20*Px - 63*tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) - 63))^(1/2))/(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1) + (100*Py^2*(-(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1)*(20*Px*tan(Pz/2)^2 - 20*Px - 63*tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) - 63))^(1/2))/(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1) - (20*Px*(-(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1)*(20*Px*tan(Pz/2)^2 - 20*Px - 63*tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) - 63))^(1/2))/(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1) - (40*Py*tan(Pz/2)*(-(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1)*(20*Px*tan(Pz/2)^2 - 20*Px - 63*tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) - 63))^(1/2))/(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1) + (20*Px*tan(Pz/2)^2*(-(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1)*(20*Px*tan(Pz/2)^2 - 20*Px - 63*tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) - 63))^(1/2))/(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1) + (100*Px^2*tan(Pz/2)^2*(-(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1)*(20*Px*tan(Pz/2)^2 - 20*Px - 63*tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) - 63))^(1/2))/(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1) + (100*Py^2*tan(Pz/2)^2*(-(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1)*(20*Px*tan(Pz/2)^2 - 20*Px - 63*tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) - 63))^(1/2))/(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1))/(60*Px + 100*Px*tan(Pz/2)^2 + 9*tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) - 7))
 theta2=-2*atan((-(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1)*(20*Px*tan(Pz/2)^2 - 20*Px - 63*tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) - 63))^(1/2)/(20*Px*tan(Pz/2)^2 - 20*Px + tan(Pz/2)^2 + 100*Px^2 + 100*Py^2 + 100*Px^2*tan(Pz/2)^2 + 100*Py^2*tan(Pz/2)^2 - 40*Py*tan(Pz/2) + 1))
 theta3= Pz-theta1-theta2
 theta4= 0
 theta5= 0

set(handles.edit4,'String',theta1)
set(handles.edit5,'String',theta2)
set(handles.edit6,'String',theta3)
set(handles.edit8,'String',theta4)
set(handles.edit9,'String',theta5)

function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% %% determination des param?tres de D-H
L0 = 0.4 , L1=0.4 , L2=0.4,L3=0.4, L4=0.5, L5=0.5
a1= 0    ,alpha1= pi/2  ,d1=L0        , theta1=0
a2= L1   ,alpha2= 0     ,d2=0         , theta2=0
a3= L2   ,alpha3= 0     ,d3=0         , theta3=0
a4= L3   ,alpha4= pi/2  ,d4=0         , theta4=0
a5= 0   ,alpha5= 0      ,d5=L4        , theta5=0
L(1)=Link([theta1 d1  a1 alpha1])
L(1).jointtype='R'
L(2)=Link([theta2 d2  a2 alpha2])
L(2).jointtype='R'
L(3)=Link([theta3 d3  a3 alpha3])
L(3).jointtype='R'
L(4)=Link([theta4 d4  a4 alpha4])
L(4).jointtype='R'
L(5)=Link([theta5 d5  a5 alpha5])
L(5).jointtype='R'
Rob=SerialLink(L)
Rob.name=('RRRRR')
%%
%Rob % param?tres de DH
t1=str2double(get(handles.edit4,'String'))
t2=str2double(get(handles.edit5,'String'))
t3=str2double(get(handles.edit6,'String'))
t4=str2double(get(handles.edit8,'String'))
t5=str2double(get(handles.edit9,'String'))
%T=Rob.fkine([t1 t2 t3 t4 t5]) 
%size(T)
pxx=(121*cos(theta1)*cos(theta2))/1000 + (11*cos(theta4)*(cos(theta1)*cos(theta2)*sin(theta3) + cos(theta1)*cos(theta3)*sin(theta2)))/1000 - (71*cos(theta4)*(cos(theta1)*sin(theta2)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)))/1000 - (71*sin(theta4)*(cos(theta1)*cos(theta2)*sin(theta3) + cos(theta1)*cos(theta3)*sin(theta2)))/1000 - (11*sin(theta4)*(cos(theta1)*sin(theta2)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)))/1000 - (cos(theta1)*sin(theta2)*sin(theta3))/8 + (cos(theta1)*cos(theta2)*cos(theta3))/8
pyy=(121*cos(theta2)*sin(theta1))/1000 + (11*cos(theta4)*(cos(theta2)*sin(theta1)*sin(theta3) + cos(theta3)*sin(theta1)*sin(theta2)))/1000 - (71*cos(theta4)*(sin(theta1)*sin(theta2)*sin(theta3) - cos(theta2)*cos(theta3)*sin(theta1)))/1000 - (71*sin(theta4)*(cos(theta2)*sin(theta1)*sin(theta3) + cos(theta3)*sin(theta1)*sin(theta2)))/1000 - (11*sin(theta4)*(sin(theta1)*sin(theta2)*sin(theta3) - cos(theta2)*cos(theta3)*sin(theta1)))/1000 - (sin(theta1)*sin(theta2)*sin(theta3))/8 + (cos(theta2)*cos(theta3)*sin(theta1))/8 
pzz=(121*sin(theta2))/1000 + (cos(theta2)*sin(theta3))/8 + (cos(theta3)*sin(theta2))/8 + (71*cos(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)))/1000 - (11*cos(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)))/1000 + (11*sin(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)))/1000 + (71*sin(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)))/1000 + 91/1000
 
set(handles.edit1,'String',pxx)
set(handles.edit2,'String',pyy)
set(handles.edit3,'String',pzz)
syms theta1 theta2 theta3 theta4 theta5
xx=simplify((121*cos(theta1)*cos(theta2))/1000 + (11*cos(theta4)*(cos(theta1)*cos(theta2)*sin(theta3) + cos(theta1)*cos(theta3)*sin(theta2)))/1000 - (71*cos(theta4)*(cos(theta1)*sin(theta2)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)))/1000 - (71*sin(theta4)*(cos(theta1)*cos(theta2)*sin(theta3) + cos(theta1)*cos(theta3)*sin(theta2)))/1000 - (11*sin(theta4)*(cos(theta1)*sin(theta2)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)))/1000 - (cos(theta1)*sin(theta2)*sin(theta3))/8 + (cos(theta1)*cos(theta2)*cos(theta3))/8)
yy=simplify((121*cos(theta2)*sin(theta1))/1000 + (11*cos(theta4)*(cos(theta2)*sin(theta1)*sin(theta3) + cos(theta3)*sin(theta1)*sin(theta2)))/1000 - (71*cos(theta4)*(sin(theta1)*sin(theta2)*sin(theta3) - cos(theta2)*cos(theta3)*sin(theta1)))/1000 - (71*sin(theta4)*(cos(theta2)*sin(theta1)*sin(theta3) + cos(theta3)*sin(theta1)*sin(theta2)))/1000 - (11*sin(theta4)*(sin(theta1)*sin(theta2)*sin(theta3) - cos(theta2)*cos(theta3)*sin(theta1)))/1000 - (sin(theta1)*sin(theta2)*sin(theta3))/8 + (cos(theta2)*cos(theta3)*sin(theta1))/8)
zz=simplify((121*sin(theta2))/1000 + (cos(theta2)*sin(theta3))/8 + (cos(theta3)*sin(theta2))/8 + (71*cos(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)))/1000 - (11*cos(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)))/1000 + (11*sin(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)))/1000 + (71*sin(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)))/1000 + 91/1000)
Tx=char(xx);
Ty=char(yy);
Tz=char(zz);
set(handles.edit7,'String',Tx)
set(handles.edit10,'String',Ty)
set(handles.edit11,'String',Tz)


function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


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



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
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
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L0 = 0.4 , L1=0.4 , L2=0.4,L3=0.4, L4=0.5, L5=0.5

%% determination des param?tres de D-H
%syms theta1 theta2 T theta4  %(di=ai ey di=ri) 
a1= 0    ,alpha1= pi/2  ,d1=L0       , theta1=0
a2= L1   ,alpha2= 0     ,d2=0        , theta2=0
a3= L2   ,alpha3= 0     ,d3=0        , theta3=0
a4= L3   ,alpha4= pi/2  ,d4=0        , theta4=0
a5= 0   ,alpha5= 0     ,d5=L4        , theta5=0
L(1)=Link([theta1 d1  a1 alpha1])
L(1).jointtype='R'
L(2)=Link([theta2 d2  a2 alpha2])
L(2).jointtype='R'
L(3)=Link([theta3 d3  a3 alpha3])
L(3).jointtype='R'
L(4)=Link([theta4 d4  a4 alpha4])
L(4).jointtype='R'
L(5)=Link([theta5 d5  a5 alpha5])
L(5).jointtype='R'
%%

Rob=SerialLink(L)
Rob.name=('RRRRR')
Rob.plot([zeros(1,5)])
%%
%Rob % param?tres de DH
t1=str2double(get(handles.edit4,'String'))
t2=str2double(get(handles.edit5,'String'))
t3=str2double(get(handles.edit6,'String'))
t4=str2double(get(handles.edit8,'String'))
t5=str2double(get(handles.edit9,'String'))
axes(handles.axes1)
Rob.plot([t1 t2 t3 t4 t5]) % simuler le Robot statique en 3D 
%T=Rob.fkine([t1 t2 t3 t4 t5]) 
%size(T)
pxx=(121*cos(theta1)*cos(theta2))/1000 + (11*cos(theta4)*(cos(theta1)*cos(theta2)*sin(theta3) + cos(theta1)*cos(theta3)*sin(theta2)))/1000 - (71*cos(theta4)*(cos(theta1)*sin(theta2)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)))/1000 - (71*sin(theta4)*(cos(theta1)*cos(theta2)*sin(theta3) + cos(theta1)*cos(theta3)*sin(theta2)))/1000 - (11*sin(theta4)*(cos(theta1)*sin(theta2)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)))/1000 - (cos(theta1)*sin(theta2)*sin(theta3))/8 + (cos(theta1)*cos(theta2)*cos(theta3))/8
pyy=(121*cos(theta2)*sin(theta1))/1000 + (11*cos(theta4)*(cos(theta2)*sin(theta1)*sin(theta3) + cos(theta3)*sin(theta1)*sin(theta2)))/1000 - (71*cos(theta4)*(sin(theta1)*sin(theta2)*sin(theta3) - cos(theta2)*cos(theta3)*sin(theta1)))/1000 - (71*sin(theta4)*(cos(theta2)*sin(theta1)*sin(theta3) + cos(theta3)*sin(theta1)*sin(theta2)))/1000 - (11*sin(theta4)*(sin(theta1)*sin(theta2)*sin(theta3) - cos(theta2)*cos(theta3)*sin(theta1)))/1000 - (sin(theta1)*sin(theta2)*sin(theta3))/8 + (cos(theta2)*cos(theta3)*sin(theta1))/8 
pzz=(121*sin(theta2))/1000 + (cos(theta2)*sin(theta3))/8 + (cos(theta3)*sin(theta2))/8 + (71*cos(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)))/1000 - (11*cos(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)))/1000 + (11*sin(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)))/1000 + (71*sin(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)))/1000 + 91/1000
 
set(handles.edit1,'String',pxx)
set(handles.edit2,'String',pyy)
set(handles.edit3,'String',pzz)
syms theta1 theta2 theta3 theta4 theta5
xx=simplify((121*cos(theta1)*cos(theta2))/1000 + (11*cos(theta4)*(cos(theta1)*cos(theta2)*sin(theta3) + cos(theta1)*cos(theta3)*sin(theta2)))/1000 - (71*cos(theta4)*(cos(theta1)*sin(theta2)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)))/1000 - (71*sin(theta4)*(cos(theta1)*cos(theta2)*sin(theta3) + cos(theta1)*cos(theta3)*sin(theta2)))/1000 - (11*sin(theta4)*(cos(theta1)*sin(theta2)*sin(theta3) - cos(theta1)*cos(theta2)*cos(theta3)))/1000 - (cos(theta1)*sin(theta2)*sin(theta3))/8 + (cos(theta1)*cos(theta2)*cos(theta3))/8)
yy=simplify((121*cos(theta2)*sin(theta1))/1000 + (11*cos(theta4)*(cos(theta2)*sin(theta1)*sin(theta3) + cos(theta3)*sin(theta1)*sin(theta2)))/1000 - (71*cos(theta4)*(sin(theta1)*sin(theta2)*sin(theta3) - cos(theta2)*cos(theta3)*sin(theta1)))/1000 - (71*sin(theta4)*(cos(theta2)*sin(theta1)*sin(theta3) + cos(theta3)*sin(theta1)*sin(theta2)))/1000 - (11*sin(theta4)*(sin(theta1)*sin(theta2)*sin(theta3) - cos(theta2)*cos(theta3)*sin(theta1)))/1000 - (sin(theta1)*sin(theta2)*sin(theta3))/8 + (cos(theta2)*cos(theta3)*sin(theta1))/8)
zz=simplify((121*sin(theta2))/1000 + (cos(theta2)*sin(theta3))/8 + (cos(theta3)*sin(theta2))/8 + (71*cos(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)))/1000 - (11*cos(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)))/1000 + (11*sin(theta4)*(cos(theta2)*sin(theta3) + cos(theta3)*sin(theta2)))/1000 + (71*sin(theta4)*(cos(theta2)*cos(theta3) - sin(theta2)*sin(theta3)))/1000 + 91/1000)
Tx=char(xx);
Ty=char(yy);
Tz=char(zz);
set(handles.edit7,'String',Tx)
set(handles.edit10,'String',Ty)
set(handles.edit11,'String',Tz)
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L0 = 0.4 , L1=0.4 , L2=0.4,L3=0.4, L4=0.5, L5=0.5
a1= 0    ,alpha1= pi/2  ,d1=L0       , theta1=0
a2= L1   ,alpha2= 0     ,d2=0        , theta2=0
a3= L2   ,alpha3= 0     ,d3=0        , theta3=0
a4= L3   ,alpha4= pi/2  ,d4=0        , theta4=0
a5= 0   ,alpha5= 0      ,d5=L4       , theta5=0
L(1)=Link([theta1 d1  a1 alpha1])
L(1).jointtype='R'
L(2)=Link([theta2 d2  a2 alpha2])
L(2).jointtype='R'
L(3)=Link([theta3 d3  a3 alpha3])
L(3).jointtype='R'
L(4)=Link([theta4 d4  a4 alpha4])
L(4).jointtype='R'
L(5)=Link([theta5 d5  a5 alpha5])
L(5).jointtype='R'
Rob=SerialLink(L)
Rob.name=('RRRRR')
%%
%Rob % param?tres de DH
t1=str2double(get(handles.edit4,'String'))
t2=str2double(get(handles.edit5,'String'))
t3=str2double(get(handles.edit6,'String'))
t4=str2double(get(handles.edit8,'String'))
t5=str2double(get(handles.edit9,'String'))
if t1==0 && t2==0 && t3==0 && t4==0 && t5==0
    axes(handles.axes1)
Rob.plot([0 0 0 0 0]) % simuler le Robot statique en 3D 
elseif t2==0 && t3==0 && t4==0 && t5==0
    t11=linspace(0,t1,100)
    for i=1:100
x(i)=(121*cos(t11(i))*cos(t2))/1000 + (11*cos(t4)*(cos(t11(i))*cos(t2)*sin(t3) + cos(t11(i))*cos(t3)*sin(t2)))/1000 - (71*cos(t4)*(cos(t11(i))*sin(t2)*sin(t3) - cos(t11(i))*cos(t2)*cos(t3)))/1000 - (71*sin(t4)*(cos(t11(i))*cos(t2)*sin(t3) + cos(t11(i))*cos(t3)*sin(t2)))/1000 - (11*sin(t4)*(cos(t11(i))*sin(t2)*sin(t3) - cos(t11(i))*cos(t2)*cos(t3)))/1000 - (cos(t11(i))*sin(t2)*sin(t3))/8 + (cos(t11(i))*cos(t2)*cos(t3))/8
y(i)=(121*cos(t2)*sin(t11(i)))/1000 + (11*cos(t4)*(cos(t2)*sin(t11(i))*sin(t3) + cos(t3)*sin(t11(i))*sin(t2)))/1000 - (71*cos(t4)*(sin(t11(i))*sin(t2)*sin(t3) - cos(t2)*cos(t3)*sin(t11(i))))/1000 - (71*sin(t4)*(cos(t2)*sin(t11(i))*sin(t3) + cos(t3)*sin(t11(i))*sin(t2)))/1000 - (11*sin(t4)*(sin(t11(i))*sin(t2)*sin(t3) - cos(t2)*cos(t3)*sin(t11(i))))/1000 - (sin(t11(i))*sin(t2)*sin(t3))/8 + (cos(t2)*cos(t3)*sin(t11(i)))/8 
z(i)=(121*sin(t2))/1000 + (cos(t2)*sin(t3))/8 + (cos(t3)*sin(t2))/8 + (71*cos(t4)*(cos(t2)*sin(t3) + cos(t3)*sin(t2)))/1000 - (11*cos(t4)*(cos(t2)*cos(t3) - sin(t2)*sin(t3)))/1000 + (11*sin(t4)*(cos(t2)*sin(t3) + cos(t3)*sin(t2)))/1000 + (71*sin(t4)*(cos(t2)*cos(t3) - sin(t2)*sin(t3)))/1000 + 91/1000
    end

axes(handles.axes1) 
for i=1:1:100   
Rob.plot([t11(i) 0 0 0 0]) % simuler le Robot statique en 3D 
%hold on
pause(0.01)
end

  axes(handles.axes1)
   hold on 
  plot3(x,y,z,'r')
  elseif t3==0 && t4==0 && t5==0
    t11=linspace(0,t1,100)
    t22=linspace(0,t2,100)
    axes(handles.axes1)
for i=1:1:100   
Rob.plot([t11(i) t22(i) 0 0 0]) % simuler le Robot statique en 3D 
pause(0.2)
end
elseif t4==0 && t5==0
    t11=linspace(0,t1,100)
    t22=linspace(0,t2,100)
    t33=linspace(0,t3,100)
    axes(handles.axes1)
for i=1:1:100   
Rob.plot([t11(i) t22(i) t33(i) 0 0]) % simuler le Robot statique en 3D 
pause(0.2)
end
elseif t5==0
    t11=linspace(0,t1,100)
    t22=linspace(0,t2,100)
    t33=linspace(0,t3,100)
    t44=linspace(0,t4,100)
    axes(handles.axes1)
for i=1:1:100   
Rob.plot([t11(i) t22(i) t33(i) t44(i) 0]) % simuler le Robot statique en 3D 
pause(0.2)
end
else 
t11=linspace(0,t1,100)
t22=linspace(0,t2,100)
t33=linspace(0,t3,100)
t44=linspace(0,t4,100)
t55=linspace(0,t5,100)
axes(handles.axes1)
for i=1:1:100   
Rob.plot([t11(i) t22(i) t33(i) t44(i) t55(i)]) % simuler le Robot statique en 3D 
pause(0.2)
end
end


function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)

    instrhwinfo('Bluetooth')
    instrhwinfo('Bluetooth','HC-05')
    b = Bluetooth('HC-05',1);
    fopen(b);
   %% a mettre en Arduino
%    while(1)   
%     fwrite(b,10);
%     q=fscanf(b,'%d');
%     fwrite(b,20);
%     z=fscanf(b,'%d');
%     end
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
imshow('C:\Users\hmidi\Desktop\esprit\Sem2\PCR\matlab\prog\ROBOTOPlogo.png');
% Hint: place code in OpeningFcn to populate axes1
