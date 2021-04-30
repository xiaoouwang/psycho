scenario = "Production_avant-entrainement XP";  
default_font = "Arial Unicode MS"; 
default_font_size = 33;  
begin;

trial {
picture {
   text {caption = "以下练习包含元音 /O/ (如porc)\n\n准备好后请按回车键";font_size = 42;font_color = 255,255,255;};
   x = 0; y = 0;};
   time=0;
}trialO;
trial {
picture {
   text {caption = "以下练习包含元音 /a/ (如papa)\n\n准备好后请按回车键";font_size = 42;font_color = 255,255,255;};
   x = 0; y = 0;};
   time=0;
}triala;
trial {
picture {
   text {caption = "以下练习包含元音 /é/(如fée)\n\n准备好后请按回车键";font_size = 42;font_color = 255,255,255;};
   x = 0; y = 0;};
   time=0;
}triale;
trial {
picture {
   text {caption = "以下练习包含元音 /è/ (如pêche)\n\n准备好后请按回车键";font_size = 42;font_color = 255,255,255;};
   x = 0; y = 0;};                                                   
   time=0;
}trialE;
trial {
picture {
   text {caption = "以下练习包含元音 /o/ (如peau)\n\n准备好后请按回车键";font_size = 42;font_color = 255,255,255;};
   x = 0; y = 0;};
   time=0;
}trialo;
trial {
picture {
   text {caption = "以下练习包含元音 /eu/ (如peu)\n\n准备好后请按回车键";font_size = 42;font_color = 255,255,255;};
   x = 0; y = 0;};
   time=0;
}trialeu;
trial {
picture {
   text {caption = "以下练习包含元音 /oe/ (如peur)\n\n准备好后请按回车键";font_size = 42;font_color = 255,255,255;};
   x = 0; y = 0;};
   time=0;
}trialoe;
trial {
picture {
   text {caption = "以下练习包含元音 /u/ (如pure)\n\n准备好后请按回车键";font_size = 42;font_color = 255,255,255;};
   x = 0; y = 0;};
   time=0;
}trialy;
trial {
picture {
   text {caption = "以下练习包含元音 /i/ (如pipi)\n\n准备好后请按回车键";font_size = 42;font_color = 255,255,255;};
   x = 0; y = 0;};
   time=0;
}triali;
trial {
picture {
   text {caption = "以下练习包含元音 /ou/ (如pour)\n\n准备好后请按回车键";font_size = 42;font_color = 255,255,255;};
   x = 0; y = 0;};
   time=0;
}trialu;

trial {
picture {
   text {caption = "现在我们记录下你的发音情况\n\n";font_size = 42;font_color = 255,255,255;};
   x = 0; y = 0;};
   time=0;
   duration=3000;
picture {
  text { caption = "你将会看到如下告示:";font_size = 50;};
        x = 0; y =250;
  #text { caption = "Prononcez";font_size = 40;};
   #     x = 0; y = 150;  
  text { caption = "/O/";font_size = 50;font_color=0,255,0;};
        x = 0; y = 50;
  text { caption = "请朗读...\n\n";font_size = 40;font_color=255,0,0;};
         x = 0; y = -200;
        };
       delta_time = 3000;
       duration=5000;
picture {
   text {caption = "告示出现时朗读绿色的符号\n\n此符号可能是单独的元音，比如 /O/\n\n也可能是一段包含此元音的语音，比如 /OpO/\n\n也可能是个单词，比如 porc";font_size = 40;font_color = 255,255,255;};
   x = 0; y = 0;};
   delta_time=5000;
   duration=11500;
}trial_start; 
   
  

array {
   text { caption = "/eu/";  font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/eu/";  font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/eumeu/"; font_size = 50;
       font_color = 0,255,0;}; 
  text { caption = "/euneu/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/eupeu/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/euteu/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/eukeu/"; font_size = 50;
       font_color = 0,255,0;};  
   text { caption = "/eufeu/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/euseu/";  font_size = 50;
       font_color = 0,255,0; }; 
   text { caption = "/euzeu/";  font_size = 50;
       font_color = 0,255,0; }; 
   text { caption = "/euleu/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "peu"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "fameux"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "feu"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "paresseux"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "deux"; font_size = 50;
       font_color = 0,255,0;}; 
} letterseu;

array {
   text { caption = "/a/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/a/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/apa/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/ata/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/aka/"; font_size = 50;font_color = 0,255,0;}; 
   text { caption = "/afa/"; font_size = 50;font_color = 0,255,0;}; 
   text { caption = "/asa/"; font_size = 50;font_color = 0,255,0;}; 
} lettersa;

array {
   text { caption = "/i/";  font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/i/";  font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/ipi/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/iti/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/iki/"; font_size = 50;
       font_color = 0,255,0;};  
          text { caption = "/ifi/"; font_size = 50;
       font_color = 0,255,0;};
          text { caption = "/isi/"; font_size = 50;
       font_color = 0,255,0;};
} lettersi;



array {
   text { caption = "/O/";  font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/O/";  font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/OmO/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/OnO/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/OpO/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/OtO/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/OkO/"; font_size = 50;
       font_color = 0,255,0;};  
   text { caption = "/OfO/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/OsO/";  font_size = 50;
       font_color = 0,255,0; }; 
   text { caption = "/OzO/";  font_size = 50;
       font_color = 0,255,0; }; 
   text { caption = "/OlO/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "porc"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "molle"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "folle"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "sort"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "tort"; font_size = 50;
       font_color = 0,255,0;}; 
} lettersO;

array {
   text { caption = "/o/";  font_size = 50;
       font_color = 0,255,0;}o; 
   text { caption = "/o/";  font_size = 50;
       font_color = 0,255,0;}o2; 
   text { caption = "/omo/"; font_size = 50;
       font_color = 0,255,0;}omo; 
   text { caption = "/ono/"; font_size = 50;
       font_color = 0,255,0;}ono; 
   text { caption = "/opo/"; font_size = 50;
       font_color = 0,255,0;}opo; 
   text { caption = "/oto/"; font_size = 50;
       font_color = 0,255,0;}oto; 
   text { caption = "/oko/"; font_size = 50;
       font_color = 0,255,0;}oko;  
   text { caption = "/ofo/"; font_size = 50;
       font_color = 0,255,0;}ofo; 
   text { caption = "/oso/";  font_size = 50;
       font_color = 0,255,0; }oso; 
   text { caption = "/ozo/";  font_size = 50;
       font_color = 0,255,0; }ozo; 
   text { caption = "/olo/"; font_size = 50;
       font_color = 0,255,0;}olo; 
   text { caption = "peau"; font_size = 50;
       font_color = 0,255,0;}paul; 
   text { caption = "mot"; font_size = 50;
       font_color = 0,255,0;}mot; 
   text { caption = "faux"; font_size = 50;
       font_color = 0,255,0;}faux; 
   text { caption = "morceau"; font_size = 50;
       font_color = 0,255,0;}seau; 
   text { caption = "tôt"; font_size = 50;
       font_color = 0,255,0;}bateau;
} letterso;

array {
   text { caption = "/ou/";  font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/oupou/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/outou/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/oukou/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/oufou/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/ousou/"; font_size = 50;
       font_color = 0,255,0;};  
} lettersu;


array {
   text { caption = "/oe/";  font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/oe/";  font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/oemoe/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/oenoe/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/oepoe/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/oetoe/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/oekoe/"; font_size = 50;
       font_color = 0,255,0;};  
   text { caption = "/oefoe/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/oesoe/";  font_size = 50;
       font_color = 0,255,0; }; 
 text { caption = "/oezoe/";  font_size = 50;
       font_color = 0,255,0; }; 
   text { caption = "/oeloe/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "peur"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "fumeur"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "fleur"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "seul"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "auteur"; font_size = 50;
       font_color = 0,255,0;}; 
} lettersoe;



array {
   text { caption = "/é/";  font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/é/";  font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/émé/"; font_size = 50;
       font_color = 0,255,0;}; 
  text { caption = "/éné/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/épé/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/été/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/éké/"; font_size = 50;
       font_color = 0,255,0;};  
   text { caption = "/éfé/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/ésé/";  font_size = 50;
       font_color = 0,255,0; }; 
 text { caption = "/ézé/";  font_size = 50;
       font_color = 0,255,0; }; 
   text { caption = "/élé/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "pépé"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "mémé"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "café"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "casser"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "télé"; font_size = 50;
       font_color = 0,255,0;}; 
} letterse;



array {
   text { caption = "/u/";  font_size = 50;
       font_color = 0,255,0;}; 
          text { caption = "/u/";  font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/upu/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/utu/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/uku/"; font_size = 50;
       font_color = 0,255,0;};  
   text { caption = "/ufu/"; font_size = 50;
       font_color = 0,255,0;};  
          text { caption = "/usu/"; font_size = 50;
       font_color = 0,255,0;};  
} lettersy;

array {
   text { caption = "/è/";  font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/è/";  font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/èpè/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/ètè/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/èkè/"; font_size = 50;
       font_color = 0,255,0;};  
   text { caption = "/èfè/"; font_size = 50;
       font_color = 0,255,0;}; 
   text { caption = "/èsè/";  font_size = 50;
       font_color = 0,255,0; }; 
} lettersE;

trial {

   sound_recording {
			duration = 4500;
		} training_audio_sound_recording;
		code = "rec_training_audio";
   picture {
  #   text { caption = "Prononcez";font_size = 40;};
   #      x = 0; y = 250;  
       text o;
         x = 0; y = 50;}pic;
   delta_time=50;
   picture {
    # text { caption = "Prononcez";font_size = 40;};
     #    x = 0; y = 250;  
       text o;
         x = 0; y = 50;
    text { caption = "请朗读\n\n";font_size = 40;font_color=255,0,0;};
        x = 0; y = -200;
           }vraipic;
      delta_time=250;
} main_trial;



picture {
   text {
  caption = "第二阶段结束\n\n请按回车进入第三阶段";
       font_size = 40;
   };
   x = 0; y = 0;
} pic_fin; 


##pcl part
begin_pcl;

trial_start.present();

#a
triala.present();
system_keyboard.get_input();
loop 
int i = 1
until i > lettersa.count()
begin
	pic.set_part( 1, lettersa[i] );
	vraipic.set_part( 1, lettersa[i] );
	training_audio_sound_recording.set_base_filename("\\\\filesrv1\\home\$\\wangxiao\\.windows\\Bureau\\wang\\avantshadowing\\a");
   main_trial.present();
system_keyboard.get_input();
recording_manager.stop_all(false);
   i=i+1
end;


#i
triali.present();
system_keyboard.get_input();
loop 
int i = 1
until i > lettersi.count()
begin
	pic.set_part( 1, lettersi[i] );
	vraipic.set_part( 1, lettersi[i] );
	training_audio_sound_recording.set_base_filename("\\\\filesrv1\\home\$\\wangxiao\\.windows\\Bureau\\wang\\avantshadowing\\i");
   main_trial.present();
system_keyboard.get_input();
recording_manager.stop_all(false);
   i=i+1
end;

#uy

trialu.present();
system_keyboard.get_input();
loop 
int i = 1
until i > lettersu.count()
begin
	pic.set_part( 1, lettersu[i] );
	vraipic.set_part( 1, lettersu[i] );
	training_audio_sound_recording.set_base_filename("\\\\filesrv1\\home\$\\wangxiao\\.windows\\Bureau\\wang\\avantshadowing\\u");
   main_trial.present();
system_keyboard.get_input();
recording_manager.stop_all(false);   
i=i+1
end;

trialy.present();
system_keyboard.get_input();
loop 
int i = 1
until i > lettersy.count()
begin
	pic.set_part( 1, lettersy[i] );
	vraipic.set_part( 1, lettersy[i] );
	training_audio_sound_recording.set_base_filename("\\\\filesrv1\\home\$\\wangxiao\\.windows\\Bureau\\wang\\avantshadowing\\y");
   main_trial.present();
system_keyboard.get_input();
recording_manager.stop_all(false);   
i=i+1
end;

#éE

triale.present();
system_keyboard.get_input();
loop 
int i = 1
until i > letterse.count()
begin
	pic.set_part( 1, letterse[i] );
	vraipic.set_part( 1, letterse[i] );
	training_audio_sound_recording.set_base_filename("\\\\filesrv1\\home\$\\wangxiao\\.windows\\Bureau\\wang\\avantshadowing\\e");
   main_trial.present();
system_keyboard.get_input();
recording_manager.stop_all(false);
   i=i+1
end;

trialE.present();
system_keyboard.get_input();
loop 
int i = 1
until i > lettersE.count()
begin
	pic.set_part( 1, lettersE[i] );
	vraipic.set_part( 1, lettersE[i] );
	training_audio_sound_recording.set_base_filename("\\\\filesrv1\\home\$\\wangxiao\\.windows\\Bureau\\wang\\avantshadowing\\E");
   main_trial.present();
system_keyboard.get_input();
recording_manager.stop_all(false);   
i=i+1
end;


#oO
trialo.present();
system_keyboard.get_input();
loop 
int i = 1
until i > letterso.count()
begin
	pic.set_part( 1, letterso[i] );
	vraipic.set_part( 1, letterso[i] );
	training_audio_sound_recording.set_base_filename("\\\\filesrv1\\home\$\\wangxiao\\.windows\\Bureau\\wang\\avantshadowing\\o");
   main_trial.present();
system_keyboard.get_input();
recording_manager.stop_all(false);   
i=i+1
end;


trialO.present();
system_keyboard.get_input(); 
loop 
int i = 1
until i > lettersO.count()
begin
	pic.set_part( 1, lettersO[i] );
	vraipic.set_part( 1, lettersO[i] );
	training_audio_sound_recording.set_base_filename("\\\\filesrv1\\home\$\\wangxiao\\.windows\\Bureau\\wang\\avantshadowing\\O");
   main_trial.present();
system_keyboard.get_input();
recording_manager.stop_all(false);
   i=i+1
end;

#euoe
trialeu.present();
system_keyboard.get_input();
loop 
int i = 1
until i > letterseu.count()
begin
	pic.set_part( 1, letterseu[i] );
	vraipic.set_part( 1, letterseu[i] );
	training_audio_sound_recording.set_base_filename("\\\\filesrv1\\home\$\\wangxiao\\.windows\\Bureau\\wang\\avantshadowing\\eu");
   main_trial.present();
   system_keyboard.get_input();
recording_manager.stop_all(false);   
i=i+1
end;

trialoe.present();
system_keyboard.get_input();
loop 
int i = 1
until i > lettersoe.count()
begin
	pic.set_part( 1, lettersoe[i] );
	vraipic.set_part( 1, lettersoe[i] );
	training_audio_sound_recording.set_base_filename("\\\\filesrv1\\home\$\\wangxiao\\.windows\\Bureau\\wang\\avantshadowing\\oe");
   main_trial.present();
system_keyboard.get_input();
recording_manager.stop_all(false);
   i=i+1
end;
pic_fin.present();
system_keyboard.get_input();