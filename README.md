# ![Logo](./Icon.png?raw=true) WinEdit Dx

**WinEdit Dx** is a Tool to edit the various attributes a Application Window could have.

It utilizes the Windows API for many features.

The Tool was tested with Windows 10 but should also work with Windows 11.

## Documentation

**Please Read the Instructions with care to avoid breaking your Windows!**

**Also the Tool may be flagged as a false positive by your System.**

**If you are still unsure please check and compile the Source Code yourself or try it in a VM first!**

The Tool itself is structured into two main segments:
1. The Window List at the Bottom to choose your Window from.
2. The different Options to edit the choosen Window at the Top.

If you want to hide the Application Window just click on the Tray-Icon on the Taskbar.

### Window List

Just pick the Window in the List by its **Title** or **Handle** by double clicking the Entry.
It does not matter if you select the displayed Handle or Title as it selects the whole Row.
You can also search for the **Title** or **Handle** of your Window using the **Search in Window List** Field (As of v1.0.3).
If your Window appeared after you already startet WinEdit Dx you should refresh the Window List.
This can be done by clicking **Refresh Window List** Button.
After selecting your Window you should be ready to go to change its Settings.
Also the Handle of your Window is now displayed on the top right Edge of the Application.
Just click this Label to copy the Handle to your Clipboard.
You can also click the immage left from this label to reload the current Handle (As of v1.0.3).
It is also possible to list the child objects of a Handle by clicking the **List Child Objects** Button (As of v1.0.4).

### Window Attributes

![Window Attributes Screenshot](./Images/WinEdit%20Dx%2001.png?raw=true)

* **Position and Size**: directly change the Dimensions of the choosen Window.
* **Attributes**: toggle important Window attributes directly.
* **Transparency**: either slide the TrackBar to apply opacity or select a transparency Color.
* **Error Message**: display a fake error Message onto the choosen Window.
* **Window Title**: directly change the Window Title as you type.
* **Size**: switch minimized, maximized or normal Window States.
* **Controls**: disable or enable the Controls in the Titlebar of the Window.
* **Preventions**: prevent moving/resizing of the Window by adding up to 10 Entries to a Timer.
* The Button "**Flash Window**" lets the Window Titlebar and Taskbar Icon glow for a short while.
* The Button "**Bring to Front**" just moves the Window to the Top of the z-Order.
* The Button "**Close Window**" attempts to close the Window by sending a WM_CLOSE Message.

### Advanced Features

![Advanced Features Screenshot](./Images/WinEdit%20Dx%2002.png?raw=true)

* **Free Movement Area**: just click the red Square to freely move your selected Window. Click again to stop.
* **Window Encapsulating**: create a new parent Form for your Window or inject it into another Form.
* **Flashing**: like the "**Flash Window**" Button from the first page but more customizeable. See Help for more Information.

### Experimental Features

![Experimental Features Screenshot](./Images/WinEdit%20Dx%2003.png?raw=true)

**INFORMATION: Experimental features need to be manualy enabled to be functional.**

* **Preview of Window**: generate a stretched Preview of your Window wich can be exportet as a full size PNG.
* **Manual Style Set**: display the full Style values of your Window and edit them. See Help for more Information.
* **Display Affinity**: change and display the DisplayAffinity values of your Window. **Only the Windows belonging to WinEdit Dx can have their DisplayAffinity changed.** See Help for more Information.

### Info

![Info Screenshot](./Images/WinEdit%20Dx%2004.png?raw=true)

* **Disable Topmost Status**: changes the Topmost state of the WinEdit Dx Application.
* **Disable Tray Icon**: toggles the Visibility of the Tray-Icon.
* **Monitor active Handle in Titlebar**: display the Handle of the currently focused Window in the Titlebar.
* **Send Handle to Colors+ (v1.0.2+)**: automatically send the current selected Handle to Colors+ (**Version 1.0.2+ needed**) for the **Attach to Window** Feature. For more Information See Colors+ on [Github](https://github.com/EthernalStar/Colors-Plus) or [Codeberg](https://codeberg.org/EthernalStar/Colors-Plus) (As of v1.0.3).
* **Auto Save/Load Settings**: toggles the ability to save all Settings in an ini File (As of v1.0.3).
* To input a custom Handle use the **Set custom Handle** Button and the corresponding Edit Field (As of v1.0.3).
* By pressing the Button **Export Window List to CSV File** you could save your current List for external use (As of v1.0.3).  
* The Button "**See latest Changelog**" just shows the most recent Changelog.
* The Button "**See License Information**" just shows the License of this Project.

There are also links to my Repositories on [Github](https://github.com/EthernalStar) or [Codeberg](https://codeberg.org/EthernalStar) where you could always find the latest Version.
If you have questions please don't hesitate to contact me over [E-Mail](mailto:NZSoft@Protonmail.com) or create an Issue on the Project Page.

## Use Cases

Here are some situations where I use this Tool:

* [VLC Media Player](https://www.videolan.org/vlc/): When playing ISO Images of DVDs or Blu-rays directly in resized mode the Window tends to resize itself but with enabling the resize Prevention this does not happen anymore.
* [OBS Studio](https://obsproject.com/): The Window of OBS can easily encapsulated in a child Window of WinEdit Dx.
After encapsulationg the Window the new Capsule Window can be selected and its DisplayAffinity can now be set.
As OBS is now inside a child Window of WinEdit Dx of wich the change of DisplayAffinity is possible OBS itself can be excluded from its own capture.
This may work for many other Windows wich take Screenshots or capture your Desktop.
* A Text Editor could be made transparent to see additional Information on the Window behind like a Webpage or a Table.
* Any Window that only displays Information and does not need Interaction could be made transparent and also have the Click-through setting applied.
* The Possibilities of using this Tool are endless.

## Building

There shouldn't be any Problem building the Application because it doesn't rely on any external installed Packages.
To build the Project you need to have the [Lazarus IDE](https://www.lazarus-ide.org/) Version 2.2.6 installed.
After you have downloaded the Source Code or cloned this Repo just open the Project in your Lazarus Installation.
To do this just open the .lpr file and you should be able to edit and compile the Project.

## Issues

* Currently there are no known Issues. If you find something please open an Issue on the Repository.

## Planned Features

* Currently there are no planned Features.

## Changelog

* Version 1.0.0:
  * Initial Release.
* Version 1.0.1:
  * Free Movement Mode Multi Monitor Setup Fix.
* Version 1.0.2:
  * Added Information to Executable Manifest.
* Version 1.0.3:
  * Added Feature to save Settings.
  * Added Searching Feature for the Window List.
  * Added CSV export of the Window List.
  * Added failsafe for Window encapsulation.
  * Added Copy Indicator for displayed Handle.
  * Added Communication with Colors+.
  * Added custom Handle select.
  * Added Handle reload with indicator.
  * Improved Scrolling with the Window List.
  * Rewritten Information Section to be more usable.
  * Minor visual fixes.
* Version 1.0.4:
  * Added Support for listing Child Objects.
  * Code cleanup.

## License

* GNU General Public License v3.0. See [LICENSE](./LICENSE) for further Information.