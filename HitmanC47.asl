state("hitman")
{
	byte Start : "GSC.dll", 0x00050E8, 0x64;
	short AllLevels : "HitmanDlc.dlc", 0x0149448, 0x0;
	long End : "EngineData.dll", 0x0018858, 0x0;
}

startup
{
    settings.Add("am", true, "All Levels");
    settings.SetToolTip("am", "Choose which levels to split after");
	
	settings.Add("level1", true, "Training", "am");
	settings.Add("level2", true, "Kowloon Triads in Gang War", "am");
	settings.Add("level3", true, "Ambush at the Wang Fou Restaurant", "am");
	settings.Add("level4", true, "The Massacre at Cheung Chau Fish Restaurant", "am");
	settings.Add("level5", true, "The Lee Hong Assassination", "am");
	settings.Add("level6", true, "Find the U'wa Tribe", "am");
	settings.Add("level7", true, "The Jungle God", "am");
	settings.Add("level8", true, "Say Hello to my Little Friend", "am");
	settings.Add("level9", true, "Traditions of the Trade", "am");
	settings.Add("level10", true, "Gunrunner's Paradise", "am");
	settings.Add("level11", true, "Plutonium Runs Loose", "am");
	settings.Add("level12", true, "The Setup", "am");
	settings.Add("level13", true, "Meet Your Brother", "am");
}

start
{
	if (current.Start == 36 && old.Start == 0) return true;
}

split
{
	if (settings["level1"] && current.AllLevels == 290 && old.AllLevels == 188) return true;
	if (settings["level2"] && current.AllLevels == 303 && old.AllLevels == 290) return true;
	if (settings["level3"] && current.AllLevels == 183 && old.AllLevels == 303) return true;
	if (settings["level4"] && current.AllLevels == 220 && old.AllLevels == 183) return true;
	if (settings["level5"] && current.AllLevels == 280 && old.AllLevels == 220) return true;
	if (settings["level6"] && current.AllLevels == 272 && old.AllLevels == 280) return true;
	if (settings["level7"] && current.AllLevels == 169 && old.AllLevels == 272) return true;
	if (settings["level8"] && current.AllLevels == 200 && old.AllLevels == 169) return true;
	if (settings["level9"] && current.AllLevels == 297 && old.AllLevels == 200) return true;
	if (settings["level10"] && current.AllLevels == 214 && old.AllLevels == 297) return true;
	if (settings["level11"] && current.AllLevels == 296 && old.AllLevels == 214) return true;
	if (settings["level12"] && current.AllLevels == 213 && old.AllLevels == 296) return true;
	if (settings["level13"] && current.End == 4607353724572573678 && old.End == 4604928082310158997) return true;
	if (settings["level13"] && current.End == 4607353724572573678 && old.End == 4608115144822595047) return true;
}