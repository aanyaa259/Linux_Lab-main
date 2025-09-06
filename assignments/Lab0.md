# LAB0
## Step 1 - Download and Set up VirtualBox
* Go to VirtualBox website here to download the binary for your current operating system. Since our host machine is running on mac OS, I'll choose it . When download is finished, run the executable file. Continue with the installation of VirtualBox with the defaults. This will open VirtualBox at the end of the installation.
![alttext](<./images/Screenshot 2025-09-06 at 1.28.33 PM.png>)



* Type a name for the new virtual machine. Since I am planning to install Ubuntu 14.04, I'll enter 'ubuntu1404'. Note that VirtualBox automatically changes 'Type' to Linux and 'Version' to 'Ubuntu (64 bit)'. These two options are exactly what we need.
![alttext](<./images/Screenshot 2025-09-06 at 1.36.00 PM.png>)

* Download Linux ISO- Choose a distro (e.g., Ubuntu, Fedora) and download its ISO from the official website.
![alttext](<./images/Screenshot 2025-09-06 at 1.42.38 PM.png>)

* The memory size depends on your host machine memory size. In my case, I have 16GB physical RAM. I like to allocate as much as possible for Ubuntu but leave some for my  host machine. I pick 8192 MB for my Ubuntu.
![alttext](<./images/Screenshot 2025-09-06 at 1.36.38 PM.png>)

* Accept the default 'Create a virtual hard drive now' and click 'Create' button.
![alttext](<./images/Screenshot 2025-09-06 at 1.36.51 PM.png>)

* Mount ISO Image downloaded from offical website.
![alttext](<./images/Screenshot 2025-09-06 at 1.47.52 PM.png>)

* Click 'Create' button and VirtualBox will generate Ubuntu virtual machine.
![alttext](<./images/Screenshot 2025-09-06 at 1.53.40 PM.png>)



## Step-2 Running Commands on Ubuntu
Running the following commands on ubuntu-

- **sb_release -a** (shows Ubuntu version).

- **uname -a** (kernel info).

- **df -h** (disk usage).

- **free -m** (memory usage).

![alttext](<./images/Screenshot 2025-09-06 at 1.59.26 PM.png>)



## Challanges Faced
- If too little RAM/CPU is allocated, the VM runs very slow.
- VirtualBox may not access external drives or USB.
- Some VirtualBox versions may not support the latest macOS release.


## Extra Questions

**What are two advantages of installing Ubuntu in VirtualBox?**
✅ **Two advantages of installing Ubuntu in VirtualBox (VM):**

1. **No risk to main system** – Ubuntu runs inside a virtual machine, so your macOS (or Windows) remains safe and untouched.
2. **Easy to install & remove** – You can set it up quickly, try different Linux versions, and delete the VM anytime without affecting your main OS.

**What are two advantages of dual booting instead of using a VM?**

✅ Two advantages of dual booting instead of using a VM:

1. **Better performance** – Since Ubuntu runs directly on your hardware, it’s faster and uses full CPU, GPU, and RAM power (unlike a VM which shares resources).
2. **Full hardware access** – You can use all drivers, graphics acceleration, and peripherals properly (important for gaming, heavy software, or coding with hardware access).




