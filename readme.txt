This is the README file for source code package of WinSCP.

To build WinSCP you need:
- Embarcadero C++ Builder XE6 Professional.
  http://www.embarcadero.com/products/cbuilder
- Microsoft .NET Framework 3.5 (for MSBuild)
  http://www.microsoft.com/netframework
- nasm from http://www.nasm.us/
- Build MFC (see readme_mfc.txt).
- To build WinSCP .NET assembly, you need Microsoft Visual Studio 2013
  http://www.microsoft.com/visualstudio
  and Microsoft .NET Framework 4.0

To build WinSCP from source by yourself, modify and use 'build.bat' in root
folder of source code package.

Directory structure:
/source             project files of all native libraries and executables
/source/components  native WinSCP visual components
/source/console     console interface
/source/core        core (non-visual) part of WinSCP
                    (SSH, SFTP, FTP, WebDAV and SCP code)
/source/dragext     drag&drop shell extension
/source/filezilla   source code of FileZilla FTP client
/source/forms       visual part of WinSCP (dialogs and windows)
/source/packages    general visual components (both mine and 3rd party)
/source/putty       source code of PuTTY SSH client
/source/resource    resources strings
/source/windows     other sources
/deployment         Inno Setup script to create setup package
                    (see /deployment/readme)
/dotnet             source code of WinSCP .NET assembly
/libs               3rd party libraries

WinSCP homepage is http://winscp.net/

See the file 'license.txt' for the license conditions.
