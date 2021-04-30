scenario = "Pré-entraînement XP"; 
default_font = "Arial Unicode MS"; 
default_font_size = 33; 
begin;
  sound {wavefile { filename = "Sans_titre3.wav"; }; }s5;
  sound {wavefile { filename = "Sans_titre2.wav"; }; }s66;
  text { caption = "现在我们做个练习热身一下\n\n此练习采用对比的方法"; font_size = 40; background_color=0,0,0;}souris1;
  text { caption = "就是说你每次会听到两个元音"; font_size = 40; background_color=0,0,0;}souris2;
  text { caption = "你会看到如下告示"; font_size = 40; background_color=0,0,0;}souris3;
    text { caption = "+"; font_size = 40; background_color=0,0,0;}pic_croix;
  text { caption = "现在练习\n\n/i/    /é/"; font_size = 40; background_color=0,0,0;}souris4;
  text { caption = "然后你会先听到左边的音，即/i/
  
然后是右边的音，即/é/
"; font_size = 40; background_color=0,0,0;}souris5;
  text { caption = "此时请认真听即可"; font_size = 40; background_color=0,0,0;}souris6;
  text { caption = "然后屏幕的中央会出现语音符号，告诉你之后是发音阶段"; font_size = 40; background_color=0,0,0;}souris7;
  text { caption = "这时请你在听到老师发音后立刻跟上并尽力和他的发音一样
  

跟读时可稍微大声点，切忌小声"; font_size = 41; background_color=0,0,0;}souris8;
  text { caption = "练习介绍结束\n\n现在开始热身"; font_size = 41; background_color=0,0,0;}souris9;
  text { caption = "现在练习\n\n"; font_size = 40; background_color=0,0,0;}souris10;
  text { caption = "o"; font_size = 41; background_color=0,0,0;}souris11;
  text { caption = "O"; font_size = 41; background_color=0,0,0;}souris12;
  text { caption = "观察舌头"; font_size = 40; background_color=0,0,0;}souris13;
  text { caption = "听"; font_size = 40; background_color=0,0,0;}souris14;
  text { caption = "听音+发音+模仿"; font_size = 40; background_color=0,0,0;}souris15;
  text { caption = "热身结束\n\n按回车开始正式训练!"; font_size = 40; background_color=0,0,0;}souris16;


#pic_start

trial{
picture {
   text {
      caption = "此阶段为热身阶段\n\n接下来你会看到一段介绍练习的视频";
       font_color = 255,255,255;
   };
   x = 0; y = 0;
};
time=0;
duration=7000;
video { filename = "VERSIONFINALEAUDIO.avi";}versionfinale;
delta_time=7000;}trialstart; 



picture {
text souris16;
x=0;y=0;
}pictureend;


  

trial 
{
sound s5;
}soundpause;
  
trial 
{
sound s66;
}soundpause2;
  
  
picture {
		text { caption = "+"; font_size=50;}ttextevid1;
      x = 30; y = 0;
      }textevid1;
      
      picture {
		text souris14;
      x = 0; y = 0;
      }textecroix;
      
picture {
		text { caption = "-"; font_size=50;}ttextevid2;
      x = 30; y = 0;
      }textevid2;

trial {
picture {
  text souris13;
  x=0;y=0;
   }pic1;
duration=1;
   duration=2800;
  }piclangue;
  
trial {
picture {
  text souris15;
  x=0;y=0;
   }pic3;
   duration=1;
   duration=2500;
  }piclangue3;  
  
trial {
picture {
  text souris14;
  x=0;y=0;
   }pic2;
   duration=1;
  duration=2000;
  }piclangue2;

   video {
      filename = "45_a.avi";
      x=-280; y=0;
      custom_display=true;
      erase = false; 
   } vid1;
   
   video {
      filename = "46_u.avi"; 
      x=300; y=0;
       custom_display=true;
      erase = false; 
} vid2;

trial {
picture textecroix;
   video vid1;
   delta_time=1000;
} trial1;

trial {
picture textecroix;
   video vid2;
} trial2;

trial {
   sound_recording {
		duration = 5000;
		} recording1;
   picture textevid1;
	#duration = 1600;
   video vid1;
   delta_time=1600;
   #duration=2000;
   sound_recording {
		duration = 5000;
		} recording2;
	delta_time=2000;
   picture textevid2;
   #duration = 1600;
   video vid2;
   #duration=2000;
   delta_time=1600;
   sound_recording {
		duration = 5000;
		} recording3;
	delta_time=2000;
   picture textevid1;
   #duration = 1600;
   video vid1;
   #duration=2000;
   delta_time=1600;
   sound_recording {
		duration = 5000;
		} recording4;
   delta_time=2000;
   picture textevid2;
	#duration = 1600;
   video vid2;
   #duration=2000;
   delta_time=1600;
} maintrial;



trial {
picture {
  text souris10;
  x=0;y=100;
    text souris11;
  x=-100;y=0;
    text souris12;
  x=100;y=0;
     };
  duration=3500;
  }pic_change;


trial {
picture {
  text souris1;
  x=0;y=100;
  text souris2;
  x=0;y=-100;
 };
  duration=6000; 
picture {
  text souris3;
  x=0;y=150;
  text souris4;
  x=0;y=-100;
};
  delta_time=6000;
  duration=7500;
picture {
  text souris5;
  x=0;y=0;
  };
  delta_time=7500;
  duration=8500;
picture {
  text souris6;
  x=0;y=0;
  };
  delta_time=8500;
  duration=6500;
picture {
  text souris7;
  x=0;y=150;
  text souris8;
  x=0;y=-100;
  };
  delta_time=6500;
  duration=9500;
picture {
  text souris9;
  x=0;y=0;
  };
  delta_time=9500;
  duration=4500;
}firsttrial;

#PCL part
begin_pcl;
trialstart.present();
firsttrial.present();

array <string> filenames[4] ={"48_i.avi","46_u.avi","47_ou.avi","46_u.avi"};

begin
		loop 
			int i = 1
		until 
			i > 4
	
begin


vid1.set_filename(filenames[i]);
vid2.set_filename(filenames[i+1]);
recording1.set_base_filename(stimulus_directory +filenames[i]);
recording2.set_base_filename(stimulus_directory +filenames[i+1]);
recording3.set_base_filename(stimulus_directory +filenames[i]);
recording4.set_base_filename(stimulus_directory +filenames[i+1]);
loop
            int n=1
           until n>2
           begin
           filenames[i].set_char(n,' ');
           n=n+1;
           end;
loop
            int m=1
           until m>2
           begin
           filenames[i+1].set_char(m,' ');
           m=m+1;
           end;
               
loop
           int count=filenames[i].count();
           int x=1;
           until x>3
           begin
           filenames[i].set_char(count,' ');
           count=count-1;
           x=x+1;
           end;
           
               
loop
           int county=filenames[i+1].count();
           int y=1;
           until y>3
           begin
           filenames[i+1].set_char(county,' ');
           county=county-1;
           y=y+1;
           end;
           
int countmoins=filenames[i].count()-3;
int countmoins2=filenames[i+1].count()-3;

filenames[i].set_char(3,'/');
filenames[i+1].set_char(3,'/');
filenames[i].set_char(countmoins,'/');
filenames[i+1].set_char(countmoins2,'/');
ttextevid1.set_caption(filenames[i]);
ttextevid1.redraw();
ttextevid2.set_caption(filenames[i+1]);
ttextevid2.redraw();
souris11.set_caption(filenames[i]);
souris12.set_caption(filenames[i+1]);
souris11.redraw();
souris12.redraw();
vid1.prepare();
vid2.prepare();
vid1.set_erase(false);
vid2.set_erase(false);
vid1.set_x(-280);
vid1.set_y(0);
vid2.set_x(300);
vid2.set_y(0);
vid1.set_end_frame(43);
vid2.set_end_frame(43);
pic_change.present();
#piclangue.present();
#trial1.present();
#trial2.present();
#soundpause.present();
#piclangue2.present();
trial1.present();
soundpause2.present();
trial2.present();
soundpause.present();
piclangue3.present();
#vid1.prepare();
vid1.set_x(0);
vid1.set_y(0);
vid1.set_end_frame(43);
vid2.set_end_frame(43);
#vid2.prepare();
vid2.set_x(0);
vid2.set_y(0);
vid1.set_erase(true);
vid2.set_erase(true);
maintrial.present();

i=i+2;
end;
end;

pictureend.present();
system_keyboard.get_input();