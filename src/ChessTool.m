function varargout = ChessTool(varargin)
% CHESSTOOL MATLAB code for ChessTool.fig
%      CHESSTOOL, by itself, creates a new CHESSTOOL or raises the existing
%      singleton*.
%
%      H = CHESSTOOL returns the handle to a new CHESSTOOL or the handle to
%      the existing singleton*.
%
%      CHESSTOOL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CHESSTOOL.M with the given input arguments.
%
%      CHESSTOOL('Property','Value',...) creates a new CHESSTOOL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ChessTool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ChessTool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ChessTool

% Last Modified by GUIDE v2.5 22-Apr-2015 10:56:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ChessTool_OpeningFcn, ...
                   'gui_OutputFcn',  @ChessTool_OutputFcn, ...
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


% --- Executes just before ChessTool is made visible.
function ChessTool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ChessTool (see VARARGIN)

% Choose default command line output for ChessTool
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ChessTool wait for user response (see UIRESUME)
% uiwait(handles.figure1);

board = [-4,-3,-2,-5,-6,-2,-3,-4;...
            -1,-1,-1,-1,-1,-1,-1,-1;...
            0,0,0,0,0,0,0,0;...
            0,0,0,0,0,0,0,0;...
            0,0,0,0,0,0,0,0;...
            0,0,0,0,0,0,0,0;...
            1,1,1,1,1,1,1,1;...
            4,3,2,5,6,2,3,4]; 
        
boardim.Parent = handles.boardAxis;
drawBoardF3(board,handles);


% --- Outputs from this function are returned to the command line.
function varargout = ChessTool_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in whiteAlgPopUp.
function whiteAlgPopUp_Callback(hObject, eventdata, handles)
% hObject    handle to whiteAlgPopUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns whiteAlgPopUp contents as cell array
%        contents{get(hObject,'Value')} returns selected item from whiteAlgPopUp


% --- Executes during object creation, after setting all properties.
function whiteAlgPopUp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to whiteAlgPopUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in blackAlgPopUp.
function blackAlgPopUp_Callback(hObject, eventdata, handles)
% hObject    handle to blackAlgPopUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns blackAlgPopUp contents as cell array
%        contents{get(hObject,'Value')} returns selected item from blackAlgPopUp


% --- Executes during object creation, after setting all properties.
function blackAlgPopUp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to blackAlgPopUp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in playButton.
function playButton_Callback(hObject, eventdata, handles)
% hObject    handle to playButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
playGameV3(handles);


function numGamesText_Callback(hObject, eventdata, handles)
% hObject    handle to numGamesText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numGamesText as text
%        str2double(get(hObject,'String')) returns contents of numGamesText as a double



% --- Executes during object creation, after setting all properties.
function numGamesText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numGamesText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in simulateButton.
function simulateButton_Callback(hObject, eventdata, handles)
% hObject    handle to simulateButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

numSimulations = str2double(handles.numGamesText.String);
whiteAlg = handles.whiteAlgPopUp.Value;
blackAlg = handles.blackAlgPopUp.Value;
[numWwins, numBwins, numDraws] = simulateGame(numSimulations, whiteAlg, blackAlg);
handles.graphAxis = bar([numWwins, numBwins, numDraws]);

set(gca,'XTickLabel',{'White Wins', 'Black Wins', 'Draws'})
