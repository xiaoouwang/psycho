scenario = "familiXP";
default_font = "Arial Unicode MS"; 
default_font_size = 33;   

begin;
trial{
	picture {
		text {
			caption = "欢迎参加语音改善项目\n\n在此次训练中你将练习六个元音\n\n/é/   /eu/   /oe/   /o/   /O/";
			 font_size = 36;
			 font_color = 255,255,255;
		};
		x = 0; y = 50;
		
	} pic_start_test_audio;
	duration=8500;
}trial_start_test_audio;


trial{
picture {
   text {
      caption = "第一阶段开始\n\n此阶段旨在让你熟悉训练中使用的语音符号\n\n每一个符号由四段语音说明
集中注意听即可
";
       font_size = 36;
       font_color = 255,255,255;
   };
   x = 0; y = 50;
} pic_start2;
duration=9000;
picture {
   text {
      caption = "括号中的单词提醒你语音符号的发音方法\n\n现在请按回车键开始项目第一阶段";
       font_size = 36;
       font_color = 255,255,255;
   };
   x = 0; y = 50;
} pic_start3;
delta_time=9000;
}trialadd;

picture {
   text {
      caption = "你现在看到的是语音符号总表
   
/a/ papa      /i/ pipi     /ou/ poulet     /u/ pure      /o/ peau

/é/ fée      /è/ pêche     /eu/ peu       /oe/ peur      /O/  porc

准备好后请按回车键开始项目第二阶段\n(不用担心，之后我们还有很多范例提示你这些符号的发音)";
      font_size = 33;
      font_color = 255,255,255;
   };
   x = 0; y = 0;
  } pic2; 


trial{
picture {
     text {
    caption = "1. /o/\n(peau 皮肤)\n\n";
    font_size=50;
    };
x=0; y=150;
    text {
    caption = "peau       /o/       /oto/       /oko/";
    /*
    \n\n/ofo/       /ovo/       /oro/\n\n
    \n\n/OfO/       /OvO/       /OrO/\n\n
    \n\n/eufeu/       /euveu/       /eureu/\n\n
    \n\n/oefoe/       /oevoe/       /oeroe/\n\n
    \n\n/efe/       /eve/       /ere/\n\n
\n\n/èfè/       /èvè/       /èrè/\n\n
\n\n/ufu/       /uvu/       /uru/\n\n
    \n\n/yfy/       /yvy/       /yry/\n\n\n\n/è̃fè̃/       /è̃vè̃/       /è̃rè̃/\n\n
   */ 
     font_size=42;
    };
x=0; y=-50;};
		
		stimulus_event {
			sound {
				wavefile {filename = "petito\\1.wav";}trial_training_sound_filename;
							} training_sound;
			code = "Training Audio" ;
			deltat = 900;
							}trial_training_stimulus_code;
}trial_training;

trial{
picture {
     text {
    caption = "2. /O/\n(porc 猪肉)\n\n";
    font_size=50;
    };
x=0; y=150;
    text {
    caption = "porc       /O/       /OtO/       /OkO/";
     font_size=42;
    };
x=0; y=-50;};
		
		stimulus_event {
			sound {
				wavefile {filename = "grando\\1.wav";}trial_training_soundO_filename;
							} training_soundO;
			code = "Training Audio" ;
			deltat = 900;
							}trial_training_stimulus_codeO;
}trial_trainingO;

trial{
picture {
     text {
    caption = "3. /eu/ \n(peu 少)\n\n";
    font_size=50;
    };
x=0; y=150;
    text {
    caption = "peu       /eu/       /euteu/       /eukeu/";
     font_size=42;
    };
x=0; y=-50;};
		
		stimulus_event {
			sound {
				wavefile {filename = "eu\\1.wav";}trial_training_soundeu_filename;
							} training_soundeu;
			deltat = 900;
							}trial_training_stimulus_codeeu;
}trial_trainingeu;

trial{
picture {
     text {
    caption = "4. /oe/ \n(peur 害怕)\n\n";
    font_size=50;
    };
x=0; y=150;
    text {
    caption = "peur       /oe/       /oetoe/       /oekoe/";
     font_size=42;
    };
x=0; y=-50;};
		
		stimulus_event {
			sound {
				wavefile {filename = "oe\\1.wav";}trial_training_soundoe_filename;
							} training_soundoe;
			deltat = 900;
							}trial_training_stimulus_codeoe;
}trial_trainingoe;

trial{
picture {
     text {
    caption = "5. /é/ \n(fée 仙女)\n\n";
    font_size=50;
    };
x=0; y=150;
    text {
    caption = "fée       /é/       /été/       /éké/";
     font_size=42;
    };
x=0; y=-50;};
		
		stimulus_event {
			sound {
				wavefile {filename = "e\\1.wav";}trial_training_sounde_filename;
							} training_sounde;
			deltat = 900;
							}trial_training_stimulus_codee;
}trial_traininge;

trial{
picture {
     text {
    caption = "5. /è/ \n(pêche 桃子)\n\n";
    font_size=50;
    };
x=0; y=150;
    text {
    caption = "pêche       /è/       /ètè/       /èkè/";
     font_size=42;
    };
x=0; y=-50;};
		
		stimulus_event {
			sound {
				wavefile {filename = "grande\\1.wav";}trial_training_soundE_filename;
							} training_soundE;
			deltat = 900;
							}trial_training_stimulus_codeE;
}trial_trainingE;

trial{
picture {
     text {
    caption = "5. /ou/ \n(pour 为了)\n\n";
    font_size=50;
    };
x=0; y=150;
    text {
    caption = "pour       /ou/       /outou/       /oukou/";
     font_size=42;
    };
x=0; y=-50;};
		
		stimulus_event {
			sound {
				wavefile {filename = "u\\1.wav";}trial_training_soundu_filename;
							} training_soundu;
			deltat = 900;
							}trial_training_stimulus_codeu;
}trial_trainingu;

trial{
picture {
     text {
    caption = "6. /u/ \n(pure 纯)\n\n";
    font_size=50;
    };
x=0; y=150;
    text {
    caption = "pure       /u/       /utu/       /uku/";
     font_size=42;
    };
x=0; y=-50;};
		
		stimulus_event {
			sound {
				wavefile {filename = "y\\1.wav";}trial_training_soundy_filename;
							} training_soundy;
			deltat = 900;
							}trial_training_stimulus_codey;
}trial_trainingy;



##partie pcl

begin_pcl;

trial_start_test_audio.present();
trialadd.present();
system_keyboard.get_input();


array <string> training_sound_filenames[4] = { "petito\\1.wav", "petito\\2.wav", "petito\\3.wav", "petito\\4.wav"/* "petito\\5.wav", "petito\\6.wav", "petito\\7.wav"*/} ;

begin
		loop 
			int i = 1
		until  i > 4
		begin
			trial_training_sound_filename.unload();
			trial_training_sound_filename.set_filename(training_sound_filenames[i]);
			trial_training_sound_filename.load();
			trial_training.present();
	i=i+1 ;
	end;
end;


array <string> training_soundO_filenames[4] = { "grando\\1.wav", "grando\\2.wav", "grando\\3.wav", "grando\\4.wav"/*"grando\\5.wav", "grando\\6.wav", "grando\\4.wav"*/} ;

begin
		loop 
			int i = 1
		until 
			i > 4
		begin
			trial_training_soundO_filename.unload();
			trial_training_soundO_filename.set_filename(training_soundO_filenames[i]);
			trial_training_soundO_filename.load();
			trial_trainingO.present();
	i=i+1 ;
	end;
end;

array <string> training_soundeu_filenames[4] = { "eu\\1.wav", "eu\\2.wav", "eu\\3.wav", "eu\\4.wav"/* "eu\\5.wav", "eu\\6.wav", "eu\\4.wav"*/} ;

begin
		loop 
			int i = 1
		until 
			i > 4
		begin
			trial_training_soundeu_filename.unload();
			trial_training_soundeu_filename.set_filename(training_soundeu_filenames[i]);
			trial_training_soundeu_filename.load();
			trial_trainingeu.present();
	i=i+1 ;
	end;
end;

array <string> training_soundoe_filenames[4] = { "oe\\1.wav", "oe\\2.wav", "oe\\3.wav", "oe\\4.wav"/* "oe\\5.wav", "oe\\6.wav", "oe\\4.wav"*/} ;

begin
		loop 
			int i = 1
		until 
			i > 4
		begin
			trial_training_soundoe_filename.unload();
			trial_training_soundoe_filename.set_filename(training_soundoe_filenames[i]);
			trial_training_soundoe_filename.load();
			trial_trainingoe.present();
	i=i+1 ;
	end;
end;

array <string> training_sounde_filenames[4] = {"e\\1.wav", "e\\2.wav", "e\\3.wav", "e\\4.wav"/*"e\\5.wav", "e\\6.wav", "e\\4.wav"*/};

begin
		loop 
			int i = 1
		until 
			i > 4
		begin
			trial_training_sounde_filename.unload();
			trial_training_sounde_filename.set_filename(training_sounde_filenames[i]);
			trial_training_sounde_filename.load();
			trial_traininge.present();
	i=i+1 ;
	end;
end;

array <string> training_soundE_filenames[4]= {"grande\\1.wav", "grande\\2.wav", "grande\\3.wav", "grande\\4.wav"/*"grande\\5.wav", "grande\\6.wav", "grande\\4.wav"*/} ;

begin
		loop 
			int i = 1
		until 
			i > 4
		begin
			trial_training_soundE_filename.unload();
			trial_training_soundE_filename.set_filename(training_soundE_filenames[i]);
			trial_training_soundE_filename.load();
			trial_trainingE.present();
	i=i+1 ;
	end;
end;


array <string> training_soundu_filenames[4] = {"u\\1.wav", "u\\2.wav", "u\\3.wav", "u\\4.wav"/*"u\\5.wav", "u\\6.wav", "u\\4.wav"*/} ;

begin
		loop 
			int i = 1
		until 
			i > 4
		begin
			trial_training_soundu_filename.unload();
			trial_training_soundu_filename.set_filename(training_soundu_filenames[i]);
			trial_training_soundu_filename.load();
			trial_trainingu.present();
	i=i+1 ;
	end;
end;

array <string> training_soundy_filenames[4] = {"y\\1.wav", "y\\2.wav", "y\\3.wav", "y\\4.wav"/*"y\\5.wav", "y\\6.wav", "y\\4.wav"*/} ;

begin
		loop 
			int i = 1
		until 
			i > 4
		begin
			trial_training_soundy_filename.unload();
			trial_training_soundy_filename.set_filename(training_soundy_filenames[i]);
			trial_training_soundy_filename.load();
			trial_trainingy.present();
	i=i+1 ;
	end;
end;

pic2.present();
system_keyboard.get_input(); 