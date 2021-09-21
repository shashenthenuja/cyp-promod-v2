
/*

	In this script you can load your own plugins from "\mods\<fs_game>\plugins\" directory or IWD package.
	=====

	LoadPlugin( plugins\PLUGIN_SCRIPT::ENTRY_POINT, PLUGIN_NAME, PLUGIN_AUTHOR )

	PLUGIN_SCRIPT	- Script file name without ".gsc" extension, ex. "example"
	ENTRY_POINT		- Plugin function called once a round to load script, if you
					use 'init' mod will call function init() from plugin file
	PLUGIN_NAME		- Name of the plugin, fox example "Extreme DR"
	PLUGIN_AUTHOR	- Plugin author's name

[credits to Braxi]

Note From C-BIN 

Use Additional plugins Only if you know what you are adding & you know what you doing .

Do not Even try if you dont know what you are doing.. We are not responsible if your script causes any damage to your system/clients systems or any other issues


*/

init()
{


LoadPlugin( plugins\kniferoundmusic::init, "Knife round music", "C-BIN" );
LoadPlugin( plugins\_credits::init, "credits", "C-BIN" );


}

LoadPlugin( pluginScript, name, author )
{
	thread [[ pluginScript ]]();
	//iprintln("Plugin^2 "+name+"^7 by ^3"+author+" ^7loaded");
}

