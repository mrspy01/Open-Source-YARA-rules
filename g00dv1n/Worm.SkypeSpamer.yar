rule WormSkypeMsgSpamerSample
{
	meta:
		Description  = "Worm.SkypeSpamer.sm"
		ThreatLevel  = "5"

	strings:
		$code = { 6A FF 68 ?? ?? ?? ?? 64 A1 00 00 00 00 50 64 89 25 00 00 00 00 81 EC ?? ?? ?? ?? 53 55 56 57 33 DB 68 ?? ?? ?? ?? 88 5C 24 17 E8 ?? ?? ?? ?? 83 C4 04 85 C0 75 34 68 96 00 00 00 FF 15 ?? ?? ?? ?? 68 ?? ?? ?? ?? E8 ?? ?? ?? ?? 83 C4 04 83 F8 01 75 10 E8 ?? ?? ?? ?? 3C 01 75 23 53 FF 15 ?? ?? ?? ?? 53 FF 15 ?? ?? ?? ?? 68 ?? ?? ?? ?? E8 }
		$a = "Skype.exe" ascii wide
		$b = "msnmsgr.exe" ascii wide
	condition:
		2 of them
}