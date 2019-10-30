function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES
 
% Edit the above text to modify the response to help GUI
 
% Last Modified by GUIDE v2.5 28-Sep-2019 19:58:30
 
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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
 
 
% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)
 
% Choose default command line output for GUI
handles.output = hObject;
 
% Update handles structure
guidata(hObject, handles);
 
% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);
 
 
% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Get default command line output from handles structure
varargout{1} = handles.output;
 
 
% --- Executes on selection change in maritalstatusfield.
function maritalstatusfield_Callback(hObject, eventdata, handles)
% hObject    handle to maritalstatusfield (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: contents = cellstr(get(hObject,'String')) returns maritalstatusfield contents as cell array
%        contents{get(hObject,'Value')} returns selected item from maritalstatusfield
 
 
% --- Executes during object creation, after setting all properties.
function maritalstatusfield_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maritalstatusfield (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function agefield_Callback(hObject, eventdata, handles)
% hObject    handle to agefield (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of agefield as text
%        str2double(get(hObject,'String')) returns contents of agefield as a double
 
 
% --- Executes during object creation, after setting all properties.
function agefield_CreateFcn(hObject, eventdata, handles)
% hObject    handle to agefield (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.agefield,'string','');
set(handles.NoOfChildren,'string','');

set(handles.fixedexpensesfield,'string','');
set(handles.Real_Estate_mortgage_field,'string','');

set(handles.social,'string','');
 
 
 
function fixedexpensesfield_Callback(hObject, eventdata, handles)
% hObject    handle to fixedexpensesfield (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of fixedexpensesfield as text
%        str2double(get(hObject,'String')) returns contents of fixedexpensesfield as a double
 
 
% --- Executes during object creation, after setting all properties.
function fixedexpensesfield_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fixedexpensesfield (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function Real_Estate_mortgage_field_Callback(hObject, eventdata, handles)
% hObject    handle to Real_Estate_mortgage_field (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of Real_Estate_mortgage_field as text
%        str2double(get(hObject,'String')) returns contents of Real_Estate_mortgage_field as a double
 
 
% --- Executes during object creation, after setting all properties.
function Real_Estate_mortgage_field_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Real_Estate_mortgage_field (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function NoOfChildren_Callback(hObject, eventdata, handles)
% hObject    handle to NoOfChildren (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of NoOfChildren as text
%        str2double(get(hObject,'String')) returns contents of NoOfChildren as a double
 
 
% --- Executes during object creation, after setting all properties.
function NoOfChildren_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NoOfChildren (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
 
function IncomeandOtherProperties_Callback(hObject, eventdata, handles)
% hObject    handle to IncomeandOtherProperties (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of IncomeandOtherProperties as text
%        str2double(get(hObject,'String')) returns contents of IncomeandOtherProperties as a double
 
 
% --- Executes during object creation, after setting all properties.
function IncomeandOtherProperties_CreateFcn(hObject, eventdata, handles)
% hObject    handle to IncomeandOtherProperties (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
 
% --- Executes on button press in Submit.
function Submit_Callback(hObject, eventdata, handles)
% hObject    handle to Submit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% h = helpdlg('The degree to which a customer belongs to a targeted group is % high. Mailing to this customer is recommended.', 'Recommendations');
% set(h, 'WindowStyle', 'modal');
 
a1=readfis('Personal.fis');
a2=readfis('Financial.fis');
a3=readfis('Mailing.fis');
 
age = str2double(get(handles.agefield, 'string'));

noOfChildren=str2double(get(handles.NoOfChildren, 'string'));

maritalStatus = get(handles.maritalstatusfield, 'value')
switch maritalStatus
    case 1
        maritalStatus = 0
    case 2
        maritalStatus = 40
end

personal = evalfis([age noOfChildren maritalStatus],a1);

fixedExpenses = str2double(get(handles.fixedexpensesfield, 'string'));

realEstateMortgage = str2double(get(handles.Real_Estate_mortgage_field, 'string'));

financial = evalfis([fixedExpenses realEstateMortgage],a2);

social = str2double(get(handles.social, 'string'));


output = evalfis([personal financial social],a3);
 
disp("mailing="+output)

if(output==0)
    h = helpdlg('No data found','Please insert valid data !');
    set(h,'WindowStyle','normal')
    set(h,'Color',[1 0 0]);
elseif(output<=20)
    h = helpdlg('The customer belonging to very low targeted mailing group.');
    set(h,'WindowStyle','normal')
    set(h,'Color',[1 1 1]);
elseif(output>=15 && output<=40)
    h = helpdlg('The customer belonging to low targeted mailing group.');
    set(h,'WindowStyle','normal')
    set(h,'Color',[1 1 1]);
elseif(output>=30 && output<=60)
    h = helpdlg('The customer belonging to medium targeted mailing group.');
    set(h,'WindowStyle','normal')
    set(h,'Color',[1 1 1]);
elseif(output>=50 && output<=80)
    h = helpdlg('The customer belonging to high targeted mailing group.');
    set(h,'WindowStyle','normal')
    set(h,'Color',[1 1 1]);
elseif(output>=70 && output<=100)
    h = helpdlg('The customer belonging to very high targeted mailing group. ');
    set(h,'WindowStyle','modal')
    set(h,'Color',[1 1 1]);
end



function social_Callback(hObject, eventdata, handles)
% hObject    handle to social (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 
% Hints: get(hObject,'String') returns contents of social as text
%        str2double(get(hObject,'String')) returns contents of social as a double
 
 
% --- Executes during object creation, after setting all properties.
function social_CreateFcn(hObject, eventdata, handles)
% hObject    handle to social (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
 
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on key press with focus on Submit and none of its controls.
function Submit_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to Submit (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
