rule RemcosRAT_Obfuscated_VBS_Loader
{
    meta:
        description = "Detects the original obfuscated RemcosRAT VBS loader using self-copy and staging artifacts"
        author = "James Banday"
        date = "2026-07-20"
        malware_family = "RemcosRAT"
        version = "3.0"
        reference = "MalwareBazaar Static Analysis"
        sha256 = "356106324c797ba967a2a8cde2156e866fe008332046747866efa82a99e62083"

    strings:

        // VBScript Objects
        $s1 = "Scripting.FileSystemObject" ascii nocase
        $s2 = "Wscript.Shell" ascii nocase
        $s3 = "WScript.ScriptFullName" ascii nocase

        // Self-Copy Artifacts
        $s4 = "C:\\Users\\Public\\Downloads\\" ascii nocase
        $s5 = "WWIvxS4BHi.vbs" ascii
        $s6 = /soupy\.CopyFile[ \t]+jiffle,[ \t]*synthesises,[ \t]*True/ ascii nocase

        // Environment Variable Staging
        $s7 = /unsilenced\.Environment\("User"\)/ ascii nocase
        $s8 = /horsiest\("buckskins"\)[ \t]*=[ \t]*compromisation/ ascii nocase

        // Unique Function Declaration
        $s9 = /Function[ \t]+cornbraid\(ByVal[ \t]+dataaaaa,[ \t]*ByVal[ \t]+pattern,[ \t]*ByVal[ \t]+AjustarTextoment\)/ ascii nocase

    condition:
        filesize > 900KB and
        filesize < 2MB and
        $s4 and
        $s5 and
        4 of ($s1, $s2, $s3, $s6, $s7, $s8, $s9)
}
