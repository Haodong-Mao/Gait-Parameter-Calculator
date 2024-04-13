function varargout = test4(varargin)
% TEST4 MATLAB code for test4.fig
%      TEST4, by itself, creates a new TEST4 or raises the existing
%      singleton*.
%
%      H = TEST4 returns the handle to a new TEST4 or the handle to
%      the existing singleton*.
%
%      TEST4('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEST4.M with the given input arguments.
%
%      TEST4('Property','Value',...) creates a new TEST4 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before test4_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to test4_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help test4

% Last Modified by GUIDE v2.5 06-Mar-2024 19:46:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @test4_OpeningFcn, ...
                   'gui_OutputFcn',  @test4_OutputFcn, ...
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


% --- Executes just before test4 is made visible.
function test4_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to test4 (see VARARGIN)

% Choose default command line output for test4
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes test4 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = test4_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function l_t_1_Callback(hObject, eventdata, handles)
% hObject    handle to l_t_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_t_1 as text
%        str2double(get(hObject,'String')) returns contents of l_t_1 as a double


% --- Executes during object creation, after setting all properties.
function l_t_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_t_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_w_1_Callback(hObject, eventdata, handles)
% hObject    handle to l_w_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_w_1 as text
%        str2double(get(hObject,'String')) returns contents of l_w_1 as a double


% --- Executes during object creation, after setting all properties.
function l_w_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_w_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_t_2_Callback(hObject, eventdata, handles)
% hObject    handle to l_t_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_t_2 as text
%        str2double(get(hObject,'String')) returns contents of l_t_2 as a double


% --- Executes during object creation, after setting all properties.
function l_t_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_t_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_w_2_Callback(hObject, eventdata, handles)
% hObject    handle to l_w_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_w_2 as text
%        str2double(get(hObject,'String')) returns contents of l_w_2 as a double


% --- Executes during object creation, after setting all properties.
function l_w_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_w_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_t_3_Callback(hObject, eventdata, handles)
% hObject    handle to l_t_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_t_3 as text
%        str2double(get(hObject,'String')) returns contents of l_t_3 as a double


% --- Executes during object creation, after setting all properties.
function l_t_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_t_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_w_3_Callback(hObject, eventdata, handles)
% hObject    handle to l_w_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_w_3 as text
%        str2double(get(hObject,'String')) returns contents of l_w_3 as a double


% --- Executes during object creation, after setting all properties.
function l_w_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_w_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_t_4_Callback(hObject, eventdata, handles)
% hObject    handle to l_t_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_t_4 as text
%        str2double(get(hObject,'String')) returns contents of l_t_4 as a double


% --- Executes during object creation, after setting all properties.
function l_t_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_t_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_w_4_Callback(hObject, eventdata, handles)
% hObject    handle to l_w_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_w_4 as text
%        str2double(get(hObject,'String')) returns contents of l_w_4 as a double


% --- Executes during object creation, after setting all properties.
function l_w_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_w_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_t_5_Callback(hObject, eventdata, handles)
% hObject    handle to l_t_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_t_5 as text
%        str2double(get(hObject,'String')) returns contents of l_t_5 as a double


% --- Executes during object creation, after setting all properties.
function l_t_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_t_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_w_5_Callback(hObject, eventdata, handles)
% hObject    handle to l_w_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_w_5 as text
%        str2double(get(hObject,'String')) returns contents of l_w_5 as a double


% --- Executes during object creation, after setting all properties.
function l_w_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_w_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_t_6_Callback(hObject, eventdata, handles)
% hObject    handle to l_t_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_t_6 as text
%        str2double(get(hObject,'String')) returns contents of l_t_6 as a double


% --- Executes during object creation, after setting all properties.
function l_t_6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_t_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_w_6_Callback(hObject, eventdata, handles)
% hObject    handle to l_w_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_w_6 as text
%        str2double(get(hObject,'String')) returns contents of l_w_6 as a double


% --- Executes during object creation, after setting all properties.
function l_w_6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_w_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_t_7_Callback(hObject, eventdata, handles)
% hObject    handle to l_t_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_t_7 as text
%        str2double(get(hObject,'String')) returns contents of l_t_7 as a double


% --- Executes during object creation, after setting all properties.
function l_t_7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_t_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_w_7_Callback(hObject, eventdata, handles)
% hObject    handle to l_w_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_w_7 as text
%        str2double(get(hObject,'String')) returns contents of l_w_7 as a double


% --- Executes during object creation, after setting all properties.
function l_w_7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_w_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_t_8_Callback(hObject, eventdata, handles)
% hObject    handle to l_t_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_t_8 as text
%        str2double(get(hObject,'String')) returns contents of l_t_8 as a double


% --- Executes during object creation, after setting all properties.
function l_t_8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_t_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_w_8_Callback(hObject, eventdata, handles)
% hObject    handle to l_w_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_w_8 as text
%        str2double(get(hObject,'String')) returns contents of l_w_8 as a double


% --- Executes during object creation, after setting all properties.
function l_w_8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_w_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_t_9_Callback(hObject, eventdata, handles)
% hObject    handle to l_t_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_t_9 as text
%        str2double(get(hObject,'String')) returns contents of l_t_9 as a double


% --- Executes during object creation, after setting all properties.
function l_t_9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_t_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_w_9_Callback(hObject, eventdata, handles)
% hObject    handle to l_w_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_w_9 as text
%        str2double(get(hObject,'String')) returns contents of l_w_9 as a double


% --- Executes during object creation, after setting all properties.
function l_w_9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_w_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_t_10_Callback(hObject, eventdata, handles)
% hObject    handle to l_t_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_t_10 as text
%        str2double(get(hObject,'String')) returns contents of l_t_10 as a double


% --- Executes during object creation, after setting all properties.
function l_t_10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_t_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_w_10_Callback(hObject, eventdata, handles)
% hObject    handle to l_w_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_w_10 as text
%        str2double(get(hObject,'String')) returns contents of l_w_10 as a double


% --- Executes during object creation, after setting all properties.
function l_w_10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_w_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_t_11_Callback(hObject, eventdata, handles)
% hObject    handle to l_t_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_t_11 as text
%        str2double(get(hObject,'String')) returns contents of l_t_11 as a double


% --- Executes during object creation, after setting all properties.
function l_t_11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_t_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_w_11_Callback(hObject, eventdata, handles)
% hObject    handle to l_w_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_w_11 as text
%        str2double(get(hObject,'String')) returns contents of l_w_11 as a double


% --- Executes during object creation, after setting all properties.
function l_w_11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_w_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_t_1_Callback(hObject, eventdata, handles)
% hObject    handle to r_t_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_t_1 as text
%        str2double(get(hObject,'String')) returns contents of r_t_1 as a double


% --- Executes during object creation, after setting all properties.
function r_t_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_t_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_w_1_Callback(hObject, eventdata, handles)
% hObject    handle to r_w_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_w_1 as text
%        str2double(get(hObject,'String')) returns contents of r_w_1 as a double


% --- Executes during object creation, after setting all properties.
function r_w_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_w_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_t_2_Callback(hObject, eventdata, handles)
% hObject    handle to r_t_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_t_2 as text
%        str2double(get(hObject,'String')) returns contents of r_t_2 as a double


% --- Executes during object creation, after setting all properties.
function r_t_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_t_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_w_2_Callback(hObject, eventdata, handles)
% hObject    handle to r_w_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_w_2 as text
%        str2double(get(hObject,'String')) returns contents of r_w_2 as a double


% --- Executes during object creation, after setting all properties.
function r_w_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_w_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_t_3_Callback(hObject, eventdata, handles)
% hObject    handle to r_t_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_t_3 as text
%        str2double(get(hObject,'String')) returns contents of r_t_3 as a double


% --- Executes during object creation, after setting all properties.
function r_t_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_t_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_w_3_Callback(hObject, eventdata, handles)
% hObject    handle to r_w_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_w_3 as text
%        str2double(get(hObject,'String')) returns contents of r_w_3 as a double


% --- Executes during object creation, after setting all properties.
function r_w_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_w_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_t_4_Callback(hObject, eventdata, handles)
% hObject    handle to r_t_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_t_4 as text
%        str2double(get(hObject,'String')) returns contents of r_t_4 as a double


% --- Executes during object creation, after setting all properties.
function r_t_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_t_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_w_4_Callback(hObject, eventdata, handles)
% hObject    handle to r_w_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_w_4 as text
%        str2double(get(hObject,'String')) returns contents of r_w_4 as a double


% --- Executes during object creation, after setting all properties.
function r_w_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_w_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_t_5_Callback(hObject, eventdata, handles)
% hObject    handle to r_t_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_t_5 as text
%        str2double(get(hObject,'String')) returns contents of r_t_5 as a double


% --- Executes during object creation, after setting all properties.
function r_t_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_t_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_w_5_Callback(hObject, eventdata, handles)
% hObject    handle to r_w_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_w_5 as text
%        str2double(get(hObject,'String')) returns contents of r_w_5 as a double


% --- Executes during object creation, after setting all properties.
function r_w_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_w_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_t_6_Callback(hObject, eventdata, handles)
% hObject    handle to r_t_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_t_6 as text
%        str2double(get(hObject,'String')) returns contents of r_t_6 as a double


% --- Executes during object creation, after setting all properties.
function r_t_6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_t_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_w_6_Callback(hObject, eventdata, handles)
% hObject    handle to r_w_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_w_6 as text
%        str2double(get(hObject,'String')) returns contents of r_w_6 as a double


% --- Executes during object creation, after setting all properties.
function r_w_6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_w_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_t_7_Callback(hObject, eventdata, handles)
% hObject    handle to r_t_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_t_7 as text
%        str2double(get(hObject,'String')) returns contents of r_t_7 as a double


% --- Executes during object creation, after setting all properties.
function r_t_7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_t_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_w_7_Callback(hObject, eventdata, handles)
% hObject    handle to r_w_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_w_7 as text
%        str2double(get(hObject,'String')) returns contents of r_w_7 as a double


% --- Executes during object creation, after setting all properties.
function r_w_7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_w_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_t_8_Callback(hObject, eventdata, handles)
% hObject    handle to r_t_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_t_8 as text
%        str2double(get(hObject,'String')) returns contents of r_t_8 as a double


% --- Executes during object creation, after setting all properties.
function r_t_8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_t_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_w_8_Callback(hObject, eventdata, handles)
% hObject    handle to r_w_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_w_8 as text
%        str2double(get(hObject,'String')) returns contents of r_w_8 as a double


% --- Executes during object creation, after setting all properties.
function r_w_8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_w_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_t_9_Callback(hObject, eventdata, handles)
% hObject    handle to r_t_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_t_9 as text
%        str2double(get(hObject,'String')) returns contents of r_t_9 as a double


% --- Executes during object creation, after setting all properties.
function r_t_9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_t_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_w_9_Callback(hObject, eventdata, handles)
% hObject    handle to r_w_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_w_9 as text
%        str2double(get(hObject,'String')) returns contents of r_w_9 as a double


% --- Executes during object creation, after setting all properties.
function r_w_9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_w_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_t_10_Callback(hObject, eventdata, handles)
% hObject    handle to r_t_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_t_10 as text
%        str2double(get(hObject,'String')) returns contents of r_t_10 as a double


% --- Executes during object creation, after setting all properties.
function r_t_10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_t_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_w_10_Callback(hObject, eventdata, handles)
% hObject    handle to r_w_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_w_10 as text
%        str2double(get(hObject,'String')) returns contents of r_w_10 as a double


% --- Executes during object creation, after setting all properties.
function r_w_10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_w_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_t_11_Callback(hObject, eventdata, handles)
% hObject    handle to r_t_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_t_11 as text
%        str2double(get(hObject,'String')) returns contents of r_t_11 as a double


% --- Executes during object creation, after setting all properties.
function r_t_11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_t_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_w_11_Callback(hObject, eventdata, handles)
% hObject    handle to r_w_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_w_11 as text
%        str2double(get(hObject,'String')) returns contents of r_w_11 as a double


% --- Executes during object creation, after setting all properties.
function r_w_11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_w_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rawfilename_Callback(hObject, eventdata, handles)
% hObject    handle to rawfilename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rawfilename as text
%        str2double(get(hObject,'String')) returns contents of rawfilename as a double


% --- Executes during object creation, after setting all properties.
function rawfilename_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rawfilename (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in LoadRawFile.
function LoadRawFile_Callback(hObject, eventdata, handles)
% hObject    handle to LoadRawFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filename;
[Fnameh,Pnameh]=uigetfile('*.txt');%Fnameh显示的文件名称，Pnameh显示的文件路径
filename=[Pnameh,Fnameh];%存储文件的路径及名称
set(handles.rawfilename,'String',filename);%将strh的值传递给静态文本
temp=importdata(filename);
temp_data=temp.data;
[Lrawdata,Rrawdata]=RawdataPreprocessing(temp_data);
guidata(hObject, handles);
handles.Lrawdata=Lrawdata;
handles.Rrawdata=Rrawdata;
guidata(hObject, handles);



% --- Executes on button press in StepIndexButton.
function StepIndexButton_Callback(hObject, eventdata, handles)
% hObject    handle to StepIndexButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
lt1= str2double(get(handles.l_t_1,'string'));
lw1= str2double(get(handles.l_w_1,'string'));
lt2= str2double(get(handles.l_t_2,'string'));
lw2= str2double(get(handles.l_w_2,'string'));
lt3= str2double(get(handles.l_t_3,'string'));
lw3= str2double(get(handles.l_w_3,'string'));
lt4= str2double(get(handles.l_t_4,'string'));
lw4= str2double(get(handles.l_w_4,'string'));
lt5= str2double(get(handles.l_t_5,'string'));
lw5= str2double(get(handles.l_w_5,'string'));
lt6= str2double(get(handles.l_t_6,'string'));
lw6= str2double(get(handles.l_w_6,'string'));
lt7= str2double(get(handles.l_t_7,'string'));
lw7= str2double(get(handles.l_w_7,'string'));
lt8= str2double(get(handles.l_t_8,'string'));
lw8= str2double(get(handles.l_w_8,'string'));
lt9= str2double(get(handles.l_t_9,'string'));
lw9= str2double(get(handles.l_w_9,'string'));
lt10= str2double(get(handles.l_t_10,'string'));
lw10= str2double(get(handles.l_w_10,'string'));
lt11= str2double(get(handles.l_t_11,'string'));
lw11= str2double(get(handles.l_w_11,'string'));


rt1= str2double(get(handles.r_t_1,'string'));
rw1= str2double(get(handles.r_w_1,'string'));
rt2= str2double(get(handles.r_t_2,'string'));
rw2= str2double(get(handles.r_w_2,'string'));
rt3= str2double(get(handles.r_t_3,'string'));
rw3= str2double(get(handles.r_w_3,'string'));
rt4= str2double(get(handles.r_t_4,'string'));
rw4= str2double(get(handles.r_w_4,'string'));
rt5= str2double(get(handles.r_t_5,'string'));
rw5= str2double(get(handles.r_w_5,'string'));
rt6= str2double(get(handles.r_t_6,'string'));
rw6= str2double(get(handles.r_w_6,'string'));
rt7= str2double(get(handles.r_t_7,'string'));
rw7= str2double(get(handles.r_w_7,'string'));
rt8= str2double(get(handles.r_t_8,'string'));
rw8= str2double(get(handles.r_w_8,'string'));
rt9= str2double(get(handles.r_t_9,'string'));
rw9= str2double(get(handles.r_w_9,'string'));
rt10= str2double(get(handles.r_t_10,'string'));
rw10= str2double(get(handles.r_w_10,'string'));
rt11= str2double(get(handles.r_t_11,'string'));
rw11= str2double(get(handles.r_w_11,'string'));


lsd1= str2double(get(handles.l_s_d_1,'string'));
lsd2= str2double(get(handles.l_s_d_2,'string'));
lsd3= str2double(get(handles.l_s_d_3,'string'));
lsd4= str2double(get(handles.l_s_d_4,'string'));
lsd5= str2double(get(handles.l_s_d_5,'string'));
lsd6= str2double(get(handles.l_s_d_6,'string'));
lsd7= str2double(get(handles.l_s_d_7,'string'));
lsd8= str2double(get(handles.l_s_d_8,'string'));
lsd9= str2double(get(handles.l_s_d_9,'string'));
lsd10= str2double(get(handles.l_s_d_10,'string'));
lsd11= str2double(get(handles.l_s_d_11,'string'));

led1= str2double(get(handles.l_e_d_1,'string'));
led2= str2double(get(handles.l_e_d_2,'string'));
led3= str2double(get(handles.l_e_d_3,'string'));
led4= str2double(get(handles.l_e_d_4,'string'));
led5= str2double(get(handles.l_e_d_5,'string'));
led6= str2double(get(handles.l_e_d_6,'string'));
led7= str2double(get(handles.l_e_d_7,'string'));
led8= str2double(get(handles.l_e_d_8,'string'));
led9= str2double(get(handles.l_e_d_9,'string'));
led10= str2double(get(handles.l_e_d_10,'string'));
led11= str2double(get(handles.l_e_d_11,'string'));

rsd1= str2double(get(handles.r_s_d_1,'string'));
rsd2= str2double(get(handles.r_s_d_2,'string'));
rsd3= str2double(get(handles.r_s_d_3,'string'));
rsd4= str2double(get(handles.r_s_d_4,'string'));
rsd5= str2double(get(handles.r_s_d_5,'string'));
rsd6= str2double(get(handles.r_s_d_6,'string'));
rsd7= str2double(get(handles.r_s_d_7,'string'));
rsd8= str2double(get(handles.r_s_d_8,'string'));
rsd9= str2double(get(handles.r_s_d_9,'string'));
rsd10= str2double(get(handles.r_s_d_10,'string'));
rsd11= str2double(get(handles.r_s_d_11,'string'));

red1= str2double(get(handles.r_e_d_1,'string'));
red2= str2double(get(handles.r_e_d_2,'string'));
red3= str2double(get(handles.r_e_d_3,'string'));
red4= str2double(get(handles.r_e_d_4,'string'));
red5= str2double(get(handles.r_e_d_5,'string'));
red6= str2double(get(handles.r_e_d_6,'string'));
red7= str2double(get(handles.r_e_d_7,'string'));
red8= str2double(get(handles.r_e_d_8,'string'));
red9= str2double(get(handles.r_e_d_9,'string'));
red10= str2double(get(handles.r_e_d_10,'string'));
red11= str2double(get(handles.r_e_d_11,'string'));

guidata(hObject, handles);%更新结构体中的所有数据
handles.Lstart_index=[lt1; lt2; lt3; lt4; lt5; lt6; lt7; lt8; lt9; lt10];
handles.Lmid_index=[lw1; lw2; lw3; lw4; lw5; lw6; lw7; lw8; lw9; lw10];
handles.Lend_index=[lt2; lt3; lt4; lt5; lt6; lt7; lt8; lt9; lt10; lt11];
handles.Ldrag_start=[lsd1;lsd2;lsd3;lsd4;lsd5;lsd6;lsd7;lsd8;lsd9;lsd10];
handles.Ldrag_end=[led1;led2;led3;led4;led5;led6;led7;led8;led9;led10];

handles.Rstart_index=[rt1; rt2; rt3; rt4; rt5; rt6; rt7; rt8; rt9; rt10];
handles.Rmid_index=[rw1; rw2; rw3; rw4; rw5; rw6; rw7; rw8; rw9; rw10];
handles.Rend_index=[rt2; rt3; rt4; rt5; rt6; rt7; rt8; rt9; rt10; rt11];
handles.Rdrag_start=[rsd1;rsd2;rsd3;rsd4;rsd5;rsd6;rsd7;rsd8;rsd9;rsd10];
handles.Rdrag_end=[red1;red2;red3;red4;red5;red6;red7;red8;red9;red10];

guidata(hObject, handles);%更新结构体中的所有数据



function StepFlag_Callback(hObject, eventdata, handles)
% hObject    handle to StepFlag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of StepFlag as text
%        str2double(get(hObject,'String')) returns contents of StepFlag as a double


% --- Executes during object creation, after setting all properties.
function StepFlag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to StepFlag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in StepFlagButton.
function StepFlagButton_Callback(hObject, eventdata, handles)
% hObject    handle to StepFlagButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[ln,rn] = mycheck(handles.Lrawdata,handles.Rrawdata,handles.Lstart_index,handles.Lmid_index,handles.Lend_index,handles.Rstart_index,handles.Rmid_index,handles.Rend_index);
if isempty(ln) && isempty(rn)
    set(handles.StepFlag,'String','Congratulations! No errors.');%将strh的值传递给静态文本
else
    printstring='error!';
    
    if ~isempty(ln)
        printstring=[printstring,'left:'];
        for i=1:length(ln)
            printstring=[printstring,num2str(ln(i)),' '];
        end
    end
    
    if ~isempty(rn)
        printstring=[printstring,'right:'];
        for i=1:length(rn)
            printstring=[printstring,num2str(rn(i)),' '];
        end
    end
    set(handles.StepFlag,'String',printstring);
end
     
    
    


% --- Executes during object creation, after setting all properties.
function uipanel1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
temp=imread( 'E:\my_compurer_backup_E\移动硬盘备份\D盘备份\D盘-研究生\步态分析\新设备\重新写的参数计算代码\坐标系转换图.png');
imshow(temp);


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1
image=imread('E:\my_compurer_backup_E\移动硬盘备份\D盘备份\D盘-研究生\步态分析\新设备\重新写的参数计算代码\坐标系转换图.png');
axesHandle=hObject;
imshow(image,'Parent',axesHandle);



function X1_X_Callback(hObject, eventdata, handles)
% hObject    handle to X1_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of X1_X as text
%        str2double(get(hObject,'String')) returns contents of X1_X as a double


% --- Executes during object creation, after setting all properties.
function X1_X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to X1_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function X2_X_Callback(hObject, eventdata, handles)
% hObject    handle to X2_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of X2_X as text
%        str2double(get(hObject,'String')) returns contents of X2_X as a double


% --- Executes during object creation, after setting all properties.
function X2_X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to X2_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Y1_X_Callback(hObject, eventdata, handles)
% hObject    handle to Y1_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Y1_X as text
%        str2double(get(hObject,'String')) returns contents of Y1_X as a double


% --- Executes during object creation, after setting all properties.
function Y1_X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Y1_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Z2_X_Callback(hObject, eventdata, handles)
% hObject    handle to Z2_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Z2_X as text
%        str2double(get(hObject,'String')) returns contents of Z2_X as a double


% --- Executes during object creation, after setting all properties.
function Z2_X_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Z2_X (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ButtonAxis.
function ButtonAxis_Callback(hObject, eventdata, handles)
% hObject    handle to ButtonAxis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x1x=str2double(get(handles.X1_X,'string'));
x1y=str2double(get(handles.X1_Y,'string'));
x1z=str2double(get(handles.X1_Z,'string'));
x2x=str2double(get(handles.X2_X,'string'));
x2y=str2double(get(handles.X2_Y,'string'));
x2z=str2double(get(handles.X2_Z,'string'));
y1x=str2double(get(handles.Y1_X,'string'));
y1y=str2double(get(handles.Y1_Y,'string'));
y1z=str2double(get(handles.Y1_Z,'string'));
z2x=str2double(get(handles.Z2_X,'string'));
z2y=str2double(get(handles.Z2_Y,'string'));
z2z=str2double(get(handles.Z2_Z,'string'));

guidata(hObject, handles);%更新结构体中的所有数据
handles.x1=[x1x x1y x1z];
handles.x2=[x2x x2y x2z];
handles.z1=handles.x2;
handles.z2=[z2x,z2y,z2z];
handles.y1=[y1x,y1y,y1z];
handles.y2=handles.z1;
guidata(hObject, handles);%更新结构体中的所有数据





function X1_Y_Callback(hObject, eventdata, handles)
% hObject    handle to X1_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of X1_Y as text
%        str2double(get(hObject,'String')) returns contents of X1_Y as a double


% --- Executes during object creation, after setting all properties.
function X1_Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to X1_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function X2_Y_Callback(hObject, eventdata, handles)
% hObject    handle to X2_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of X2_Y as text
%        str2double(get(hObject,'String')) returns contents of X2_Y as a double


% --- Executes during object creation, after setting all properties.
function X2_Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to X2_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Y1_Y_Callback(hObject, eventdata, handles)
% hObject    handle to Y1_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Y1_Y as text
%        str2double(get(hObject,'String')) returns contents of Y1_Y as a double


% --- Executes during object creation, after setting all properties.
function Y1_Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Y1_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Z2_Y_Callback(hObject, eventdata, handles)
% hObject    handle to Z2_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Z2_Y as text
%        str2double(get(hObject,'String')) returns contents of Z2_Y as a double


% --- Executes during object creation, after setting all properties.
function Z2_Y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Z2_Y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function X1_Z_Callback(hObject, eventdata, handles)
% hObject    handle to X1_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of X1_Z as text
%        str2double(get(hObject,'String')) returns contents of X1_Z as a double


% --- Executes during object creation, after setting all properties.
function X1_Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to X1_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function X2_Z_Callback(hObject, eventdata, handles)
% hObject    handle to X2_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of X2_Z as text
%        str2double(get(hObject,'String')) returns contents of X2_Z as a double


% --- Executes during object creation, after setting all properties.
function X2_Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to X2_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Y1_Z_Callback(hObject, eventdata, handles)
% hObject    handle to Y1_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Y1_Z as text
%        str2double(get(hObject,'String')) returns contents of Y1_Z as a double


% --- Executes during object creation, after setting all properties.
function Y1_Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Y1_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Z2_Z_Callback(hObject, eventdata, handles)
% hObject    handle to Z2_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Z2_Z as text
%        str2double(get(hObject,'String')) returns contents of Z2_Z as a double


% --- Executes during object creation, after setting all properties.
function Z2_Z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Z2_Z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function OutFile_Callback(hObject, eventdata, handles)
% hObject    handle to OutFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of OutFile as text
%        str2double(get(hObject,'String')) returns contents of OutFile as a double


% --- Executes during object creation, after setting all properties.
function OutFile_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OutFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ButtonOutFile.
function ButtonOutFile_Callback(hObject, eventdata, handles)
% hObject    handle to ButtonOutFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[Fnameh,Pnameh]=uigetfile('*.xlsx');%Fnameh显示的文件名称，Pnameh显示的文件路径
filename=[Pnameh,Fnameh];%存储文件的路径及名称
guidata(hObject, handles);%更新结构体中的所有数据
handles.excelfilename=filename;
guidata(hObject, handles);%更新结构体中的所有数据
set(handles.OutFile,'String',filename);%将strh的值传递给静态文本





function fps_Callback(hObject, eventdata, handles)
% hObject    handle to fps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fps as text
%        str2double(get(hObject,'String')) returns contents of fps as a double


% --- Executes during object creation, after setting all properties.
function fps_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ButtonFps.
function ButtonFps_Callback(hObject, eventdata, handles)
% hObject    handle to ButtonFps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
temp=str2double(get(handles.fps,'string'));
guidata(hObject, handles);%更新结构体中的所有数据
handles.fpsnum=temp;
guidata(hObject, handles);%更新结构体中的所有数据



function CalAllParameter_Callback(hObject, eventdata, handles)
% hObject    handle to CalAllParameter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CalAllParameter as text
%        str2double(get(hObject,'String')) returns contents of CalAllParameter as a double


% --- Executes during object creation, after setting all properties.
function CalAllParameter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CalAllParameter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in ButtonCalAllParameter.
function ButtonCalAllParameter_Callback(hObject, eventdata, handles)
% hObject    handle to ButtonCalAllParameter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
calculate_all_parameter(handles.excelfilename,1,handles.Lrawdata,handles.Lstart_index,handles.Lend_index,handles.Lmid_index,handles.x1,handles.x2,handles.y1,handles.y2,handles.z1,handles.z2,handles.fpsnum,handles.Ldrag_start,handles.Ldrag_end);
calculate_all_parameter(handles.excelfilename,2,handles.Rrawdata,handles.Rstart_index,handles.Rend_index,handles.Rmid_index,handles.x1,handles.x2,handles.y1,handles.y2,handles.z1,handles.z2,handles.fpsnum,handles.Rdrag_start,handles.Rdrag_end);
set(handles.CalAllParameter,'String','Calculations completed.');



function l_s_d_1_Callback(hObject, eventdata, handles)
% hObject    handle to l_s_d_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_s_d_1 as text
%        str2double(get(hObject,'String')) returns contents of l_s_d_1 as a double


% --- Executes during object creation, after setting all properties.
function l_s_d_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_s_d_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_s_d_2_Callback(hObject, eventdata, handles)
% hObject    handle to l_s_d_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_s_d_2 as text
%        str2double(get(hObject,'String')) returns contents of l_s_d_2 as a double


% --- Executes during object creation, after setting all properties.
function l_s_d_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_s_d_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_s_d_3_Callback(hObject, eventdata, handles)
% hObject    handle to l_s_d_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_s_d_3 as text
%        str2double(get(hObject,'String')) returns contents of l_s_d_3 as a double


% --- Executes during object creation, after setting all properties.
function l_s_d_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_s_d_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_s_d_4_Callback(hObject, eventdata, handles)
% hObject    handle to l_s_d_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_s_d_4 as text
%        str2double(get(hObject,'String')) returns contents of l_s_d_4 as a double


% --- Executes during object creation, after setting all properties.
function l_s_d_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_s_d_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_s_d_5_Callback(hObject, eventdata, handles)
% hObject    handle to l_s_d_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_s_d_5 as text
%        str2double(get(hObject,'String')) returns contents of l_s_d_5 as a double


% --- Executes during object creation, after setting all properties.
function l_s_d_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_s_d_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_s_d_6_Callback(hObject, eventdata, handles)
% hObject    handle to l_s_d_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_s_d_6 as text
%        str2double(get(hObject,'String')) returns contents of l_s_d_6 as a double


% --- Executes during object creation, after setting all properties.
function l_s_d_6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_s_d_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_s_d_7_Callback(hObject, eventdata, handles)
% hObject    handle to l_s_d_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_s_d_7 as text
%        str2double(get(hObject,'String')) returns contents of l_s_d_7 as a double


% --- Executes during object creation, after setting all properties.
function l_s_d_7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_s_d_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_s_d_8_Callback(hObject, eventdata, handles)
% hObject    handle to l_s_d_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_s_d_8 as text
%        str2double(get(hObject,'String')) returns contents of l_s_d_8 as a double


% --- Executes during object creation, after setting all properties.
function l_s_d_8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_s_d_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_s_d_9_Callback(hObject, eventdata, handles)
% hObject    handle to l_s_d_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_s_d_9 as text
%        str2double(get(hObject,'String')) returns contents of l_s_d_9 as a double


% --- Executes during object creation, after setting all properties.
function l_s_d_9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_s_d_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_s_d_10_Callback(hObject, eventdata, handles)
% hObject    handle to l_s_d_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_s_d_10 as text
%        str2double(get(hObject,'String')) returns contents of l_s_d_10 as a double


% --- Executes during object creation, after setting all properties.
function l_s_d_10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_s_d_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_s_d_11_Callback(hObject, eventdata, handles)
% hObject    handle to l_s_d_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_s_d_11 as text
%        str2double(get(hObject,'String')) returns contents of l_s_d_11 as a double


% --- Executes during object creation, after setting all properties.
function l_s_d_11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_s_d_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_s_d_1_Callback(hObject, eventdata, handles)
% hObject    handle to r_s_d_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_s_d_1 as text
%        str2double(get(hObject,'String')) returns contents of r_s_d_1 as a double


% --- Executes during object creation, after setting all properties.
function r_s_d_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_s_d_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_s_d_2_Callback(hObject, eventdata, handles)
% hObject    handle to r_s_d_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_s_d_2 as text
%        str2double(get(hObject,'String')) returns contents of r_s_d_2 as a double


% --- Executes during object creation, after setting all properties.
function r_s_d_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_s_d_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_s_d_3_Callback(hObject, eventdata, handles)
% hObject    handle to r_s_d_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_s_d_3 as text
%        str2double(get(hObject,'String')) returns contents of r_s_d_3 as a double


% --- Executes during object creation, after setting all properties.
function r_s_d_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_s_d_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_s_d_4_Callback(hObject, eventdata, handles)
% hObject    handle to r_s_d_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_s_d_4 as text
%        str2double(get(hObject,'String')) returns contents of r_s_d_4 as a double


% --- Executes during object creation, after setting all properties.
function r_s_d_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_s_d_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_s_d_5_Callback(hObject, eventdata, handles)
% hObject    handle to r_s_d_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_s_d_5 as text
%        str2double(get(hObject,'String')) returns contents of r_s_d_5 as a double


% --- Executes during object creation, after setting all properties.
function r_s_d_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_s_d_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_s_d_6_Callback(hObject, eventdata, handles)
% hObject    handle to r_s_d_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_s_d_6 as text
%        str2double(get(hObject,'String')) returns contents of r_s_d_6 as a double


% --- Executes during object creation, after setting all properties.
function r_s_d_6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_s_d_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_s_d_7_Callback(hObject, eventdata, handles)
% hObject    handle to r_s_d_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_s_d_7 as text
%        str2double(get(hObject,'String')) returns contents of r_s_d_7 as a double


% --- Executes during object creation, after setting all properties.
function r_s_d_7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_s_d_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_s_d_8_Callback(hObject, eventdata, handles)
% hObject    handle to r_s_d_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_s_d_8 as text
%        str2double(get(hObject,'String')) returns contents of r_s_d_8 as a double


% --- Executes during object creation, after setting all properties.
function r_s_d_8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_s_d_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_s_d_9_Callback(hObject, eventdata, handles)
% hObject    handle to r_s_d_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_s_d_9 as text
%        str2double(get(hObject,'String')) returns contents of r_s_d_9 as a double


% --- Executes during object creation, after setting all properties.
function r_s_d_9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_s_d_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_s_d_10_Callback(hObject, eventdata, handles)
% hObject    handle to r_s_d_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_s_d_10 as text
%        str2double(get(hObject,'String')) returns contents of r_s_d_10 as a double


% --- Executes during object creation, after setting all properties.
function r_s_d_10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_s_d_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_s_d_11_Callback(hObject, eventdata, handles)
% hObject    handle to r_s_d_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_s_d_11 as text
%        str2double(get(hObject,'String')) returns contents of r_s_d_11 as a double


% --- Executes during object creation, after setting all properties.
function r_s_d_11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_s_d_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_e_d_1_Callback(hObject, eventdata, handles)
% hObject    handle to l_e_d_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_e_d_1 as text
%        str2double(get(hObject,'String')) returns contents of l_e_d_1 as a double


% --- Executes during object creation, after setting all properties.
function l_e_d_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_e_d_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_e_d_2_Callback(hObject, eventdata, handles)
% hObject    handle to l_e_d_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_e_d_2 as text
%        str2double(get(hObject,'String')) returns contents of l_e_d_2 as a double


% --- Executes during object creation, after setting all properties.
function l_e_d_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_e_d_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_e_d_3_Callback(hObject, eventdata, handles)
% hObject    handle to l_e_d_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_e_d_3 as text
%        str2double(get(hObject,'String')) returns contents of l_e_d_3 as a double


% --- Executes during object creation, after setting all properties.
function l_e_d_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_e_d_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_e_d_4_Callback(hObject, eventdata, handles)
% hObject    handle to l_e_d_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_e_d_4 as text
%        str2double(get(hObject,'String')) returns contents of l_e_d_4 as a double


% --- Executes during object creation, after setting all properties.
function l_e_d_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_e_d_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_e_d_5_Callback(hObject, eventdata, handles)
% hObject    handle to l_e_d_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_e_d_5 as text
%        str2double(get(hObject,'String')) returns contents of l_e_d_5 as a double


% --- Executes during object creation, after setting all properties.
function l_e_d_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_e_d_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_e_d_6_Callback(hObject, eventdata, handles)
% hObject    handle to l_e_d_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_e_d_6 as text
%        str2double(get(hObject,'String')) returns contents of l_e_d_6 as a double


% --- Executes during object creation, after setting all properties.
function l_e_d_6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_e_d_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_e_d_7_Callback(hObject, eventdata, handles)
% hObject    handle to l_e_d_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_e_d_7 as text
%        str2double(get(hObject,'String')) returns contents of l_e_d_7 as a double


% --- Executes during object creation, after setting all properties.
function l_e_d_7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_e_d_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_e_d_8_Callback(hObject, eventdata, handles)
% hObject    handle to l_e_d_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_e_d_8 as text
%        str2double(get(hObject,'String')) returns contents of l_e_d_8 as a double


% --- Executes during object creation, after setting all properties.
function l_e_d_8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_e_d_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_e_d_9_Callback(hObject, eventdata, handles)
% hObject    handle to l_e_d_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_e_d_9 as text
%        str2double(get(hObject,'String')) returns contents of l_e_d_9 as a double


% --- Executes during object creation, after setting all properties.
function l_e_d_9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_e_d_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_e_d_10_Callback(hObject, eventdata, handles)
% hObject    handle to l_e_d_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_e_d_10 as text
%        str2double(get(hObject,'String')) returns contents of l_e_d_10 as a double


% --- Executes during object creation, after setting all properties.
function l_e_d_10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_e_d_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function l_e_d_11_Callback(hObject, eventdata, handles)
% hObject    handle to l_e_d_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of l_e_d_11 as text
%        str2double(get(hObject,'String')) returns contents of l_e_d_11 as a double


% --- Executes during object creation, after setting all properties.
function l_e_d_11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to l_e_d_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_e_d_1_Callback(hObject, eventdata, handles)
% hObject    handle to r_e_d_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_e_d_1 as text
%        str2double(get(hObject,'String')) returns contents of r_e_d_1 as a double


% --- Executes during object creation, after setting all properties.
function r_e_d_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_e_d_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_e_d_2_Callback(hObject, eventdata, handles)
% hObject    handle to r_e_d_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_e_d_2 as text
%        str2double(get(hObject,'String')) returns contents of r_e_d_2 as a double


% --- Executes during object creation, after setting all properties.
function r_e_d_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_e_d_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_e_d_3_Callback(hObject, eventdata, handles)
% hObject    handle to r_e_d_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_e_d_3 as text
%        str2double(get(hObject,'String')) returns contents of r_e_d_3 as a double


% --- Executes during object creation, after setting all properties.
function r_e_d_3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_e_d_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_e_d_4_Callback(hObject, eventdata, handles)
% hObject    handle to r_e_d_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_e_d_4 as text
%        str2double(get(hObject,'String')) returns contents of r_e_d_4 as a double


% --- Executes during object creation, after setting all properties.
function r_e_d_4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_e_d_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_e_d_5_Callback(hObject, eventdata, handles)
% hObject    handle to r_e_d_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_e_d_5 as text
%        str2double(get(hObject,'String')) returns contents of r_e_d_5 as a double


% --- Executes during object creation, after setting all properties.
function r_e_d_5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_e_d_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_e_d_6_Callback(hObject, eventdata, handles)
% hObject    handle to r_e_d_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_e_d_6 as text
%        str2double(get(hObject,'String')) returns contents of r_e_d_6 as a double


% --- Executes during object creation, after setting all properties.
function r_e_d_6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_e_d_6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_e_d_7_Callback(hObject, eventdata, handles)
% hObject    handle to r_e_d_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_e_d_7 as text
%        str2double(get(hObject,'String')) returns contents of r_e_d_7 as a double


% --- Executes during object creation, after setting all properties.
function r_e_d_7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_e_d_7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_e_d_8_Callback(hObject, eventdata, handles)
% hObject    handle to r_e_d_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_e_d_8 as text
%        str2double(get(hObject,'String')) returns contents of r_e_d_8 as a double


% --- Executes during object creation, after setting all properties.
function r_e_d_8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_e_d_8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_e_d_9_Callback(hObject, eventdata, handles)
% hObject    handle to r_e_d_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_e_d_9 as text
%        str2double(get(hObject,'String')) returns contents of r_e_d_9 as a double


% --- Executes during object creation, after setting all properties.
function r_e_d_9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_e_d_9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_e_d_10_Callback(hObject, eventdata, handles)
% hObject    handle to r_e_d_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_e_d_10 as text
%        str2double(get(hObject,'String')) returns contents of r_e_d_10 as a double


% --- Executes during object creation, after setting all properties.
function r_e_d_10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_e_d_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function r_e_d_11_Callback(hObject, eventdata, handles)
% hObject    handle to r_e_d_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of r_e_d_11 as text
%        str2double(get(hObject,'String')) returns contents of r_e_d_11 as a double


% --- Executes during object creation, after setting all properties.
function r_e_d_11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_e_d_11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2
pwd
currentfolder=pwd;
image=[currentfolder,'\','坐标系转换图','.png'];
axesHandle=hObject;
imshow(image,'Parent',axesHandle);
