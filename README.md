# Disable Intel AMT
Tool to disable Intel AMT on Windows. Runs on both x86 and x64 **Windows** operating systems. 
Download:

[DisableAMT.exe](DisableAMT.exe)

[DisableAMT.zip](DisableAMT.zip)

## What?
On 02 May 2017, Embedi [discovered](https://www.embedi.com/news/mythbusters-cve-2017-5689) "*an escalation of privilege vulnerability in Intel® Active Management Technology (AMT), Intel® Standard Manageability (ISM), and Intel® Small Business Technology versions firmware versions 6.x, 7.x, 8.x 9.x, 10.x, 11.0, 11.5, and 11.6 that can allow an unprivileged attacker to gain control of the manageability features provided by these products*".

Emedi has also released a technical paper about their discovery:
[Silent Bob is Silent](https://www.embedi.com/files/white-papers/Silent-Bob-is-Silent.pdf) (PDF)

Read also: [Intel Active Management Technology, Intel Small Business Technology, and Intel Standard Manageability Escalation of Privilege](https://security-center.intel.com/advisory.aspx?intelid=INTEL-SA-00075&languageid=en-fr)

Assigned CVE: [CVE-2017-5689](https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=2017-5689)

## Wait, what?
Your machine may be vulnerable to hackers.

## How do I know if I'm affected?
If you see any of these stickers or badges on your laptop, notebook or desktop, you are likely affected by this:

![Intel badges](http://i.imgur.com/Evq3CUo.png "Intel badges")

Additionally, Intel AMT does run on non-vPro based processors in some cases with reduced functionality, called [Standard Manageability](https://software.intel.com/en-us/blogs/2009/03/27/what-is-standard-manageability). The tool presented here does not differentiate between processor types. This means it can also disable AMT on your machine, regardless of processor.

You may want to read:
[How To Find Intel® vPro™ Technology Based PCs](https://communities.intel.com/docs/DOC-5693)


## Usage
Simple. Download and run DisableAMT.exe, and it will do the work for you. This is based on the instructions provided by the [INTEL-SA-00075 Mitigation Guide](https://downloadcenter.intel.com/download/26754/INTEL-SA-00075-Mitigation-Guide)

When executing the tool, it will run quickly and when done, will present you with the following screen:
![Intel AMT disabler](http://i.imgur.com/e4DMXEV.png "Intel AMT disabler")

Type **Y** or **N** if you would also like to automatically disable (by renaming) the actual LMS.exe (*Intel Local Management Service*) binary. When finished, a logfile will open up. **Reboot your machine at this point.**

There is also a short video guide avilable by MajorGeeks [here](https://www.youtube.com/watch?v=gyv5_n4HpMY). That's all! Simple!


### Details about the tool
The tool is written in batch, and has the necessary components inside to unconfigure AMT. The batch file was compiled to an executable using the free version of [Quick Batch File Compiler](http://www.abyssmedia.com/quickbfc/), and subsequently packed with UPX to reduce filesize. Additionally, ACUConfig.exe and ACU.dll from [Intel's Setup and Configuration Software package](https://downloadcenter.intel.com/download/26505) is included. You may find all these files in the [sources](sources) folder.

Please find hashes below:

Filename | MD5 | SHA1 | SHA256
--- | --- | --- | ---
*DisableAMT.exe* | fd1e986ba3376c161cdfaf5f5b1ae5fd | e81f58bf35f64067aa359bcbf1bbbe5305d6b13b | 837303761c87f3e8f3bfb3f5cb2eef16679a688df5781dc446300717f42a481f
*DisableAMT.zip* | 7876752e29178a85beae1e5a0b636faa | 89a2a64066c127c4f8fbdbf7ad946b59beaf4009 | 796e63854aaf3630cdfff642dc7f18fa4a32097737da45b0a5b83fb0a15fd72a
*ACUConfig.exe* | 4117b39f1e6b599f758d59f34dc7642c | 7595bc7a97e7ddab65f210775e465aa6a87df4fd | 475e242953ab8e667aa607a4a7966433f111f8adbb3f88d8b21052b4c38088f7
*ACU.dll* | a98f9acb2059eff917b13aa7c1158150 | d869310f28fce485da0c099f7df349c82a005f30 | c569d9ce5024bb5b430bab696f2d276cfdc068018a84703b48e6d74a13dadfd7

#### Does the tool make any hardware or firmware changes, or to the BIOS?
No.

#### Is there an easier way to do this?
Probably. Best way to mitigate, is to update your firmware. See for a list of vendors affected [here](https://security-center.intel.com/advisory.aspx?intelid=INTEL-SA-00075&languageid=en-fr), or see below.

#### List of vendors with firmware updates available:
HP Inc. - http://www8.hp.com/us/en/intelmanageabilityissue.html

HP Enterprise - http://h22208.www2.hpe.com/eginfolib/securityalerts/CVE-2017-5689-Intel/CVE-2017-5689.html

Lenovo - https://support.lenovo.com/us/en/product_security/LEN-14963

Fujitsu - http://support.ts.fujitsu.com/content/Intel_Firmware.asp

Dell Client - http://en.community.dell.com/techcenter/extras/m/white_papers/20443914

Dell EMC - http://en.community.dell.com/techcenter/extras/m/white_papers/20443937

Acer - https://us.answers.acer.com/app/answers/detail/a_id/47162

Asus - https://www.asus.com/News/uztEkib4zFMHCn5r

Panasonic - http://pc-dl.panasonic.co.jp/itn/info/osinfo20170512.html

Intel – [NUC](http://www.intel.com/content/www/us/en/support/boards-and-kits/000024179.html), [Compute Stick](http://www.intel.com/content/www/us/en/support/boards-and-kits/000024180.html) and [Desktop Boards](https://www.intel.com/content/www/us/en/support/boards-and-kits/000024181.html).

##### Extra information:
wikiHow on how to [update your computer's BIOS](http://www.wikihow.com/Update-Your-Computer%27s-BIOS)
