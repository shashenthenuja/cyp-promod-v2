/*
Author : C-BIN
Email: smvgamehosting@gmail.com
Website: smvhost.in
License : Private File
Description: Plugin developed for sMv Promod Mod. Refer Mod documentation for installation instruction.

*/

init()
{
wait 5;
//iprintln("music starting");
if(isDefined(game["PROMOD_KNIFEROUND"])&&game["PROMOD_KNIFEROUND"] )
{
	
	ambientplay("smv_sound3");    //soundaliase of sound you want to play
	level waittill("game_ended");
	ambientstop(1);
}

}