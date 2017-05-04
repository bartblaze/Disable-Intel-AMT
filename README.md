# Disable Intel AMT
Tool to disable Intel AMT on Windows. Runs on both x86 and x64 *Windows* operating systems.

## What?
On 02 May 2017, Embedi [discovered](https://www.embedi.com/news/mythbusters-cve-2017-5689) "*an escalation of privilege vulnerability in Intel® Active Management Technology (AMT), Intel® Standard Manageability (ISM), and Intel® Small Business Technology versions firmware versions 6.x, 7.x, 8.x 9.x, 10.x, 11.0, 11.5, and 11.6 that can allow an unprivileged attacker to gain control of the manageability features provided by these products*".

Read also: [Intel Active Management Technology, Intel Small Business Technology, and Intel Standard Manageability Escalation of Privilege](https://security-center.intel.com/advisory.aspx?intelid=INTEL-SA-00075&languageid=en-fr)

Assigned CVE: [CVE-2017-5689](https://www.cve.mitre.org/cgi-bin/cvename.cgi?name=2017-5689)

## Wait, what?
Your machine may be vulnerable to hackers.

## How do I know if I'm affected?
If you see any of these stickers or badges on your laptop, notebook or desktop, you are likely affected by this:

![Intel badges](http://i.imgur.com/Evq3CUo.png "Intel badges")

You may want to read:
[How To Find Intel® vPro™ Technology Based PCs](https://communities.intel.com/docs/DOC-5693)


## Usage
Simple. Download and run DisableAMT.exe, and it will do the work for you. This is based on the instructions provided by the [INTEL-SA-00075 Mitigation Guide](https://downloadmirror.intel.com/26754/eng/INTEL-SA-00075%20Mitigation%20Guide-Rev%201.1.pdf)

When executing the tool, it will run quickly and when done, will present you with the following screen:
![Intel AMT disabler](http://i.imgur.com/e4DMXEV.png "Intel AMT disabler")

Type **Y** or **N** if you would also like to automatically disable (by renaming) the actual LMS.exe (*Intel Local Management Service*) binary. When finished, a logfile will open up. **Reboot your machine at this point.**

That's all!


### Details about the tool
The tool is simply written in batch, and has the necessary components inside to unconfigure AMT. The batch file was compiled to an executable using the free version of [Quick Batch File Compiler](http://www.abyssmedia.com/quickbfc/), and subsequently packed with UPX to reduce filesize. Additionally, ACUConfig.exe and ACU.dll from [Intel's Setup and Configuration Software package](https://downloadcenter.intel.com/download/26505) is included. You may find all these files in the 'src' folder.

Please find hashes below:

Filename | MD5 | SHA1 | SHA256
--- | --- | --- | ---
*DisableAMT.exe* | 3a7f3c23ea25279084f0245dfa7ecb21 | 383fc99f149c4aec3536ed5370dc4b07f7f93028 | f0cecef7f5d1b8be8feeddf83c71892bf9dd6e28b325f88e0c071c6be34b8c19
*DisableAMT.zip* | 0458d8e23a527e74b567d7fa4b342fec | f7b73115bfbacaea32da833deaf7c1187d1bfc40 | 143ffd107c3861a95e829d26baeb30316ded89bb494e74467bcfb8219f895c3b
*DisableAMT.bat* | c00bc5a37cb7a66f53aec5e502116a5c | 51ca8a7c3f5a81a31115618af4245df13aa39a90 | a58c56c61ba7eae6d0db27b2bc02e05444befca885b12d84948427fff544378a
*ACUConfig.exe* | 4117b39f1e6b599f758d59f34dc7642c | 7595bc7a97e7ddab65f210775e465aa6a87df4fd | 475e242953ab8e667aa607a4a7966433f111f8adbb3f88d8b21052b4c38088f7
*ACU.dll* | a98f9acb2059eff917b13aa7c1158150 | d869310f28fce485da0c099f7df349c82a005f30 | c569d9ce5024bb5b430bab696f2d276cfdc068018a84703b48e6d74a13dadfd7

#### Is there an easier way to do this?
Probably.


