
# clients
Add-MpPreference -ExclusionPath "C:\Program Files (x86)\Software of Excellence\EXACT\"
Add-MpPreference -ExclusionPath "\\SERVER\EXACTResources\"

#On the Server
Add-MpPreference -ExclusionPath "C:\Program Files (x86)\Software of Excellence\EXACT Server\"
# data
Add-MpPreference -ExclusionPath "F:\Exactwin\"
# xrays
Add-MpPreference -ExclusionPath "F:\Exactwin\"
Add-MpPreference -ExclusionPath "\\SERVER\EXACTResources\"

# examine pro
Add-MpPreference -ExclusionPath "C:\Program Files (x86)\SOE\"

#
Add-MpPreference -ExclusionPath "C:\ProgramData\SOEI"
Add-MpPreference -ExclusionPath "\\SERVER\EXACTData"

# backups directory
Add-MpPreference -ExclusionPath "C:\DataBkup"

# backups directory
Add-MpPreference -ExclusionPath "C:\LocalBackups"
Add-MpPreference -ExclusionPath "E:\LocalBackups"
Add-MpPreference -ExclusionPath "F:\LocalBackups"
Add-MpPreference -ExclusionPath "G:\LocalBackups"
Add-MpPreference -ExclusionPath "H:\LocalBackups"

# backups directory
Add-MpPreference -ExclusionPath "C:\DocumentsHighfield"
Add-MpPreference -ExclusionPath "E:\DocumentsHighfield"
Add-MpPreference -ExclusionPath "F:\DocumentsHighfield"
Add-MpPreference -ExclusionPath "G:\DocumentsHighfield"
Add-MpPreference -ExclusionPath "H:\DocumentsHighfield"
