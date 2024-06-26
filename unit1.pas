unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, Windows, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Grids, ComCtrls, ExtCtrls, Spin, LazFileUtils, Types, LCLIntf, ClipBrd, IniFiles, LMessages;

type

  TSetWindowDisplayAffinity = function (hWnd: HWND; dwAffinity: DWORD): LongBool; stdcall;  //Import SetWindowDisplayAffinity as it is needed to work with the DisplayAffinity Value of Windows
  TGetWindowDisplayAffinity = function (hWnd: HWND; out pdwAffinity: DWORD): LongBool; stdcall;  //Import GetWindowDisplayAffinity for Displaying the default Values
  TGetLayeredWindowAttributes = function (hWnd: HWND; out pcrKey: ColorRef; out pbAlpha: Byte; out pdwFlags: DWORD): LongBool; stdcall; //Import GetLayeredWindowAttributes for displaying the initial Transparency Alpha Value

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button19: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    CheckBox1: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckGroup1: TCheckGroup;
    CheckGroup2: TCheckGroup;
    CheckGroup3: TCheckGroup;
    ColorDialog1: TColorDialog;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    GroupBox1: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    SaveDialog1: TSaveDialog;
    SaveDialog2: TSaveDialog;
    Shape2: TShape;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    StringGrid1: TStringGrid;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    TrackBar1: TTrackBar;
    TrayIcon1: TTrayIcon;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure CheckBox12Change(Sender: TObject);
    procedure CheckBox13Change(Sender: TObject);
    procedure CheckBox16Change(Sender: TObject);
    procedure CheckBox17Change(Sender: TObject);
    procedure CheckBox19Change(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure CheckBox3Change(Sender: TObject);
    procedure CheckBox4Change(Sender: TObject);
    procedure CheckBox5Change(Sender: TObject);
    procedure CheckBox6Change(Sender: TObject);
    procedure CheckBox7Change(Sender: TObject);
    procedure CheckBox8Change(Sender: TObject);
    procedure CheckBox9Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit7Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
    procedure Shape2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpinEdit1Change(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure TrayIcon1Click(Sender: TObject);
    procedure UpdateWindowTable;
    procedure CaptureWindow(window: HWND; Image: TImage);
    procedure UpdateDisplay;
    procedure UpdateWindow;
    procedure InitializeDisplayAffinity;  
    function GetFullWidth: Integer;
    function GetFullHeight: Integer;
    procedure CustomLabelMouseEnter(Sender: TObject);
    procedure CustomLabelMouseLeave(Sender: TObject);
    procedure CustomFormDestroy(Sender: TObject; var CloseAction: TCloseAction);
    const LM_WINEDIT = LM_USER + 1;  //Constant WinEdit Dx / Colors+ Message Communication
  private

  public

  end;

var
  Form1: TForm1;

  SetWindowDisplayAffinity : TSetWindowDisplayAffinity;  //Imported Function To Work with DisplayAffinity of Windows
  GetWindowDisplayAffinity : TGetWindowDisplayAffinity;  //Imported Function To Work with DisplayAffinity of Windows
  GetLayeredWindowAttributes : TGetLayeredWindowAttributes; //Imported Function for retrieving the Transparency value of Windows

  MasterHandle: hWnd = 0; //The Handle used by the choosen Window
  MasterRect: TRect;  //The TRect Structure used by the choosen Window
  MasterTitle: String = ''; // The Title used by the choosen Window

  x: Integer = 0;  //The X Position of the choosen Window
  y: Integer = 0;  //The Y Position of the choosen Window
  w: Integer = 0;  //The Width of the choosen Window
  h: Integer = 0;  //The Height of the choosen Window

  k: Integer = 0;  //The COunter Variable used for keeping Track of the NoResize / NoMovement Arrays

  A: Array [0..9] of Hwnd;  //Array of Handles for wich NoResize / NoMovement should be applied
  B: Array [0..9] of TRect;  //Array of TRect for applying NoResize / NoMovement
  C: Array [0..9] of Boolean;  //Array of Boolean wich states if NoResize should be applied
  D: Array [0..9] of Boolean;  //Array of Boolean wich states if NoMovement should be applied

  AllowDrag: Boolean = False;  //Boolean for allowing Drag in free movement Area
  OpenChilds: Integer = 0;  //Amount of Open Child Windows

  Settings: TIniFile;  //Settings ini File

  const License = 'WinEdit Dx is licensed under the' + LineEnding +
                  'GNU General Public License v3.0.' + LineEnding +
                  'You should have received a copy of the ' + LineEnding +
                  'GNU General Public License' + LineEnding +
                  'along with this program.' + LineEnding +
                  'If not, see https://www.gnu.org/licenses/';  //The String used for Displaying the License Information

  const Changelog = 'Version 1.0.0:' + LineEnding +
                    ' * Initial Release.' + LineEnding +
                    'Version 1.0.1:' + LineEnding +
                    ' * Free Movement Mode Multi Monitor Setup Fix.' + LineEnding +
                    'Version 1.0.2:' + LineEnding +
                    ' * Added Information to Executable Manifest.' + LineEnding +
                    'Version 1.0.3:' + LineEnding +
                    ' * Added Feature to save Settings.' + LineEnding +
                    ' * Added Searching Feature for the Window List.' + LineEnding +
                    ' * Added CSV export of the Window List.' + LineEnding +
                    ' * Added failsafe for Window encapsulation.' + LineEnding +
                    ' * Added Copy Indicator for displayed Handle.' + LineEnding +
                    ' * Added Communication with Colors+.' + LineEnding +
                    ' * Added custom Handle select.' + LineEnding +
                    ' * Added Handle reload with indicator.' + LineEnding +
                    ' * Improved Scrolling with the Window List.' + LineEnding +
                    ' * Rewritten Information Section to be more usable.' + LineEnding +
                    ' * Minor visual fixes.' + LineEnding +
                    'Version 1.0.4:' + LineEnding +
                    ' * Added Support for listing Child Objects.' + LineEnding +
                    ' * Code cleanup.' + LineEnding +
                    'Version 1.0.5:' + LineEnding +    
                    ' * Added Class info to listing Child Objects.' + LineEnding +
                    ' * Greatly improved Listing of Child Objects.'; //The String used for Displaying the latest Changelog

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CustomLabelMouseEnter(Sender: TObject);  //Custom Procedure to underline any Label OnMouseEnter
var
  tempLabel: TLabel = nil;  //Temporary Label
begin

  tempLabel := TLabel(Sender);  //Get Label
  tempLabel.Font.Style := [fsUnderline];  //Set Style

end;

procedure TForm1.CustomLabelMouseLeave(Sender: TObject);  //Custom Procedure to remove underline from any Label OnMouseLeave
var
  tempLabel: TLabel = nil;  //Temporary Label
begin

  tempLabel := TLabel(Sender);  //Get Label
  tempLabel.Font.Style := [];  //Unset Style

end;

function TForm1.GetFullWidth: Integer;  //Get combined Screen Width
var
  i: Integer = 0;  //Temporary Counter Variable
begin

  Result := 0;  //Initialize Result

  for i := 0 to Screen.MonitorCount - 1 do begin  //Go through all Monitors

      Result := Result + Screen.Monitors[i].Width;  //Add up Widths

  end;

end;

function TForm1.GetFullHeight: Integer;  //Get combined Screen Height
var
  i: Integer = 0;  //Temporary Counter Variable
begin

  Result := 0;  //Initialize Result

  for i := 0 to Screen.MonitorCount -1 do begin  //Go through Monitors to get the one with the greatest height

      if Screen.Monitors[i].Height > Result then begin  //Check if height > than current Result

        Result := Screen.Monitors[i].Height;  //Set Result

      end;

  end;

end;

procedure TForm1.InitializeDisplayAffinity;
var
  lib: HINST;  //Library
begin

  lib := LoadLibrary('user32.dll');  //Load Library File

  if lib <> 0 then begin  //Error Check

    SetWindowDisplayAffinity := TSetWindowDisplayAffinity(GetProcAddress(lib,'SetWindowDisplayAffinity'));   //Import Function
    if NOT Assigned(SetWindowDisplayAffinity) then Raise Exception.Create('The Function SetWindowDisplayAffinity could not be found.');  //Error Handling

    GetWindowDisplayAffinity := TGetWindowDisplayAffinity(GetProcAddress(lib,'GetWindowDisplayAffinity'));   //Import Function
    if NOT Assigned(GetWindowDisplayAffinity) then Raise Exception.Create('The Function GetWindowDisplayAffinity could not be found.');  //Error Handling

    GetLayeredWindowAttributes := TGetLayeredWindowAttributes(GetProcAddress(lib,'GetLayeredWindowAttributes'));   //Import Function
    if NOT Assigned(GetLayeredWindowAttributes) then Raise Exception.Create('The Function GetLayeredWindowAttributes could not be found.');  //Error Handling

  end;

end;

procedure TForm1.UpdateWindow;  //Procedure to Update the Position and Size of the choosen Window according to the 4 SpinEdit fields
begin

  if (TabSheet1.Enabled = True) then begin  //Check that prevents glitches during the Window selection as the SpinEdits change during that

    x := SpinEdit1.Value;  //X Position
    y := SpinEdit2.Value;  //Y Position
    w := SpinEdit3.Value;  //Width
    h := SpinEdit4.Value;  //Height

    SetWindowPos(MasterHandle, 0, x, y, w, h, SWP_NOACTIVATE or SWP_NOZORDER);  //Windows API call to set the Window Position "SWP_NOACTIVATE" prevents the Window from updating

  end;

end;

procedure TForm1.UpdateDisplay;  //Procedrue to update the displayed Values after choosing a Window in the GUI
var
  l: Integer = 0; //Temporary Counter Variable Prevention Logic
  found: Boolean = False; //Temporary Variable for Prevention Logic
  DPA: Integer = 0;  //Temporary Variable for getting the current DisplayAffinity value of the choosen Window
  Alpha: Byte = 255;  //Temporary Variable to Read the initial Transparency Value of the choosen Window
  Flag: Integer = 0;  //Temporary Dummy Variable
  TrColor: Integer = 0;  //Temporary Dummy Variable
begin

  TabSheet1.Enabled := False; //Prevents the glitch mentioned before

  GetWindowRect(MasterHandle, MasterRect);  //Windows API call to get the TRect Structure from our Handle

  SpinEdit1.Value := MasterRect.Left;  //X Position
  SpinEdit2.Value := MasterRect.Top;  //Y Position
  SpinEdit3.Value := MasterRect.Width;  //Width
  SpinEdit4.Value := MasterRect.Height;  //Height

  CheckBox2.Checked := NOT IsWindowVisible(MasterHandle);  //Get Visibility Status of choosen Window as Boolean
  CheckBox3.Checked := IsWindowEnabled(MasterHandle);  //Get Enabled Status of choosen Window as Boolean
  CheckBox4.Checked := ((GetWindowLongPtr(MasterHandle, GWL_EXSTYLE) and WS_EX_TOPMOST) = WS_EX_TOPMOST);  //Get Topmost Status of choosen Window as Boolean
  CheckBox5.Checked := ((GetWindowLongPtr(MasterHandle, GWL_EXSTYLE) and $00080020) = $00080020);  //Check if the Window is Click-through
  CheckBox8.Checked := ((GetWindowLongPtr(MasterHandle, GWL_EXSTYLE) and WS_EX_NOACTIVATE) = WS_EX_NOACTIVATE);  //Get No Activate Status of choosen Window as Boolean
  CheckBox9.Checked := ((GetWindowLongPtr(MasterHandle, GWL_STYLE) and WS_MINIMIZEBOX) = WS_MINIMIZEBOX);  //Get Minimize Icon Status of choosen Window as Boolean
  CheckBox10.Checked := ((GetWindowLongPtr(MasterHandle, GWL_STYLE) and WS_MAXIMIZEBOX) = WS_MAXIMIZEBOX);  //Get Maximize Icon Status of choosen Window as Boolean
  CheckBox11.Checked := ((GetWindowLongPtr(MasterHandle, GWL_STYLE) and WS_SYSMENU) = WS_SYSMENU);  //Get Close Icon Status of choosen Window as Boolean
  CheckBox12.Checked := ((GetWindowLongPtr(MasterHandle, GWL_STYLE) and WS_CAPTION) = WS_CAPTION);  //Get Titlebar Status of choosen Window as Boolean

  if ((GetWindowLongPtr(MasterHandle, GWL_EXSTYLE) and WS_EX_LAYERED) = WS_EX_LAYERED) then begin  //Check if Transparency could even be applied to the choosen Window (Without htis check the TrackBar would display wrongly 255)

    GetLayeredWindowAttributes(MasterHandle, TrColor, Alpha, Flag);  //Get current Transparency value through imported Function

  end;

    TrackBar1.Position := Alpha;  //Update Trackbar
    Label5.Caption := IntToStr(255 - TrackBar1.Position);  //Update Label

  if CheckBox16.Checked then begin  //Check if Experimental Feature is enabled

    GetWindowDisplayAffinity(MasterHandle, DPA);  //Getting DisplayAffinity through imported function

    if DPA = 1 then begin  //WDA_MONITOR
      RadioButton5.Checked := True;
    end
    else if DPA = 17 then begin  //WDA_EXCLUDEFROMCAPTURE
      RadioButton6.Checked := True;
    end
    else begin  //WDA_NONE or invalid
      RadioButton4.Checked := True;
    end;

  end;

  for l := 0 to 9 do begin  //Iterate through Prevention Array

    if A[l] = MasterHandle then begin  //Display Checkboxe Checks if Prevention was enabled on Handle

      CheckBox14.Checked := C[l];  //No Resizing Boolean
      CheckBox15.Checked := D[l];  //No Movement Boolean
      found := True;  //Found Boolean to prevent unchecking Cheboxes

    end;

  end;

  if found = False then begin  //Uncheck Checkboxes if nothing was found
     
      CheckBox14.Checked := False;  //No Resizing Boolean
      CheckBox15.Checked := False;  //No Movement Boolean
  end;

  Edit1.Text := MasterTitle;  //Display choosen Window Title

  if IsZoomed(MasterHandle) then begin  //Check if Window is maximized
    RadioButton1.Checked := True;  //Apply Changes to Radio Button
  end
  else if IsIconic(MasterHandle) then begin  //Check if Window is minimized
    RadioButton2.Checked := True;  //Apply Changes to Radio Button
  end
  else begin  //Check if Window is neither maximized or minimized
    RadioButton3.Checked := True;  //Apply Changes to Radio Button
  end;

  Label1.Caption := IntToStr(MasterHandle);  //Just show the Value of the choosen Window Handle in the upper right of the GUI

  TabSheet1.Enabled := True; //Prevents the glitch mentioned before
end;

procedure TForm1.CaptureWindow(window: HWND; Image: TImage);  //Experimental Window Preview procedure !!!CAN CAUSE APPLICATION TO FREEZE!!!
var

  SDC: windows.HDC;  //Device Context of the choosen Window

begin

  try
    Image.Picture.Assign(nil);  //Reset content of the preview Window

    if IsWindow(window) then begin  //Check if choosen Handle belongs to real Window

      SDC := GetDC(window);  //Use Device Context of the given Handle

      try

        Image.Picture.PNG.LoadFromDevice(SDC);  //Load Image as PNG from Device Contect (As PNGs should be the export format used later)

      finally

        ReleaseDC(window, SDC);  //Free Device Context

      end;

    end;

  except

  end;

end;

procedure TForm1.UpdateWindowTable;  //Initial Procedure to create and Display the List of Handles and Window Titles in the String Grid
var

  NHandle: hWnd;  //Variable to temporary hold the Window Handles
  TitleText: array[0..260] of Char;  //Array to be filled with the Window Title
  i: Integer = 0;  //Counter Variable

begin
  TitleText := '';  //Initialize TitleText Variable

  StringGrid1.Clear;  //Reset the String Grid (As the Procedure could be called to update the List)
  StringGrid1.ColCount := 2;  //Expand Col Count temporaryly to 2
  NHandle := GetWindow(Application.Mainform.Handle, GW_HWNDFIRST);  //Setup initial Handle to start iterating from

  while (NHandle <> 0) do
  begin
       NHandle := GetWindow(NHandle, GW_HWNDNEXT);  //Get next Handle

       FillChar(TitleText, SizeOf(TitleText), #0);  //Reset the Array

       GetWindowText(NHandle, PChar(TitleText), Length(TitleText));  //Get Text of current Handle

       StringGrid1.RowCount := i + 2;  //Extend RowCount of the StringGrid to fit all entries (+2 as i starts with 0 and one Row is reserved for the Descriptions)

       if i = 0 then begin  //Only Init the StringGrid once
         StringGrid1.Cells[0,0] := 'Handle';  //Add Description
         StringGrid1.Cells[1,0] := 'Title';  //Add Description
         StringGrid1.ColWidths[1] := 415;  //Extend Column to be better readable
       end;

       StringGrid1.Cells[0,i + 1] := IntToStr(NHandle);  //Add Entry for the Handle
       StringGrid1.Cells[1,i + 1] := TitleText;  //Add Entry for the Title

       i += 1;  //Counter +1
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);  //Update the StringGrid (Also used by TForm1 "OnActivate" as Initial Call)
begin
  UpdateWindowTable;   //Initial Loading of Window Handles and Titles in StringGrid
end;

procedure TForm1.Button10Click(Sender: TObject);  //Set Extended Window Style Manual
begin
  Windows.SetWindowLongPtr(MasterHandle, GWL_STYLE, StrToInt('$' + Edit3.Text));  //Use value in Edit Field for new Extended Window Style
end;

procedure TForm1.Button11Click(Sender: TObject);  //Add Movement or Resizing Prevention
var
  j: Integer = 0;  //Temporary Counter Variable
  tempRect: TRect;  //Temporary TRect Variable
  tempError: Boolean = False;  //Temporary Boolean Variable
begin

  tempRect := Rect(0,0,0,0);

  Timer1.Enabled := True;  //Only Run Timer when applying Preventions

  GetWindowRect(MasterHandle, tempRect);  //Fill temporary TRect of current Window for Saving

  for j := 0 to 9 do begin               //Logic to check if a prevention is already in place (To prevent running the same thing twice and to update the prevention)

    if A[j] = MasterHandle then begin    //Check Handle

      B[j] := tempRect;                  //Update TRect
      C[j] := CheckBox14.Checked;        //Update NoResize
      D[j] := CheckBox15.Checked;        //Update NoMovement

      tempError := True;                 //Raise Error to prevent Creation of another Entry

    end;

  end;

  if NOT (tempError = True) then begin   //Check for Error

    A[k] := MasterHandle;                //Insert Handle
    B[k] := tempRect;                    //Insert TRect
    C[k] := CheckBox14.Checked;          //Insert NoResize
    D[k] := CheckBox15.Checked;          //Insert NoMovement

    k += 1;                              //Increase Counter to move to next Slot

    if k >= 10 then begin                //Stop after 10 Slot and then override the first one (Can be configured highter but decreases Performance (I think))

      k := 0;                            //Reset Slot to 0

    end;

  end;

end;

procedure TForm1.CustomFormDestroy(Sender: TObject; var CloseAction: TCloseAction);  //Event on Child Form Closure
begin

  Dec(OpenChilds);  //Decrease the amount of open Child Windows

end;

procedure TForm1.Button12Click(Sender: TObject);  //Dynamic Window Capsule Form Creation
var
  CapForm: TForm;  //Capsule Form
begin
  ShowMessage('Warning! Please close the encapsulated Application before the Capsule Window to prevent missing Windows.');  //Warning Message

  CapForm := TForm.Create(Form1);  //Dynamic Form Creation to allow for infinite Capsule Windows
  CapForm.Visible := True;  //Show new Form
  CapForm.BoundsRect := MasterRect;  //Resize to Target Window Size and move to Position
  CapForm.Caption := MasterTitle + ' Capsule';  //Apend Capsule to the new Window Title to better differentiate in the StringGrid
  CapForm.BorderIcons := [biSystemMenu];  //Remove the Minimize and Maximize Buttons as they could cause display issues (Can be reenabled through WinEdit Dx Controls)
  CapForm.OnClose := @CustomFormDestroy;

  if Windows.SetParent(MasterHandle, CapForm.Handle) = 0 then begin  //Set Capsule Form as new Parent for the Target Window

    CapForm.Free;  //Destroy the Form as encapsulating was unsuccessful
    MessageDlg('Encapsulation Failed!' + LineEnding + 'The Window may not be compatible.', mtError, [mbOK], 0);  //Display Error Message

  end
  else begin

    Inc(OpenChilds);  //Increase Amount of Open Child Forms

  end;

  SetWindowPos(MasterHandle, 0, 0, 0, 0, 0, SWP_NOACTIVATE or SWP_NOSIZE or SWP_NOZORDER);  //Move Target Window to better fit inside the Capsule

end;

procedure TForm1.Button13Click(Sender: TObject);  //Custom Window Insertion Procedure
begin

  if NOT (Edit4.Text = '') then begin  //Check for empty Edit Field

    Windows.SetParent(MasterHandle, StrToInt(Edit4.Text));  //Set new Parent Window

  end
  else begin

    ShowMessage('Please input a new parent Handle.');  //Error Message to Display if the Field was leaved empty

  end;

end;

procedure TForm1.Button14Click(Sender: TObject);  //Detailed Window Flashing Mode
  var
  Flash: FLASHWINFO;  //FLASHWINFO Structure (https://learn.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-flashwinfo)
  PFlash: Pointer;  //Pointer to this Structure as this is needed to be called
begin

  if NOT (ComboBox1.ItemIndex = -1) then begin  //Make sure a mode is selected

    FillChar(Flash, SizeOf(Flash), #0);  //Initialize Variable
    Flash.cbSize := SizeOf(Flash);  //Set Size
    Flash.hWnd := MasterHandle;  //Assign Handle
    Flash.uCount := SpinEdit5.Value;  //Number of Flashes
    Flash.dwTimeOut := SpinEdit6.Value;  //Blink Rate
    Flash.dwFlags := StrToInt('$0000000' + ComboBox1.Text[1]);  //Dodgy Logic to get the dwFlags while still being able to read their names in the ComboBox
    PFlash := @Flash;  //Pointer
    FlashWindowEx(PFlash);  //Apply Flashing

  end
  else begin

    ShowMessage('Error. You have to select a mode first.');  //Error Message

  end;
end;

procedure TForm1.Button15Click(Sender: TObject);  //Create an Error Message onto the choosen Window
begin
  Windows.MessageBox(MasterHandle, PChar(Edit6.Text), PChar(Edit5.Text), $00053010);  //Create the MessageBox
end;

procedure TForm1.Button16Click(Sender: TObject);  //Export Window List to CSV File
begin

  if SaveDialog2.Execute then StringGrid1.SaveToCSVFile(SaveDialog2.FileName);  //Save StringGrid to CSV File after choosing Location

end;

procedure TForm1.Button17Click(Sender: TObject);  //Set custom Handle
begin

  if NOT (Edit8.Text = '') then begin  //Check for not empty Edit Field

    MasterHandle := StrToInt(Edit8.Text);  //Set Master Handle
    UpdateDisplay;  //Update GUI values

  end
  else begin

    ShowMessage('Please input a value for the Handle on the right.');  //Display Error Message

  end;

end;

function EnumChildWindowsProc(Wnd: HWND; lParam: LPARAM): BOOL; stdcall;  //List all Child Objects of the given Handle (Also works with Handle 0)
var
  ClassName: array[0..255] of Char;  //Array to be filled with the Class Name of the Object
  TitleText: array[0..260] of Char;  //Array to be filled with the Window Title
begin

  ClassName := '';  //Initialize ClassName Variable
  TitleText := '';  //Initialize TitleText Variable
  FillChar(TitleText, SizeOf(TitleText), #0);  //Reset the Array

  GetClassName(Wnd, ClassName, Length(ClassName));  //Get the Object Class Name

  GetWindowText(Wnd, PChar(TitleText), Length(TitleText));  //Get Text of current Handle

  Form1.StringGrid1.RowCount := Form1.StringGrid1.RowCount + 1;  //Expand StringGrid

  Form1.StringGrid1.Cells[0, Form1.StringGrid1.RowCount -1] := IntToStr(Wnd);  //Write Handle
  Form1.StringGrid1.Cells[1, Form1.StringGrid1.RowCount -1] := TitleText;  //Write Title
  Form1.StringGrid1.Cells[2, Form1.StringGrid1.RowCount -1] := ClassName;  //Write Class

  Result := True;  //Continue
end;

procedure TForm1.Button19Click(Sender: TObject);
var

  i: Integer = 0;  //Counter Variable

begin

  StringGrid1.Clear;  //Reset the String Grid (As the Procedure could be called to update the List)
  StringGrid1.RowCount := 1;  //Set initial Row Count
  StringGrid1.ColCount := 3;  //Expand Col Count temporaryly to 3
  StringGrid1.Cells[0,0] := 'Handle';  //Add Description
  StringGrid1.Cells[1,0] := 'Title';  //Add Description
  StringGrid1.Cells[2,0] := 'Type';  //Add Description
  StringGrid1.ColWidths[1] := 300;  //Extend Column to be better readable
  StringGrid1.ColWidths[2] := 115;  //Extend Column to be better readable

  EnumChildWindows(MasterHandle, @EnumChildWindowsProc, LPARAM(nil));  //Call the Enumeration Function

end;

procedure TForm1.Button2Click(Sender: TObject);  //Experimental Feature to Export the Preview Image in full size and detail
begin
  SaveDialog1.FileName := ExtractFileName(CleanAndExpandFilename(MasterTitle + '.png'));  //Set Filename to Window Title
  if SaveDialog1.Execute then begin  //Check for Filename and PATH to save the Image
    Image1.Picture.PNG.SaveToFile(SaveDialog1.FileName);  //Save the Image to the given Location and File
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);  //Changelog Button
begin
  ShowMessage(Changelog);  //Show the Changelog String
end;

procedure TForm1.Button4Click(Sender: TObject);  //License Button
begin
  ShowMessage(License);  //Show the License String
end;

procedure TForm1.Button5Click(Sender: TObject);  //Close Window Button
begin
  if PostMessageA(MasterHandle, WM_CLOSE, 0, 0) then begin  //Sending WM_CLOSE Message to choosen Window (As CloseWindow() does only minimize the target)
    ShowMessage('The close Message was send successfully.' + LineEnding + 'Please refresh the Window List to see changes.');  //Message if WM_CLOSE was received (Does not imply that the Window was closed successfully)
  end
  else begin
    ShowMessage('An Error occured while sending the close Message.' + LineEnding + 'Maybe elevated Rights are required or the Window is already closed.');  //Error Message is WM_CLOSE was not received
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);  //Logic to Apply Color Transparency over a given Window
begin
  if ColorDialog1.Execute then begin  //Execute the ColorDialog to choose target color and only continue after choosing a color
    SetWindowLong(MasterHandle, GWL_EXSTYLE, GetWindowLongPtr(MasterHandle, GWL_EXSTYLE) or WS_EX_LAYERED);  //Make choosen Window compatible with Transparency Mode
    SetLayeredWindowAttributes(MasterHandle, ColorDialog1.Color, TrackBar1.Position, LWA_COLORKEY);  //Set Window Transparency
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);  //Bring Window to Top
begin
  Windows.BringWindowToTop(MasterHandle);  //Call Windows API to bring Window to Front
end;

procedure TForm1.Button8Click(Sender: TObject);  //Set Window Style Manual
begin
  Windows.SetWindowLongPtr(MasterHandle, GWL_STYLE, StrToInt('$' + Edit2.Text));  //Use value in Edit Field for new Window Style
end;

procedure TForm1.Button9Click(Sender: TObject);  //Send Flash Signal to choosen Window
begin
  FlashWindow(MasterHandle, True);  //Send Flash Signal through Windows API
end;

procedure TForm1.CheckBox12Change(Sender: TObject);  //Add or Remove the Titlebar from the given Window
begin

  if (TabSheet1.Enabled = True) then begin

    if CheckBox12.Checked then begin

      SetWindowLongPtr(MasterHandle, GWL_STYLE, GetWindowLongPtr(MasterHandle, GWL_STYLE) OR WS_CAPTION);  //Add the Titlebar

    end
    else begin

      SetWindowLongPtr(MasterHandle, GWL_STYLE, GetWindowLongPtr(MasterHandle, GWL_STYLE) AND NOT WS_CAPTION);  //Remove the Titlebar

    end;

    SetWindowPos(MasterHandle, 0, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER or SWP_FRAMECHANGED or SWP_NOACTIVATE);  //Update the Window to aplly the Change

  end;
end;

procedure TForm1.CheckBox13Change(Sender: TObject);  //Enable the Experimental Manual Style Set Feature
begin
  GroupBox3.Enabled := CheckBox13.Checked;  //Enable the GroupBox if the Feature is Enabled
end;

procedure TForm1.CheckBox16Change(Sender: TObject);  //Enable the Experimental WDA Display and Setting Feature
begin
  RadioGroup2.Enabled := CheckBox16.Checked;  //Enable the GroupBox if the Feature is Enabled
end;

procedure TForm1.CheckBox17Change(Sender: TObject);  //Self Setting for Monitoring of current active Window Handle in WinEdit Dx Titlebar
begin
  Timer2.Enabled := CheckBox17.Checked;  //Switch Timer On / Off
  if CheckBox17.Checked = False then begin  //Reset Title after switching monitoring off
    Form1.Caption := 'WinEdit Dx';
  end;
end;

procedure TForm1.CheckBox19Change(Sender: TObject);  //Auto Save/Load Settings Checkbox Change
begin

  if NOT CheckBox19.Checked then begin  //Check for disabled Saving Settings

    if FileExists(ExtractFilePath(Application.ExeName) + 'WinEdit Dx.ini') then begin  //Check if Settings where allready created

      if MessageDlg('Unsetting this Option will delete the Settings File.' + LineEnding + 'Do you want to continue?', mtWarning, [mbYes, mbNo], 0) = mrYes then begin  //Ask if user wnats to delete current settings

        DeleteFile(ExtractFilePath(Application.ExeName) + 'WinEdit Dx.ini');  //Delete the Settings File

      end
      else begin

        CheckBox19.Checked := True;  //Check Checkbox again

      end;

    end;

  end;

end;

procedure TForm1.CheckBox1Change(Sender: TObject);  //Enable the Experimental Window Preview Image Feature
begin
  GroupBox1.Enabled := CheckBox1.Checked;  //Enable the GroupBox if the Feature is Enabled
end;

procedure TForm1.CheckBox2Change(Sender: TObject);  //Procedure to Hide / Unhide the choosen Window
begin

  if (TabSheet1.Enabled = True) then begin

    if CheckBox2.Checked then begin

      ShowWindow(MasterHandle, SW_HIDE);  //Hide visible Window through Windows API call

    end
    else begin

      ShowWindow(MasterHandle, SW_SHOW);  //Show Hidden Window through Windows API call

    end;

  end;

end;

procedure TForm1.CheckBox3Change(Sender: TObject);  //Procedure to Enable / Disable the choosen Window
begin

  if (TabSheet1.Enabled = True) then begin

    if CheckBox3.Checked then begin

      SetWindowLongPtr(MasterHandle, GWL_STYLE, GetWindowLongPtr(MasterHandle, GWL_STYLE) AND NOT WS_DISABLED);  //Enable Window

    end
    else begin

      SetWindowLongPtr(MasterHandle, GWL_STYLE, GetWindowLongPtr(MasterHandle, GWL_STYLE) OR WS_DISABLED);  //Disable Window

    end;

    SetWindowPos(MasterHandle, 0, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER or SWP_FRAMECHANGED or SWP_NOACTIVATE);  //Update the Window to aplly the Change

  end;

end;

procedure TForm1.CheckBox4Change(Sender: TObject);  //Procedure to set the Topmost state on the choosen Window
begin

  if (TabSheet1.Enabled = True) then begin

    if CheckBox4.Checked then begin

      SetWindowPos(MasterHandle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE or SWP_NOACTIVATE);  //Set Window Topmost State

    end
    else begin

      SetWindowPos(MasterHandle, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE or SWP_NOACTIVATE);  //Remove Window Topmost State

    end;

  end;

end;

procedure TForm1.CheckBox5Change(Sender: TObject);  //Procedure to set the Click-through state on the choosen Window
begin

  if (TabSheet1.Enabled = True) then begin

    if CheckBox5.Checked then begin

      SetWindowLongPtr(MasterHandle, GWL_EXSTYLE, GetWindowLongPtr(MasterHandle, GWL_EXSTYLE) OR $00080020);  //Set Window Click-through State

    end
    else begin

      SetWindowLongPtr(MasterHandle, GWL_EXSTYLE, GetWindowLongPtr(MasterHandle, GWL_EXSTYLE) AND NOT $00080020);  //Remove Window Click-through State

    end;

    SetWindowPos(MasterHandle, 0, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER or SWP_FRAMECHANGED or SWP_NOACTIVATE);  //Update the Window to aplly the Change

  end;

end;

procedure TForm1.CheckBox6Change(Sender: TObject);  //Self Settings to switch off Topmost mode
begin
  if CheckBox6.Checked then begin
    Form1.FormStyle := fsNormal;  //FormStyle Normal -> Application not Topmost
  end
  else begin
    Form1.FormStyle := fsSystemStayOnTop;  //FormStyle SystemStayOnTop -> Application Topmost
  end;
end;

procedure TForm1.CheckBox7Change(Sender: TObject);  //Selft Settings to switch off TrayIcon
begin
  if CheckBox7.Checked then begin
    TrayIcon1.Visible := False;  //Hide TrayIcon
  end
  else begin
    TrayIcon1.Visible := True;  //Show TrayIcon
  end;
end;

procedure TForm1.CheckBox8Change(Sender: TObject);  //Change No Activate Mode of the given Window
begin

  if (TabSheet1.Enabled = True) then begin

    if CheckBox8.Checked then begin

      SetWindowLongPtr(MasterHandle, GWL_EXSTYLE, GetWindowLongPtr(MasterHandle, GWL_EXSTYLE) OR WS_EX_NOACTIVATE);  //Set Window No Activate State

    end
    else begin

      SetWindowLongPtr(MasterHandle, GWL_EXSTYLE, GetWindowLongPtr(MasterHandle, GWL_EXSTYLE) AND NOT WS_EX_NOACTIVATE);  //Remove Window No Activate State

    end;

    SetWindowPos(MasterHandle, 0, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER or SWP_FRAMECHANGED or SWP_NOACTIVATE);  //Update the Window to aplly the Change

  end;
end;

procedure TForm1.CheckBox9Change(Sender: TObject);  //Logic to control the Titlebar Icons of the given Window (Gets called by the three Controls CheckBoxes)
begin
  
  if (TabSheet1.Enabled = True) then begin

    if CheckBox9.Checked then begin

      SetWindowLongPtr(MasterHandle, GWL_STYLE, GetWindowLongPtr(MasterHandle, GWL_STYLE) OR WS_MINIMIZEBOX);  //Set Window No Activate State

    end
    else begin

      SetWindowLongPtr(MasterHandle, GWL_STYLE, GetWindowLongPtr(MasterHandle, GWL_STYLE) AND NOT WS_MINIMIZEBOX);  //Remove Window No Activate State

    end;

    if CheckBox10.Checked then begin

      SetWindowLongPtr(MasterHandle, GWL_STYLE, GetWindowLongPtr(MasterHandle, GWL_STYLE) OR WS_MAXIMIZEBOX);  //Set Window No Activate State

    end
    else begin

      SetWindowLongPtr(MasterHandle, GWL_STYLE, GetWindowLongPtr(MasterHandle, GWL_STYLE) AND NOT WS_MAXIMIZEBOX);  //Remove Window No Activate State

    end;

    if CheckBox11.Checked then begin

      SetWindowLongPtr(MasterHandle, GWL_STYLE, GetWindowLongPtr(MasterHandle, GWL_STYLE) OR WS_SYSMENU);  //Set Window No Activate State

    end
    else begin

      SetWindowLongPtr(MasterHandle, GWL_STYLE, GetWindowLongPtr(MasterHandle, GWL_STYLE) AND NOT WS_SYSMENU);  //Remove Window No Activate State

    end;

    SetWindowPos(MasterHandle, 0, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE or SWP_NOZORDER or SWP_FRAMECHANGED or SWP_NOACTIVATE);  //Update the Window to aplly the Change

  end;
end;

procedure TForm1.Edit1Change(Sender: TObject);  //Procedure to CHange Window Title while Typing in the Edit Filed
begin

  if (TabSheet1.Enabled = True) then begin

    SetWindowText(MasterHandle, PChar(Edit1.Text));  //Windows API call to change Window Title

  end;

end;

procedure TForm1.Edit7Change(Sender: TObject);  //Search Window Title Edit Field Change
var
  i: Integer = 0;  //Temp counter Variable
  j: Integer = 0;  //Temp counter Variable
begin

  for i := 0 to StringGrid1.RowCount - 1 do  //Outer Loop

    for j := 0 to StringGrid1.ColCount - 1 do  //Inner Loop

      if Pos(UpperCase(Edit7.Text), UpperCase(StringGrid1.Cells[j, i])) > 0 then begin  //Check for String Match between Searched Title and Cell content

        StringGrid1.Row := i;  //Select Row
        StringGrid1.TopRow := Max(0, i - (StringGrid1.VisibleRowCount div 2));  //Scroll

        Exit;  //Leave after first match

      end;

end;

procedure TForm1.FormActivate(Sender: TObject); //Form activation Event
begin
  UpdateWindowTable;  //Update the Window Table
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);  //Check for open Child Windows before close and cleanup TrayIcon
begin

  if OpenChilds = 1 then begin  //Check for open Child Windows

    if MessageDlg('There is still ' + IntToStr(OpenChilds) + ' encapsulated Window open.' + LineEnding + 'Do you really want to close the Application?', mtWarning, [mbYes, mbNo], 0) = mrYes then begin

      TrayIcon1.Visible := False;  //Hide TrayIcon before closing the Application to prevent Leftovers
      CanClose := True;  //Allow Closing

    end
    else begin

      CanClose := False;  //Prevent Closing

    end;

  end
  else if OpenChilds > 1 then begin  //Check for open Child Windows

    if MessageDlg('There are still ' + IntToStr(OpenChilds) + ' encapsulated Windows open.' + LineEnding + 'Do you really want to close the Application?', mtWarning, [mbYes, mbNo], 0) = mrYes then begin

      TrayIcon1.Visible := False;  //Hide TrayIcon before closing the Application to prevent Leftovers
      CanClose := True;  //Allow Closing

    end
    else begin

      CanClose := False;  //Prevent Closing

    end;

  end
  else begin

    TrayIcon1.Visible := False;  //Hide TrayIcon before closing the Application to prevent Leftovers
    CanClose := True;  //Allow Closing

  end;

  if CanClose = True then begin  //Check if Close will actually happen

    if CheckBox19.Checked then begin

      Settings := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'WinEdit Dx.ini');  //Create Settings File

      try

        Settings.WriteString('Settings', 'Screenshot Preview', BoolToStr(CheckBox1.Checked));
        Settings.WriteString('Settings', 'Manual Style Set', BoolToStr(CheckBox13.Checked));
        Settings.WriteString('Settings', 'Display Affinity', BoolToStr(CheckBox16.Checked));
        Settings.WriteString('Settings', 'Disable Topmost Status', BoolToStr(CheckBox6.Checked));
        Settings.WriteString('Settings', 'Disable Tray Icon', BoolToStr(CheckBox7.Checked));
        Settings.WriteString('Settings', 'Monitor Active Handle in Titlebar', BoolToStr(CheckBox17.Checked));
        Settings.WriteString('Settings', 'Send Handle to Colors+ (v1.0.2+)', BoolToStr(CheckBox18.Checked));
        Settings.WriteString('Settings', 'Auto Save/Load Settings', BoolToStr(CheckBox19.Checked));

      finally

        Settings.Free;  //Free Settings File

      end;

    end;

  end;

end;

procedure TForm1.FormCreate(Sender: TObject);  //Form Creation Event
begin

  TrayIcon1.Show;  //Show the TrayIcon
  TabSheet1.Enabled := False;  //Disable TabSheet before the user selects a Window
  TabSheet2.Enabled := False;  //Disable TabSheet before the user selects a Window
  TabSheet3.Enabled := False;  //Disable TabSheet before the user selects a Window

  InitializeDisplayAffinity;  //Call Initializing of imported DisplayAffinity Function

  if FileExists(ExtractFilePath(Application.ExeName) + 'WinEdit Dx.ini') then begin  //Check if Settings File is Present

    Settings := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'WinEdit Dx.ini');

    try

      CheckBox1.Checked := StrToBool(Settings.ReadString('Settings', 'Screenshot Preview', '0'));
      CheckBox13.Checked := StrToBool(Settings.ReadString('Settings', 'Manual Style Set', '0'));
      CheckBox16.Checked := StrToBool(Settings.ReadString('Settings', 'Display Affinity', '0'));
      CheckBox6.Checked := StrToBool(Settings.ReadString('Settings', 'Disable Topmost Status', '0'));
      CheckBox7.Checked := StrToBool(Settings.ReadString('Settings', 'Disable Tray Icon', '0'));
      CheckBox17.Checked := StrToBool(Settings.ReadString('Settings', 'Monitor Active Handle in Titlebar', '0'));
      CheckBox18.Checked := StrToBool(Settings.ReadString('Settings', 'Send Handle to Colors+ (v1.0.2+)', '0'));
      CheckBox19.Checked := StrToBool(Settings.ReadString('Settings', 'Auto Save/Load Settings', '-1'));

    finally

      Settings.Free //Free Settings File

    end;

  end;


end;

procedure TForm1.Image3Click(Sender: TObject);  //Github Icon Click
begin

  OpenUrl('https://github.com/EthernalStar/WinEdit-Dx');  //Visit Github Repo Page

end;

procedure TForm1.Image4Click(Sender: TObject);  //Codeberg Icon Click
begin

  OpenUrl('https://codeberg.org/EthernalStar/WinEdit-Dx');  //Visit Codeberg Repo Page

end;

procedure TForm1.Image5Click(Sender: TObject);  //Reload current Handle
begin

  if CheckBox1.Checked then begin  //Check for Enabled Experimental Feature
     CaptureWindow(MasterHandle, Image1);  //Try Window Capture
  end;

  if CheckBox13.Checked then begin  //Check for Enabled Experimental Feature
     Edit2.Text := IntToHex(Windows.GetWindowLongPtr(MasterHandle, GWL_STYLE));  //Set Experimantal Display for GWL_STYLE
     Edit3.Text := IntToHex(Windows.GetWindowLongPtr(MasterHandle, GWL_EXSTYLE));  //Set Experimantal Display for GWL_EXSTYLE
  end;

  UpdateDisplay;  //Update GUI values

  Label1.Font.Color := $000080FF; //Set Label Color to Orange
  Label1.Caption := 'Reload!';  //Display Message indicating a successful Reload
  Timer4.Enabled := True;  //Revert Changes with timer

end;

procedure TForm1.Label1Click(Sender: TObject);  //Clipboard Copy Logic
begin

  ClipBrd.Clipboard.AsText := Label1.Caption;  //Copy Handle Value to Clipboard
  Label1.Font.Color := $0000CE00; //Set Label Color to Green
  Label1.Caption := 'Copied!';  //Display Message indicating a successful Copy
  Timer4.Enabled := True;  //Revert Changes with timer

end;

procedure TForm1.Label3Click(Sender: TObject);  //Window Styles Help Link
begin
  OpenUrl('https://learn.microsoft.com/en-us/windows/win32/winmsg/window-styles');  //Web Information on official Microsoft Documentation of Window Styles
end;

procedure TForm1.Label4Click(Sender: TObject);  //Mail Label Click
begin

  OpenUrl('mailto:NZSoft@Protonmail.com');  //Open Email with mailto

end;

procedure TForm1.Label6Click(Sender: TObject);  //Extended Window Styles Help Link
begin

  OpenUrl('https://learn.microsoft.com/en-us/windows/win32/winmsg/extended-window-styles');  //Web Information on official Microsoft Documentation of Extended Window Styles

end;

procedure TForm1.Label9Click(Sender: TObject);  //FLASHWINFO Help Link
begin

  OpenUrl('https://learn.microsoft.com/en-us/windows/win32/api/winuser/ns-winuser-flashwinfo');  //Web Information on official Microsoft Documentation of FLASHWINFO Structure

end;

procedure TForm1.RadioButton1Change(Sender: TObject);  //Status Logic to switch between Minimized, Maximized and Normal Window States
begin

  if (TabSheet1.Enabled = True) then begin

    if RadioButton1.Checked then begin

      ShowWindow(MasterHandle, SW_MAXIMIZE);  //Maximize Window

    end

    else if RadioButton2.Checked then begin

      ShowWindow(MasterHandle, SW_MINIMIZE);  //Minimize Window

    end

    else if RadioButton3.Checked then begin

      ShowWindow(MasterHandle, SW_RESTORE);  //Normalize Window

    end;

  end;

end;

procedure TForm1.RadioButton4Change(Sender: TObject);  //Display Affinity Logic (Used by the 3 DisplayAffinity RadioButtons)
begin

  SetWindowDisplayAffinity(MasterHandle, $00000000);  //Reset to prevent a bug where the DisplayAffinity does not change after being set

  if RadioButton4.Checked then begin
    SetWindowDisplayAffinity(MasterHandle, $00000000);  //WDA_NONE
  end
  else if RadioButton5.Checked then begin
    SetWindowDisplayAffinity(MasterHandle, $00000001);  //WDA_MONITOR
  end
  else if RadioButton6.Checked then begin
    SetWindowDisplayAffinity(MasterHandle, $00000011);  //WDA_EXCLUDEFROMCAPTURE
  end;

end;

procedure TForm1.Shape2MouseDown(Sender: TObject; Button: TMouseButton;  //Switch free movement mode
  Shift: TShiftState; X, Y: Integer);
begin
  AllowDrag := NOT AllowDrag;  //Enable Draging for free movement mode
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);  //Procedure called if the Value in SpinEdit1 Change to Update the Window Values (Also called by the other SpinEdit "OnChange Events")
begin
  UpdateWindow;  //Call Update Procedure
end;

procedure TForm1.StringGrid1DblClick(Sender: TObject);  //Procedure to call if the user chooses a Window from the List by double Clicking on the Entry
begin

  if (StringGrid1.RowCount >= 2) AND (StringGrid1.Cells[0,StringGrid1.Row].Length > 0) then begin  //Only select the current Handle if there is something to select in the first column

    TabSheet1.Enabled := True;  //Enable TabSheet after the user selects a Window
    TabSheet2.Enabled := True;  //Enable TabSheet after the user selects a Window
    TabSheet3.Enabled := True;  //Enable TabSheet after the user selects a Window

    Image5.Enabled := True;  //Enable Reaload of current Handle

    MasterHandle := StrToInt(StringGrid1.Cells[0,StringGrid1.Row]);  //Update the value for the current MasterHandle
    MasterTitle := StringGrid1.Cells[1,StringGrid1.Row];  //Update the value for the current MasterTitle

    if MasterHandle = Application.MainForm.Handle then begin  //Check if selected Handle equals Application Handle
      ShowMessage('Warning! You have selected the Handle of WinEdit Dx itself.' + LineEnding + 'Please act with care.');  //Display Warning
    end;

    if CheckBox1.Checked then begin  //Check for Enabled Experimental Feature
      CaptureWindow(MasterHandle, Image1);  //Try Window Capture
    end;

    if CheckBox13.Checked then begin  //Check for Enabled Experimental Feature
      Edit2.Text := IntToHex(Windows.GetWindowLongPtr(MasterHandle, GWL_STYLE));
      Edit3.Text := IntToHex(Windows.GetWindowLongPtr(MasterHandle, GWL_EXSTYLE));
    end;

    UpdateDisplay;  //Update GUI values
  end
  else begin
    MessageDlg(Application.Title, 'No Handle was found!', mtError, [mbOK], 0);  //Error Message if Selection was invalid (Should theoreticaly not be needed
  end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);  //Prevention Timer Logic
var
  p: Integer = 0;  //Temporary Counter Variable
  tempRect: TRect;  //Temporary TRect Variable
begin

  tempRect := Rect(0,0,0,0);  //Initialize TRect Variable

  for p := 0 to 9 do begin  //Iterate through Arrays

    GetWindowRect(A[p], tempRect);  //Set new TRect to compare for Changes

    if C[p] = True then begin  //Only Continue if NoResize was set

      if NOT (B[p] = tempRect) then begin  //Check if TRect has changed from saved TRect

        SetWindowPos(A[p], 0, B[p].Left, B[p].Top, 0, 0, SWP_NOSIZE or SWP_NOZORDER or SWP_NOACTIVATE);  //Reset Positon to old Position

      end;

    end;

    if D[p] = True then begin  //Only Continue if NoMovement was set

      if NOT (B[p] = tempRect) then begin  //Check if TRect has changed from saved TRect

      SetWindowPos(A[p], 0, 0, 0, B[p].Width, B[p].Height, SWP_NOMOVE or SWP_NOZORDER or SWP_NOACTIVATE);  //Reset Size to old Size

      end;

    end;

  end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);  //Titlebar Monitoring of current active Window
begin
  Form1.Caption := 'WinEdit Dx | Active Handle: ' + IntToStr(GetForegroundWindow);  //Display the current Handle in the Titlebar
end;

procedure TForm1.Timer3Timer(Sender: TObject);  //Free movement mode Timer to allow for a smooth motion + also used for WinEdit Dx/Colors+ Communication
var
  X, Y: Integer;  //Temporary Position Variables
  Point: TPoint;  //Temporary Pointer Variable
begin

  if CheckBox18.Checked then LCLIntf.PostMessage(FindWindow(nil, 'Colors+'), LM_WINEDIT, MasterHandle, 0);  //Post MasterHandle to Colors+

  if AllowDrag = True then begin  //Check if Drag is allowed

    GetCursorPos(Point);  //Get Position of the Mouse Cursor
    X := Panel1.ScreenToClient(Point).X - Round(Shape2.Width / 2);  //Set X in Bounds of Panel1
    Y := Panel1.ScreenToClient(Point).Y - Round(Shape2.Height / 2); //Set Y in Bounds of Panel1

    Shape2.Left := X;  //Set Shape X Position
    Shape2.Top := Y;  //Set Shape Y Position
    SetWindowPos(MasterHandle, 0, Round((X / Panel1.Width) * GetFullWidth), Round((Y / Panel1.Height) * GetFullHeight), 0, 0, SWP_NOSIZE or SWP_NOZORDER or SWP_NOACTIVATE);  //Move choosen Window

  end;
end;

procedure TForm1.Timer4Timer(Sender: TObject);  //Label Copy Status Reset
begin

  Label1.Font.Color := clblack;  //Reset Label Color
  Label1.Caption := IntToStr(MasterHandle);  //Show Master Handle Value again
  Timer4.Enabled := False;  //Disable Timer

end;

procedure TForm1.TrackBar1Change(Sender: TObject);  //Logic to change Window Transparency while sliding the TrackBar
begin

  if (TabSheet1.Enabled = True) then begin  //Check for Page enabled Status

    Label5.Caption := IntToStr(255 - TrackBar1.Position);  //Show the current Transparency Value as Number over the TrackBar
    SetWindowLongPtr(MasterHandle, GWL_EXSTYLE, GetWindowLongPtr(MasterHandle, GWL_EXSTYLE) or WS_EX_LAYERED);  //Make choosen Window compatible with Transparency Mode
    SetLayeredWindowAttributes(MasterHandle, 0, TrackBar1.Position, LWA_ALPHA);  //Set Window Transparency

  end;

end;

procedure TForm1.TrayIcon1Click(Sender: TObject);  //Self Settings to Hide Application after clicking TrayIcon
begin
  Form1.Visible := NOT Form1.Visible;  //Switch Form Visibility Status
end;

end.

