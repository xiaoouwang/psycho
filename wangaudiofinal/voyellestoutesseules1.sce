	scenario = "Entraînementaudio XP";  
default_font = "Arial Unicode MS"; 
default_font_size = 33; 
begin;

sound {wavefile { filename = "Sans_titre3.wav"; }; }s5;
  sound {wavefile { filename = "Sans_titre2.wav"; }; }s66;
  text { caption = "正式训练开始，我们训练的元音为\n\n /o/(peau)  /O/(porc)  /é/(fée)  /eu/(peu)  /oe/(peur)"; font_size = 40; background_color=0,0,0;}start1;
  text { caption = "舌头"; font_size = 40; background_color=0,0,0;}souris;
  text { caption = "听"; font_size = 40; background_color=0,0,0;}souris2;
  text { caption = "听音+发音+模仿"; font_size = 40; background_color=0,0,0;}souris3;
    text { caption = "听"; font_size = 40; background_color=0,0,0;}souris14;
  text { caption = "现在练习\n\n"; font_size = 40; background_color=0,0,0;}souris4;
 text { caption = "单个元音训练结束，最后我们把几个容易混淆的几个音对比练习一下
 
为了更贴近真实语言环境
我们在元音中加入/p/ /t/ /k/ /f/ /s/ 即 /opo/ /oto/ /oko/, 以此类推
 
 但练习的重心仍是元音
 "; font_size = 40; background_color=0,0,0;}ssuite; 
 text { caption = "o"; font_size = 41; background_color=0,0,0;}souris5;
  text { caption = "O"; font_size = 41; background_color=0,0,0;}souris6;

  text { caption = "训练结束，是时候看看成果了！
  按回车继续"; font_size = 41; background_color=0,0,0;}end;

trial 
{
sound s66;
}soundpause2;

picture {
  text end;
  x=0;y=0; 
  }endend;

trial {
picture {
  text ssuite;
  x=0;y=0; 
     };
  duration=7500;
  }suite;

  
trial {
picture {
  text souris4;
  x=0;y=100; 
    text souris5;
  x=-100;y=0;
    text souris6;
  x=100;y=0;
     };
  duration=3500;
  }pic_change;
  
trial {
picture {
  text souris4;
  x=0;y=100; 
    text souris5;
  x=-150;y=0;
    text souris6;
  x=150;y=0;
     };
  duration=3500;
  }pic_vcv;



trial 
{
sound s5;
}soundpause;
  
      picture {
		text { caption = "+"; font_size=50;}ttextevid1;
      x = 30; y = 0;
on_top = true; 
      }textevid1;
      
      picture {
		text { caption = "-"; font_size=50;}ttextevid2;
      x = 30; y = 0;
on_top = true; 
      }textevid2;

trial {
picture {
  text souris;
  x=0;y=0;
   }pic1;
duration=1;
   duration=2800;
  }piclangue;
  
trial {
picture {
  text souris3;
  x=0;y=0;
   }pic3;
   duration=1;
   duration=2500;
  }piclangue3;  
  
trial {
picture {
  text souris2;
  x=0;y=0;
   }pic2;
   duration=1;
  duration=2000;
  }piclangue2;

   video {
      filename = "01_o.avi";
      x=-280; y=0;
      custom_display=true;
      erase = false; 
   } vid1;
   
   video {
      filename = "02_O.avi"; 
      x=300; y=0;
       custom_display=true;
      erase = false; 
} vid2;

      
      picture {
		text souris14;
      x = 0; y = 0;
      }textecroix;
      

trial {
  picture textecroix;
   video vid1;
   delta_time=1000;
} trial1;

trial {
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
} maintrial1;

trial {
  picture textevid2;
  duration=1600;
} maintrial2;

trial {
  picture textevid2;
   sound_recording {
		duration = 5000;
		} recording2;
    #duration = 1600;
   video vid2;
   #duration=2000;
   delta_time=200;
} maintrial3;

trial {
  picture textevid1;
  duration=1600;
} maintrial4;


trial {  
  picture textevid1;
   sound_recording {
		duration = 5000;
		} recording3;
   video vid1;
   delta_time=200;
} maintrial5;

trial {
   picture textevid2;
   duration=1600;
} maintrial6;
    
 
trial {     
   picture textevid2;
   sound_recording {
		duration = 3500;
		} recording4;
   video vid2;
   delta_time=200;
} maintrial7;
  


begin_pcl;
array <string> filenames[60] ={"04_è.avi", "03_é.avi", "05_eu.avi", "03_é.avi", "48_i.avi", "03_é.avi", "47_ou.avi", "01_o.avi", "05_eu.avi", "01_o.avi", "02_O.avi", "01_o.avi", "47_ou.avi", "02_O.avi","06_oe.avi", "02_O.avi", "01_o.avi", "02_O.avi","03_é.avi", "05_eu.avi", "01_o.avi", "05_eu.avi", "06_oe.avi","05_eu.avi", "04_è.avi", "06_oe.avi","02_O.avi", "06_oe.avi", "05_eu.avi", "06_oe.avi","10_épé.avi","10_ipi.avi","10_été.avi","10_iti.avi","10_iki.avi","10_éké.avi","10_ifi.avi","10_éfé.avi","10_isi.avi","10_ésé.avi","10_opo.avi","11_OpO.avi","10_oto.avi","11_OtO.avi","11_OkO.avi","10_oko.avi","11_OfO.avi","10_ofo.avi","11_OsO.avi","10_oso.avi","10_eupeu.avi","10_oepoe.avi","10_euteu.avi","10_oetoe.avi","10_oefoe.avi","10_eufeu.avi","10_oekoe.avi","10_eukeu.avi","10_oesoe.avi","10_euseu.avi"};
#int nb_test_tongue_items=get_directory_files("\\\\filesrv1\\home\$\\wangxiao\\test", filenames); 
#filenames.shuffle(); # Randomize 


begin
		loop 
			int i = 1
		until 
			i > 60
	
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
souris5.set_caption(filenames[i]);
souris6.set_caption(filenames[i+1]);
souris5.redraw();
souris6.redraw();

vid1.prepare();
vid2.prepare();
vid1.set_erase(false);
vid2.set_erase(false);
vid1.set_x(-280);
vid1.set_y(0);
vid2.set_x(300);
vid2.set_y(0);

if (i<30) 
then
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

elseif (i==31)
then
suite.present();
vid1.set_end_frame(50);
vid2.set_end_frame(50);
pic_vcv.present();
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
vid1.set_end_frame(50);
vid2.set_end_frame(50);
#vid2.prepare();
vid2.set_x(0);
vid2.set_y(0);
vid1.set_erase(true);
vid2.set_erase(true);

else
vid1.set_end_frame(50);
vid2.set_end_frame(50);
pic_vcv.present();
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
vid1.set_end_frame(50);
vid2.set_end_frame(50);
#vid2.prepare();
vid2.set_x(0);
vid2.set_y(0);
vid1.set_erase(true);
vid2.set_erase(true);
end;
recording_manager.stop_all(false);
maintrial1.present();
maintrial2.present();
recording_manager.stop_all(false);
maintrial3.present();
maintrial4.present();
recording_manager.stop_all(false);
maintrial5.present();
maintrial6.present();
recording_manager.stop_all(false);
maintrial7.present();

i=i+2;
end;
end;


endend.present();
system_keyboard.get_input();