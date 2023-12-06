# ![Logo](https://github.com/EthernalStar/WinEdit-Dx/blob/main/Icon.png?raw=true) WinEdit Dx



WinEdit Dx is a Tool to edit the various attributes a Application Window could have.   
The Tool was tested with Windows 10 but should also work with Windows 11.

## Documentation

Please Read the Instructions with care to avoid breaking your Windows.  
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

### Options

Following this the different Options will be explained in detail.  

#### Window Attributes

![Window Attributes Screenshot](https://github.com/EthernalStar/WinEdit-Dx/blob/main/Images/WinEdit%20Dx%2001.png?raw=true)

#### Advanced Features

![Advanced Features Screenshot](https://github.com/EthernalStar/WinEdit-Dx/blob/main/Images/WinEdit%20Dx%2002.png?raw=true)

#### Experimental Features

![Experimental Features Screenshot](https://github.com/EthernalStar/WinEdit-Dx/blob/main/Images/WinEdit%20Dx%2003.png?raw=true)

#### Info

![Info Screenshot](https://github.com/EthernalStar/WinEdit-Dx/blob/main/Images/WinEdit%20Dx%2004.png?raw=true)

### Use Cases

Here are some situations where I use this Tool:  

VLC Media Player: When playing ISO Images of DVDs or Blu-rays directly in resized mode the Window tends to resize itself  
with enabling the resize Prevention this does not happen anymore.  

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
