# Requirements

- VirtualBox (tested with 5.0)
- Vagrant (tested with 1.7)
- Windows users:  **64-bit Windows** with **hardware virtualization** (VT-X, AMD-V, etc.) required.  See note below
- Mac/Linux users:  most any recent Mac computer should be sufficient


# Instructions

1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).
  **SPECIAL NOTE:  VirtualBox's latest version, 5.1 or higher, does not seem to work well with this solution.  Please use the older version 5.0.26, as found here:  [https://www.virtualbox.org/wiki/Download_Old_Builds_5_0]**
  * For Windows, select the download link, **Windows hosts x86/amd64**
  * For Mac, select the download link, **OS X hosts**
2. Install [Vagrant](https://www.vagrantup.com/downloads.html).
  * For Windows, select the **Universal (32 and 64-bit)** install under the Windows section
  * For Mac, select  **Universal (32 and 64-bit)** under the MAC OS X section
3.  A zip file of this repository.  Get it by selecting the, "Download Zip" button in the upper right corner of this page.  This will download a file called, "openlmis-vagrant-master.zip" to your computer.  
![Download link](/img/zipDownloadPic.jpg)
4.  __**You must make sure your computer’s virtualization capabilities are enabled, especially for Windows users!**__  Almost all Macintosh computers have hardware virtualization activated out of the box.  For Windows tips, see the 'Virtualization' section towards the end of this readme.
5. To complete the installation, follow the instructions below for either Windows or Mac.  Be sure to read the Extra Tips section at the end.  No matter how it is installed, you access the running OpenLMIS by entering this URL in your web browser:  http://192.168.34.209:32770/.  It may take several minutes for the installation to finish its startup, so the browser may appear to "hang" for several moments.   Login credentials are the same as the demo.openlmis.org site, as described here.
  * superuser/User123 (complete user rights)
  * superadmin/Admin123 (complete admin rights)
  * devadmin/Admin123 (all user and admin rights)
 
# For Windows
In this section, we will extract the contents of the zip file obtained above, and run a program in the extracted set of files.  When you downloaded the zip file above, it is likely it was placed in a "Downloads" folder on your computer.  

1.	Right click on openlmis-vagrant-master.zip and select “Extract all…” from the menu.  You may choose to extract the contents to the current folder, or anywhere else you like.  We strongly recommend you extract to a different location other than the "Download" folder - even the desktop is fine. The extract will consist of a new folder, named openlmis-vagrant-master, with several files inside.
2.	Open the new folder openlmis_vagrant_master and you should see a few files, one of which is called win_startOpenLMIS.bat.  
3.	Double-click on win_startOpenLMIS.bat.  This will start the OpenLMIS install process.  
4.	That’s it!  First time setup could take 15+ minutes.   After it finishes, go to http://192.168.34.209:32770/ to access the OpenLMIS web application.  

# For Mac
In this section, we will extract the contents of the zip file obtained above, and run a program in the extracted set of files.
_This section could use more explanation, or convenience .sh scripts similar to the .bat files above._

1.  Extract the contents of openlmis-vagrant-master.zip to another folder on your Mac.  The extract will consist of a new folder, named openlmis-vagrant-master, with several files inside.
2.  Run Terminal
3.  In the Terminal, use the 'cd' command to change to the new openlmis-vagrant-master folder
4.  In the Terminal, run the following command:  vagrant up
5.  That’s it!  First time setup could take 15+ minutes.   After it finishes, go to http://192.168.34.209:32770/ to access the OpenLMIS web application.  

# Extra Tips
Once it is up and running, VirtualBox is running a virtual machine on your system, which takes a decent amount of memory and may impact your system performance. To reclaim it, you can shutdown the virtual machine:
-	on Windows, run the program “win_stopOpenLMIS.bat” included with the vagrant zip package
-	On Mac:  use Virtual Box console.  Run the VirtualBox Manager program (it is a standard desktop application), right click on the VM and select Close – ACPI Shutdown.  
![Shutting Down](/img/vbShutdown.jpg)
To start it back up, just run win_startOpenLMIS.bat (for windows) again, OR start the virtual machine from the VirtualBox Manager.  If you use the win_startOpenLMIS option, Vagrant will look for updates and download them, which requires a good Internet connection.  If you are not near one, start OpenLMIS from the VirtualBox Manager.

# Windows and Hardware Virtualization

## How do I know if hardware virtualization is enabled on my Windows machine?

1.	If you are running Windows 10:  in the combined search/run bar, type `msinfo` and press return.  You will see a screen of information.  Find the entry for, “Hyper-V - Virtualization Enabled in Firmware”.  If it is set to Yes, virtualization is enabled and you can proceed with the OpenLMIS install.
2.	If you’re not running Windows 10 (or 8?), there is no easy way to tell.  Proceed to the next steps.

## Enabling Hardware Virutalization

The steps vary slightly depending upon the make/model of your computer, which is why we cannot provide exact instructions.  Basic steps are below, but your best bet is to search the Internet.  For example, let’s say your computer is a “Dell Latitude u8500”, so your search could be
> “dell u8500 enable virtualization”
 
If the above did not work for you, here’s a few examples, both in written and video form, for activating virtualization on your computer:
* https://www.youtube.com/watch?v=3irpIFya_lk
* http://amiduos.com/support/knowledge-base/article/enabling-virtualization-in-lenovo-systems
* https://www.youtube.com/watch?v=-Wa7TGjmn5M       

### Generic instructions for enabling hardware virtualization
1.  Restart your computer into BIOS mode.  This is typically done by
 * Restarting your computer
 * As *soon* as the computer begins to start up, press and hold a special key, like F2 or Enter, depending on your computer.  Sometimes the computer tells you what to do at boot time, e.g. “To interrupt normal startup, press <a certain key>”

2. You will see a very basic interface to view and set computer settings.  You need to navigate these menus to find an entry for “virtualization” or “VT-x” and make sure it is Enabled.  
3.  Exit this interface, making sure to SAVE your changes.  There is typically an option to exit and save changes, or exit and discard changes.
4.  DO NOT CHANGE ANYTHING ELSE!  You could really mess things up!
5.  Reboot and go install OpenLMIS!


# Advanced Installation
_For Developers Only_

1. Clone the repo and enter the folder.

    ```shell
    git clone https://github.com/chunky56/openlmis-vagrant.git
    cd openlmis-vagrant
    ```

2. Use Vagrant to build OpenLMIS demo machine.

    ```shell
    vagrant up
    ```

That's it! It may take a while for vagrant to finish creating the demo machine. After it finishes, go to http://192.168.34.209:32770/ to access the OpenLMIS web application.
