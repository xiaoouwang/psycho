scenario = "avant-test perceptif XP";  
active_buttons = 1;
button_codes = 1;
default_font = "Arial Unicode MS"; 
default_font_size = 33; 

begin;

picture {
   text {
  caption = "第三阶段结束，请按回车进入第四阶段";
       font_size = 40;
   };
   x = 0; y = 0;
} picperception; 

trial{

		picture {
		text { caption = "现在我们将观察你归类元音的方式"; font_size=38;};
      x = 0; y = 0;
      };
		duration = 4000;
		picture {
		text { caption = "在接下来的练习中，你可能会听到单独一个元音，比如 /o/ /è/\n\n也可能是一段包含此元音的语音，如 /apa/ /iki/"; font_size=38;};
      x = 0; y = 0;
      };
      time=4000;
		duration = 7000;
		picture {
		text { caption = "当你听到这些语音后，用鼠标在屏幕上选择你听到的元音"; font_size=38;};
      x = 0; y = 0;
      };
      time=11000;
		duration = 7000;	
		picture {
      text { caption = "按回车开始练习"; font_size=38;};
      x = 0; y = 0;
      };
      time=18000;	
					}trialstart;


trial{

		stimulus_event {
					picture {
		text { caption = " "; font_size=60;};
      x = 0; y = 0;
      };
				duration = 1;
				code="1";
		};
							
}result1;
trial{

		stimulus_event {
					picture {
		text { caption = " "; font_size=60;};
      x = 0; y = 0;
      };
				duration = 1;
				code="2";
		};
							
}result2;

trial{

		stimulus_event {
					picture {
		text { caption = " "; font_size=60;};
      x = 0; y = 0;
      };
				duration = 1;
				code="3";
		};
							
}result3;

trial{

		stimulus_event {
					picture {
		text { caption = " "; font_size=60;};
      x = 0; y = 0;
      };
				duration = 1;
				code="4";
		};
							
}result4;

trial{

		stimulus_event {
					picture {
		text { caption = " "; font_size=60;};
      x = 0; y = 0;
      };
				duration = 1;
				code="5";
		};
							
}result5;

trial{

		stimulus_event {
					picture {
		text { caption = " "; font_size=60;};
      x = 0; y = 0;
      };
				duration = 1;
				code="6";
		};
							
}result6;

trial{

		stimulus_event {
					picture {
		text { caption = " "; font_size=60;};
      x = 0; y = 0;
      };
				duration = 1;
				code="miss";
		};
							
}resultmiss;

text { caption = "+"; font_size = 10; background_color=255,0,0;}souris;
picture {

  text souris;
  x = 0; y = 0;
  on_top = true; 



	text { caption = "请选择你听到的元音";
			font_size = 45;
			};
			x = 0; y = 270;
	     text  {
			caption = "/o/ (peau)";
			font_size = 28;
			font_color = 255,255,255;
			background_color = 0,155,0;
      	}texto;
			x = 150; y = 130;

		
        text  {
			caption = "/O/ (porc)";
			font_size = 28;
			font_color = 255,255,255;
			background_color = 0,155,0;
      	}textO;
			x = -150; y = 130;
   
		text {
			caption = "/è/ (pêche)";
			font_size = 28;
			font_color = 255,255,255;
			background_color = 0,155,0;
			}textE;
			x = -150; y = -220;
  
		text {
			caption = "  /é/ (fée)  ";
			font_size = 28;
			font_color = 255,255,255;
			background_color = 0,155,0;
			}texte;
			x = 150; y = -220;
  
		text {
			caption = " /eu/ (peu)";
			font_size = 28;
			font_color = 255,255,255;
			background_color = 0,155,0;
			}texteu;
			x = 150; y = -50; 	
			
      text {
			caption = "/oe/ (peur)";
			font_size = 28;
			font_color = 255,255,255;
			background_color = 0,155,0;
			}textoe;
			x = -150; y = -50; 	
} pic;

trial{
			
	picture {
	     text { caption = "+"; font_size = 10; background_color=255,0,0;};
   x = 0; y = 0;
   
		text { caption = "请听语音";
			font_size = 45;
			};
			x = 0; y = 270;
	     text  {
			caption = "/o/ (peau)";
			font_size = 28;
			font_color = 255,255,255;
			background_color = 0,155,0;
      	};
			x = 150; y = 130;
		
        text  {
			caption = "/O/ (porc)";
			font_size = 28;
			font_color = 255,255,255;
			background_color = 0,155,0;
      	};
			x = -150; y = 130;
   
		text {
			caption = "/è/ (pêche)";
			font_size = 28;
			font_color = 255,255,255;
			background_color = 0,155,0;
			};
			x = -150; y = -220;
  
		text {
			caption = "  /é/ (fée)  ";
			font_size = 28;
			font_color = 255,255,255;
			background_color = 0,155,0;
			};
			x = 150; y = -220;
  
		text {
			caption = " /eu/ (peu)";
			font_size = 28;
			font_color = 255,255,255;
			background_color = 0,155,0;
			};
			x = 150; y = -50; 	
			
      text {
			caption = "/oe/ (peur)";
			font_size = 28;
			font_color = 255,255,255;
			background_color = 0,155,0;
			};
			x = -150; y = -50; 	
							
	}selectionpicture;  
	
	sound {wavefile { filename = "perception\\Sans_titre.wav"; }; 
    }trial_pause1;
    time=1500;

	stimulus_event {
		nothing {};
		code = "stop";
			} stop;
			
} main_trial;

sound {wavefile { filename = "perception\\item_0318_tongue.wav"; }; description = "1";}s5;
sound {wavefile { filename = "perception\\item_0191_tongue.wav"; }; description = "1";}s6;
sound {wavefile { filename = "perception\\item_0192_tongue.wav"; }; description = "1";}s7;
sound {wavefile { filename = "perception\\item_0195_tongue.wav"; }; description = "1";}s8;
sound {wavefile { filename = "perception\\item_0207_tongue.wav"; }; description = "1";}s21;
sound {wavefile { filename = "perception\\item_0006_tongue.wav"; }; description = "2";}s25;
sound {wavefile { filename = "perception\\item_0151_tongue.wav"; }; description = "2";}s26;
sound {wavefile { filename = "perception\\item_0152_tongue.wav"; }; description = "2";}s27;
sound {wavefile { filename = "perception\\item_0155_tongue.wav"; }; description = "2";}s28;
sound {wavefile { filename = "perception\\item_0167_tongue.wav"; }; description = "2";}s41;
sound {wavefile { filename = "perception\\item_0017_tongue.wav"; }; description = "3";}s45;
sound {wavefile { filename = "perception\\item_0211_tongue.wav"; }; description = "3";}s46;
sound {wavefile { filename = "perception\\item_0212_tongue.wav"; }; description = "3";}s47;
sound {wavefile { filename = "perception\\item_0215_tongue.wav"; }; description = "3";}s48;
sound {wavefile { filename = "perception\\item_0226_tongue.wav"; }; description = "3";}s61;
sound {wavefile { filename = "perception\\item_0007_tongue.wav"; }; description = "4";}s65;
sound {wavefile { filename = "perception\\item_0463_tongue.wav"; }; description = "4";}s66;
sound {wavefile { filename = "perception\\item_0464_tongue.wav"; }; description = "4";}s67;
sound {wavefile { filename = "perception\\item_0467_tongue.wav"; }; description = "4";}s68;
sound {wavefile { filename = "perception\\item_0478_tongue.wav"; }; description = "4";}s81;
sound {wavefile { filename = "perception\\item_0002_tongue.wav"; }; description = "6";}s85;
sound {wavefile { filename = "perception\\item_0066_tongue.wav"; }; description = "6";}s86;
sound {wavefile { filename = "perception\\item_0067_tongue.wav"; }; description = "6";}s87;
sound {wavefile { filename = "perception\\item_0070_tongue.wav"; }; description = "6";}s88;
sound {wavefile { filename = "perception\\item_0081_tongue.wav"; }; description = "6";}s101;
sound {wavefile { filename = "perception\\item_0001_tongue.wav"; }; description = "5";}s105;
sound {wavefile { filename = "perception\\item_0047_tongue.wav"; }; description = "5";}s106;
sound {wavefile { filename = "perception\\item_0048_tongue.wav"; }; description = "5";}s107;
sound {wavefile { filename = "perception\\item_0051_tongue.wav"; }; description = "5";}s108;
sound {wavefile { filename = "perception\\item_0062_tongue.wav"; }; description = "5";}s121;

array {
	sound s21; sound s41; sound s61; sound s81; sound s101; sound s121;
sound s5;  sound s7; sound s8; sound s25; sound s27; sound s28; sound s45; sound s47; sound s48; sound s65; sound s67; sound s68; sound s85; sound s87; sound s88; sound s105;  sound s107; sound s108;	
} sounds;

begin_pcl;
trialstart.present();
system_keyboard.get_input(); 
sounds.shuffle();
mouse mse = response_manager.get_mouse( 1 );
int max_x = display_device.width() / 2;
int min_x = -max_x;
int max_y = display_device.height() / 2;
int min_y = -max_y;
mse.set_min_max( 1, min_x, max_x );
mse.set_min_max( 2, min_y, max_y );
mse.set_restricted( 1, true );
mse.set_restricted( 2, true );

loop 
	int i=1
until
	i> sounds.count() 
begin	   
   stop.set_event_code(sounds[i].description());
	sounds[i].get_wavefile().load();
	stop.set_stimulus (sounds[i]);
	main_trial.present();
	sounds[i].get_wavefile().unload();
   mse.set_xy( 0, 0 );
#sub
sub mouseselection begin   
loop 
   int countfortext = response_manager.total_response_count( 1 )
   until
   response_manager.total_response_count( 1 ) > countfortext
  begin
	mse.poll();
   pic.set_part_x( 1, mse.x() );
   pic.set_part_y( 1, mse.y() );
   pic.present();

if (mse.x()>85 && mse.y()>110 && mse.y()<150&& mse.x()<215)  then 
	texto.set_background_color(255,0,0);
	texto.redraw();
elseif (mse.x()>-215 && mse.y()>110 && mse.y()<150&& mse.x()<-85) then
	textO.set_background_color(255,0,0);
	textO.redraw();
elseif (mse.x()>-215 && mse.y()>-240 && mse.y()<-200&& mse.x()<-85) then
	textE.set_background_color(255,0,0);
	textE.redraw();
elseif (mse.x()>85 && mse.y()>-240 && mse.y()<-200&& mse.x()<215) then
	texte.set_background_color(255,0,0);
	texte.redraw();
elseif (mse.x()>85 && mse.y()>-70 && mse.y()<-30&& mse.x()<215) then
	texteu.set_background_color(255,0,0);
	texteu.redraw();
elseif (mse.x()>-215 && mse.y()>-70 && mse.y()<-30&& mse.x()<-85) then
	textoe.set_background_color(255,0,0);
	textoe.redraw();
else
	texto.set_background_color(0,155,0);
	textO.set_background_color(0,155,0);
	textE.set_background_color(0,155,0);
	texte.set_background_color(0,155,0);
	texteu.set_background_color(0,155,0);
	textoe.set_background_color(0,155,0);
	textoe.redraw();
  	texteu.redraw();
   texte.redraw();
	texte.redraw();
	textE.redraw();
	textO.redraw();
	texto.redraw();
end;
end;

if (mse.x()>85 && mse.y()>110 && mse.y()<150&& mse.x()<215)  then 
result2.present();
elseif (mse.x()>-215 && mse.y()>110 && mse.y()<150&& mse.x()<-85) then
result1.present();
elseif (mse.x()>-215 && mse.y()>-240 && mse.y()<-200&& mse.x()<-85) then
result5.present();
elseif (mse.x()>85 && mse.y()>-240 && mse.y()<-200&& mse.x()<215) then
result6.present();
elseif (mse.x()>85 && mse.y()>-70 && mse.y()<-30&& mse.x()<215) then
result4.present();
elseif (mse.x()>-215 && mse.y()>-70 && mse.y()<-30&& mse.x()<-85) then
result3.present();
else
mouseselection();
	end;
end;
#sub
mouseselection();
	i = i+1
end;

picperception.present();
system_keyboard.get_input();