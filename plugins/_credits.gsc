
//=========================================================================================================================             
//        __________________              __________________         ____      __________           _____                            -
//      _/\                 \            /\                 \     _ /\   \    /\          \_       /\    \          
//      _\ \      ___________\           \ \    __________   \     _\ \   \   \ \     __    \_     \ \    \                            
//       _\ \     \__________/            \ \   \________/\   \     _\ \   \   \ \    \ \_    \_    \ \    \                                       
//        _\ \     \             _______   \ \   \_______\_\   \     _\ \   \   \ \    \__\_    \_   \ \    \                           
//         _\ \     \           /\______\   \ \    __________   \     _\ \   \   \ \    \ \_\_    \_  \ \    \         
//          _\ \     \          \/______/    \ \   \_______/ \   \     _\ \   \   \ \    \  \_\_    \_ \ \    \                         
//           _\ \     \                       \ \   \       \ \   \     _\ \   \   \ \    \   \_\_    \_\ \    \                       
//            _\ \     \_____________          \ \   \_______\_\   \     _\ \   \   \ \    \    \_\_     \_\    \                        
//             _\ \                  \          \ \                 \     _\ \   \   \ \    \     \_\_           \
//              _\ \__________________\          \ \_________________\     _\ \___\   \ \____\      \_\ __________\
//               _\/__________________/           \/_________________/      _\/___/    \/____/        \/__________/ 
//===========================================================================================================================
// DO NOT COPY SHARE OR USE WITHOUT THE PERMISSION OF SMVHOST OR C-BIN
// EMAIL: smvgamehosting@gmail.com
//===========================================================================================================================

/*
Author : Braxi, C-BIN 
Email: smvgamehosting@gmail.com
Website: smvhost.in
License : Private File
Description: Plugin developed for sMv Promod Mod. Refer Mod documentation for installation instruction.

*/

#include maps\mp\gametypes\_globallogic_utils; 

init(){
	registerPostGameEvent(::threadsmvmain);
}

threadsmvmain(){

	for (i = 0;i < level.players.size;i++) { 
	  player = level.players[i];  
	  player.sessionteam = "spectator";
	  player.sessionstate = "spectator";
	  player[[level.spawnSpectator]](); 
	  player closeMenu();  
	  player closeInGameMenu();
	  
	  player setClientDvar("hud_ShowWinner", "0");   player setClientDvar("cg_drawgun", "0");   player setClientDvar("cg_drawcrosshair", "0");   
	  
	  } 

  main();
}

main()
{
	level.creditTime = 10;

	thread showCredit( " Mod Created By:", 2.4 );
	wait 0.5;
	thread showCredit( "Shashen Thenuja", 2.0 );
	wait 1;
	thread showCredit( "Hosted By", 2.7 );
	wait 0.5;
	thread showCredit( "^1SMV^4HOST", 2.4 );
	wait 1;
	thread showCredit( "Location:", 2.2 );
	wait 0.5;
	thread showCredit( "Colombo, Srilanka", 1.8 );
	wait 1;
	thread showCredit( "Email:", 2.2 );
	wait 0.5;
	thread showCredit( "shashengg@gmail.com", 1.8 );
	wait 1;
   thread showCredit( "IF you like this Server Add it to Favorites :P ", 2.2 );
	wait 1;
   thread showCredit( "Please Donate to keep this server up :D", 2.2 );
	wait 1;
	   thread showCredit( "Server Powered By Cypher Technologies", 2.0 );
	wait 1;
		   thread showCredit( "#GamersDon'tDieTheyRespawn", 2.0 );
	wait 1;
	

	wait 2.2;
	thread showCredit( "Thanks for playing In ^1CYP ^7Promod Server", 2.4 );
	
	wait level.creditTime+2;

}

showCredit( text, scale , glowcolor)     
{
	end_text = newHudElem();
	end_text.font = "objective";
	end_text.fontScale = scale;
	end_text SetText(text);
	end_text.alignX = "center";
	end_text.alignY = "top";
	end_text.horzAlign = "center";
	end_text.vertAlign = "top";
	end_text.x = 0;
	end_text.y = 540;
	end_text.sort = 999999; //-3
	end_text.alpha = 1;
	if(isdefined(glowcolor))
	    end_text.glowColor=glowcolor;
	else
    	end_text.glowColor = (.1,0,.8);
	end_text.glowAlpha = 1;
	end_text moveOverTime(level.creditTime);
	end_text.y = -60;
	end_text.foreground = false;
	wait level.creditTime;
	end_text destroy();
}

