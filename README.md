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

#### Advanced Features

#### Experimental Features

#### Info

### Use Cases

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
