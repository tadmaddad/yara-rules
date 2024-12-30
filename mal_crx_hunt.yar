rule mal_crx_hunt {
    meta:
        description = "This Yara rule is designed to detect potentially malicious Chrome extensions by identifying files containing specific strings."
        author = "@tadmaddad"
        date = "2024-12-29"
        version = "1.0"
        reference = "https://www.cyberhaven.com/engineering-blog/cyberhavens-preliminary-analysis-of-the-recent-malicious-chrome-extension" // Report: Cyberhaven’s preliminary analysis of the recent malicious Chrome extension
    strings:
        $str1 = "HTTP error! Status"
        $str2 = "Data successfully stored!"
        $str3 = "An error occurred:"
    condition:
        all of them
}
