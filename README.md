# ![Logo](https://github.com/EthernalStar/WinEdit-Dx/blob/main/Icon.png?raw=true) WinEdit Dx

**WinEdit Dx** is a Tool to edit the various attributes a Application Window could have.
It utilizes the Windows API for many features.
The Tool was tested with Windows 10 but should also work with Windows 11.  
  

## Documentation

**Please Read the Instructions with care to avoid breaking your Windows!**  
The Tool itself is structured into two main segments:  
1. The Window List at the Bottom to choose your Window from.
2. The different Options to edit the choosen Window at the Top.  
  

### Window List

Just pick the Window in the List by double clicking the Entry.  
It does not matter if you select the displayed Handle or Title as it selects the whole Row.  
If your Window appeared after you already startet WinEdit Dx you should refresh the Window List.  
This can be done by clicking the corresponding Button.  
After selecting your Window you should be ready to go to change its settings.  
Also the Handle of your Window is now displayed on the top right Edge of the Application.  
You can click this Label to copy the Handle to your Clipboard.  
  

### Window Attributes

![Window Attributes Screenshot](https://github.com/EthernalStar/WinEdit-Dx/blob/main/Images/WinEdit%20Dx%2001.png?raw=true)

**Position and Size**: directly change the Dimensions of the choosen Window.  

**Attributes**: toggle important Window attributes directly.  

**Transparency**: eiher slide the TrackBar to apply opacity or select a transparency Color.  

**Error Message**: display a fake error Message onto the choosen Window.  

**Window Title**: directly change the Window Title as you type.  

**Size**: switch minimized, maximized or normal Window states.  

**Controls**: disable or enable the Controls in the Titlebar.  

**Preventions**: prevent moving/resizing of the Window by adding up to 10 Entries to a Timer.  

The Button "**Flash Window**" lets the Window Titlebar and Taskbar Icon glow for a short while.  

The Button "**Bring to Front**" just moves the Window to the top of the z-order once.  

The Button "**Close Window**" attempts to close the Window by sending a WM_CLOSE Message.  
  

### Advanced Features

![Advanced Features Screenshot](https://github.com/EthernalStar/WinEdit-Dx/blob/main/Images/WinEdit%20Dx%2002.png?raw=true)

**Free Movement Area**: just click the red square to freely move your selected Window. Click again to stop.  

**Window Encapsulating**:  create a new parent Form for your Window or inject it in another Form.  

**Flashing**: like the "**Flash Window**" Button from the first page but more customizeable.  
  

### Experimental Features

![Experimental Features Screenshot](https://github.com/EthernalStar/WinEdit-Dx/blob/main/Images/WinEdit%20Dx%2003.png?raw=true)

**INFORMATION:** Experimental features need to be manualy enabled to be functional.


**Preview of Window**: generate a stretched Preview of your Window wich can be exportet as full size PNG.  

**Manual Style Set**: display the full Style values of your Window and edit them. See Help for more Info.  

**Display Affinity**: change and display the DisplayAffinity values of your Window.*  

*Only the Windows belonging to WinEdit Dx can have their DisplayAffinity changed.
  

### Info

![Info Screenshot](https://github.com/EthernalStar/WinEdit-Dx/blob/main/Images/WinEdit%20Dx%2004.png?raw=true)

**Disable Topmost Status**: changes the Topmost state of the WinEdit Dx Application.  

**Disable Tray Icon**: toggles the Visibility of the TrayIcon.  

**Monitor active Handle in Titlebar**: Display the Handle of the currently focused Window in the Titlebar.  

The Button "**See latest Changelog**" just shows the most recent Changelog.  

The Button "**See License Information**" just shows the License of this Project.  
  

### Use Cases

Here are some situations where I use this Tool:  

VLC Media Player: When playing ISO Images of DVDs or Blu-rays directly in resized mode the Window tends to resize itself but with enabling the resize Prevention this does not happen anymore.  

OBS Studio: The Window of OBS can easily encapsulated in a child Window of WinEdit Dx.  
After encapsulationg the Window the new Capsule Window can be selected and its DisplayAffinity can now be set.  
As OBS is now inside a child Window of WinEdit Dx of wich the change of DisplayAffinity is possible OBS itself can be excluded from its own capture.  
This may work for many other Windows wich take Screenshots or capture your Desktop.  

A Text Editor could be made transparent to see additional Information on the Window behind like a Webpage or Table.

Any Window that only displays Information and does not need Interaction could be made transparent and also have the Click-through setting applied.  

The Possibilities of using this Tool for useful or unuseful things are endless.  
  

### Building

There should not be any Problem building the Application because it does not rely on any external installed Packages.  
To build the Project you need to have the Lazarus IDE installed and clone this Repository to yor local Machine.  
Now just open the lpr file in your Lazarus Installation and you should be able to compile the Project.  
  

## Issues

Sometimes the Window Encapsulation does not work because the choosen Window does not support this.  
This could cause the target Window to disappear. Setting the Parent manually to the Desktop could fix this.  
  

## Planned Features

Currently I am looking into Dll Injection to change the DisplayAffinity state of any Window, even if they are not encapsulated.  
But I think I will outsource this Idea to a new independent Project regarding the Amount of work required.  
  

## Changelog

Version 1.00: Initial Release  
  

## License

GNU General Public License v3.0. See [LICENSE](https://github.com/EthernalStar/WinEdit-Dx/blob/main/LICENSE) for further Information.
