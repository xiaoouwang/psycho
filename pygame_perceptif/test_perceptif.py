# -*- coding: utf-8 -*-
# wait for the sound to finish before going to the reaction time test? pas la peine
# Xiaoou Wang, xiaoouwang.github.io
# test_perceptif.py
# Released under a "Simplified BSD" license

from __future__ import division
from pygame.locals import *
from datetime import datetime
import pygame,os,random,sys


def main():

    draw_welcome(window, textFont, textColor, textBackground, textSize)
    filenames=[f for f in os.listdir(input_path) if os.path.isfile(os.path.join(input_path,f)) and f.endswith(".wav")]            # list of input files, here ended by .wav
    filenames=filenames*3    # each stimulus is repeated 3 times

    # Preparation for familiarization test
    random.shuffle(filenames)  # randomization
    test = 'test'
    print 'starting test'
    for filename1 in filenames:
        do_trial(filename1,test)
    # Preparation for the real test
    random.shuffle(filenames)
    draw_realtest(window, textFont, textColor, textBackground, textSize)
    experience = 'experience'
    print 'starting experiment'
    for i in range(len(filenames)):
        if i%pause_size == 0 and i !=0: draw_pause(window, textFont, textColor, textBackground, textSize)
        do_trial(filenames[i], experience)
    draw_thanks(window, textFont, textColor, textBackground, textSize)

def draw_welcome(surface, textFont, text_color, text_background, text_size):

    ### Draw the welcome screen

    surface.fill(backgroundColor)
    LppLogo = pygame.image.load(os.path.dirname(os.path.realpath(__file__)) +'/LogoLPP.bmp').convert()
    SorbonneLogo = pygame.image.load(os.path.dirname(os.path.realpath(__file__)) + '/LogoSorbonne.bmp').convert()
    font  = pygame.font.Font(os.path.dirname(os.path.realpath(__file__))+ textFont, text_size)
    text1 = font.render((u'Bienvenue au test de perception.'), True, text_color, text_background)
    text2 = font.render((u'Vous allez entendre des segments sonores contenant une voyelle française.'), True, text_color, text_background)
    text3 = font.render((u'Identifiez la voyelle en cliquant sur le bouton correspondant.'), True, text_color, text_background)
    text4 = font.render((u'Puis evaluez la qualité de la prononciation sur une échelle de 4.'), True, text_color, text_background)
    text5 = font.render((u'Appuyez sur ESPACE pour commencer la phase de familiarisation.'), True, text_color, text_background)
    text1_size,text2_size,text3_size, text4_size, text5_size = text1.get_size(),text2.get_size(),text3.get_size(),text4.get_size(), text5.get_size()
    LppLogo = pygame.transform.smoothscale(LppLogo,[150,150])
    SorbonneLogo = pygame.transform.smoothscale(SorbonneLogo,[150,150])
    surface.blit(text1, [0.5*W - text1_size[0]/2, 0.3*H])
    surface.blit(text2, [0.5*W  - text2_size[0]/2 , 0.4*H])
    surface.blit(text3, [0.5*W  - text3_size[0]/2, 0.5*H])
    surface.blit(text4, [0.5*W - text4_size[0]/2, 0.6*H])
    surface.blit(text5, [0.5*W - text5_size[0]/2, 0.7*H])
    surface.blit(LppLogo,[0.5*W-300, 0.1*H])
    surface.blit(SorbonneLogo,[0.5*W+100, 0.1*H])
    pygame.draw.rect(surface, BLUE, [0.5*W - text5_size[0]/2-10, 0.7*H-10, text5_size[0]+20, text5_size[1]+20],3)
    pygame.display.update()
    waiting_response()

def draw_thanks(surface, textFont, text_color, text_background, text_size):

    ### Draw the exit screen

    surface.fill(backgroundColor)
    font  = pygame.font.Font(os.path.dirname(os.path.realpath(__file__))+ textFont, text_size)
    text3 = font.render((u'Merci de votre participation!'), True, text_color, text_background)
    text4 = font.render((u'La science progresse grâce à chacun de nous tous!'), True, text_color, text_background)
    text5 = font.render((u'Vous pouvez sortir voir le moniteur maintenant.'), True, text_color, text_background)
    text3_size, text4_size, text5_size = text3.get_size(), text4.get_size(), text5.get_size()
    surface.blit(text3, [0.5*W  - text3_size[0]/2, 0.3*H])
    surface.blit(text4, [0.5*W - text4_size[0]/2, 0.4*H])
    surface.blit(text5, [0.5*W - text5_size[0]/2, 0.5*H])
    pygame.draw.rect(surface, BLUE, [0.5*W - text5_size[0]/2-10, 0.5*H-10, text5_size[0]+20, text5_size[1]+20],3)
    pygame.display.update()
    waiting_response()


def create_button(surface, color, x, y, length, height, textSize, text, text_background):

    ### Draw buttons

    pygame.draw.rect(surface, color, (x,y,length,height), 0)
    pygame.draw.rect(surface, BLACK, (x,y,length,height), 1)
    #RoundedRect(surface,x,y,length,height,SILVERGREY,0.2)
    fontButtonText = pygame.font.Font(os.path.dirname(os.path.realpath(__file__))+buttonTextfont, textSize)
    buttonText = fontButtonText.render(text, True, [0,0,0], text_background)
    surface.blit(buttonText, ((x+length/2) - buttonText.get_width()/2, (y+height/2) - buttonText.get_height()/2))

def draw_board(surface, button_text_background_color, score_buttonLength, list_x, list_y,  buttonLength, buttonHeight, textSize, text_background_color):

    ### Draw the vowel board

    create_button(surface, button_text_background_color, list_x[0],  list_y[0],  buttonLength, buttonHeight,    textSize,        u"/a/ (pas)",    text_background_color)
    create_button(surface, button_text_background_color, list_x[1],  list_y[1],  buttonLength, buttonHeight,    textSize,        u"/i/ (pi)",     text_background_color)
    create_button(surface, button_text_background_color, list_x[2],  list_y[2],  buttonLength, buttonHeight,    textSize,        u"/u/ (poux)",   text_background_color)
    create_button(surface, button_text_background_color, list_x[3],  list_y[3],  buttonLength, buttonHeight,    textSize,        u"/y/ (pu)",     text_background_color)
    create_button(surface, button_text_background_color, list_x[4],  list_y[4],  buttonLength, buttonHeight,    textSize,        u"/e/ (pépé)",   text_background_color)
    create_button(surface, button_text_background_color, list_x[5],  list_y[5],  buttonLength, buttonHeight,    textSize,        u"/ɛ/ (paix)",   text_background_color)
    create_button(surface, button_text_background_color, list_x[6],  list_y[6],  buttonLength, buttonHeight,    textSize,        u"/o/ (peau)",   text_background_color)
    create_button(surface, button_text_background_color, list_x[7],  list_y[7],  buttonLength, buttonHeight,    textSize,        u"/ɔ/ (porc)",   text_background_color)
    create_button(surface, button_text_background_color, list_x[8],  list_y[8],  buttonLength, buttonHeight,    textSize,        u"/ø/ (peu)",    text_background_color)
    create_button(surface, button_text_background_color, list_x[9],  list_y[9],  buttonLength, buttonHeight,    textSize,        u"/œ/ (peur)",   text_background_color)
    create_button(surface, button_text_background_color, list_x[10], list_y[10], buttonLength, buttonHeight,    textSize,        u"/ɛ̃/ (pain)",  text_background_color)
    create_button(surface, button_text_background_color, list_x[11], list_y[11], buttonLength, buttonHeight,    textSize,        u"/ɑ̃/ (pente)", text_background_color)
    create_button(surface, button_text_background_color, list_x[12], list_y[12], buttonLength, buttonHeight,    textSize,        u"/ɔ̃/ (pont)",  text_background_color)
    font_top = pygame.font.Font(os.path.dirname(os.path.realpath(__file__))+'/TimesNewRomanBold.ttf', 45)
    text1 = font_top.render((u'Choisissez la voyelle entendue'), True, BLACK, YELLOW)
    text1_size = text1.get_size()
    pygame.draw.rect(surface, YELLOW, [0.5*W - text1_size[0]/2-10, 0.1*H-10, text1_size[0]+20, text1_size[1]+20],0)
    pygame.draw.rect(surface, BLUE, [0.5*W - text1_size[0]/2-10, 0.1*H-10, text1_size[0]+20, text1_size[1]+20],2)
    surface.blit(text1, [0.5*W - text1_size[0]/2, 0.1*H])
    create_button(surface, button_text_background_color, X1, Y1, score_buttonLength,    buttonHeight,    textSize,        u"1 (mauvais)",    text_background_color)
    create_button(surface, button_text_background_color, X2, Y2, score_buttonLength,    buttonHeight,    textSize,        u"2 (petit accent)", text_background_color)
    create_button(surface, button_text_background_color, X3, Y3, score_buttonLength,    buttonHeight,    textSize,        u"3 (bon)",             text_background_color)
    create_button(surface, button_text_background_color, X4, Y4, score_buttonLength,    buttonHeight,    textSize,        u"4 (excellent)",       text_background_color)
    text2 = font_top.render((u'Donnez une note'), True, BLACK, LIGHTGREY)
    text2_size = text2.get_size()
    pygame.draw.rect(surface, BLUE, [0.5*W - text2_size[0]/2-10, 0.7*H-10, text2_size[0]+20, text2_size[1]+20],2)
    surface.blit(text2, [0.5*W - text2_size[0]/2, 0.7*H])


def draw_realtest(surface, text_font, text_color, text_background, text_size):

    ### Draw the pre-realtest screen

    surface.fill(backgroundColor)
    text_font = pygame.font.Font(os.path.dirname(os.path.realpath(__file__))+text_font, text_size)
    text1 = text_font.render((u'La phase de familiarisation est maintenant terminée.'), True, text_color, text_background)
    text2 = text_font.render((u'''Appuyez sur ESPACE pour commencer l'expérience.'''), True, text_color, text_background)
    text1_size, text2_size = text1.get_size(),text2.get_size()
    surface.blit(text1, [0.5*W - text1_size[0]/2, 0.4*H])
    surface.blit(text2, [0.5*W  - text2_size[0]/2 , 0.5*H])
    pygame.draw.rect(surface, BLUE, [0.5*W - text2_size[0]/2-10, 0.5*H-10, text2_size[0]+20, text2_size[1]+20],3)
    pygame.display.update()
    waiting_response()

def draw_pause(surface, text_font, text_color, text_background, text_size):

    ### Draw the pause screen

    surface.fill(backgroundColor)
    text_font = pygame.font.Font(os.path.dirname(os.path.realpath(__file__))+text_font, text_size)
    text1 = text_font.render((u'Vous pouvez prendre une pause si vous voulez.'), True, text_color, text_background)
    text2 = text_font.render((u'''Après la pause, appuyez sur ESPACE pour continuer l'expérience.'''), True, text_color, text_background)
    text1_size, text2_size = text1.get_size(),text2.get_size()
    surface.blit(text1, [0.5*W - text1_size[0]/2, 0.4*H])
    surface.blit(text2, [0.5*W  - text2_size[0]/2 , 0.5*H])
    pygame.draw.rect(surface, BLUE, [0.5*W - text2_size[0]/2-10, 0.5*H-10, text2_size[0]+20, text2_size[1]+20],3)
    pygame.display.update()
    waiting_response()

def detect_context(filename):

    ###  Detect the context based on filename

    context = 'voise'
    code = 0
    if 'p' in filename:
        context = 'plosive'
        code = 1
    elif 's' in filename:
        context = 'fricative'
        code = 2
    return context, code

def detect_stimulus(filename):

    ### Detect the vowel stimulus based on filename

    stimulus= 'undefined'
    stimulus_code = 'undefined'
    dict_stimulus = {'ain':11, 'an':12, 'on':13,  'u':3 , 'y':4, 'e':5, 'e2':6, 'eu':9, 'oe':10, 'o2':8, }
    if 'a' in filename:
        stimulus, stimulus_code = 'a', 1
    elif 'i' in filename:
        stimulus, stimulus_code = 'i', 2
    elif 'o' in filename:
        stimulus, stimulus_code = 'o', 7
    for i in dict_stimulus.keys():
        if i in filename:
            stimulus = i
            stimulus_code = dict_stimulus[i]
    return stimulus, stimulus_code

def mouse_over_vowelbutton(x, y, list_left,list_top):

    ### Detect if the mouse is over a vowel button and return the topleft coordinates of the button if yes, if no, return none,none for coordinates

    for left_coord in list_left[0:4]:
        for top_coord in list_top[0:4]:
            boxRect = pygame.Rect(left_coord, top_coord, vowel_buttonLength, buttonHeight)
            if boxRect.collidepoint(x, y):
                return (left_coord, top_coord)
    for left_coord in list_left[4:8]:
        for top_coord in list_top[4:8]:
            boxRect2 = pygame.Rect(left_coord, top_coord, vowel_buttonLength, buttonHeight)
            if boxRect2.collidepoint(x, y):
                return (left_coord, top_coord)
    for left_coord in list_left[8:13]:
        for top_coord in list_top[8:13]:
            boxRect3 = pygame.Rect(left_coord, top_coord, vowel_buttonLength, buttonHeight)
            if boxRect3.collidepoint(x, y):
                return (left_coord, top_coord)
    return (None, None)

def highlight_scoretext(surface):

    ### Highlight the scorebuttons if mouseover

    font = pygame.font.Font(os.path.dirname(os.path.realpath(__file__)) + textFont, textSize)
    text2 = font.render((u'Donnez une note'), True, BLACK, YELLOW)
    text2_size = text2.get_size()
    pygame.draw.rect(surface, YELLOW, [0.5*W - text2_size[0]/2-10, 0.7*H-10, text2_size[0]+20, text2_size[1]+20],0)
    pygame.draw.rect(surface, BLUE, [0.5*W - text2_size[0]/2-10, 0.7*H-10, text2_size[0]+20, text2_size[1]+20],2)
    surface.blit(text2, [0.5*W - text2_size[0]/2, 0.7*H])

def mouse_over_scorebutton(x, y, list_left,list_top):

    ### Detect if the mouse is over a vowel button and return the topleft coordinates of the button if yes, if no, return none,none for coordinates
    for left_coord in list_left:
        for top_coord in list_top:
            boxRect = pygame.Rect(left_coord, top_coord, score_buttonLength+50, buttonHeight)
            if boxRect.collidepoint(x, y):
                return (left_coord, top_coord)
    return (None, None)

def detect_response(x,y):

    ### Detect the vowel stimulus based on the coordinates of the button clicked

    response= 'undefined'
    code_response = 'undefined'
    if x==Xa and y==Ya:
        response='a'
        code_response  = 1
    elif x==Xi and y==Yi:
        response='i'
        code_response  = 2
    elif x==Xu and y==Yu:
        response='u'
        code_response  = 3
    elif x==Xy and y==Yy:
        response='y'
        code_response  = 4
    elif x==Xe and y==Ye:
        response='e'
        code_response  = 5
    elif x==XE and y==YE:
        response='e2'
        code_response  = 6
    elif x==Xeu and y==Yeu:
        response='eu'
        code_response  = 9
    elif x==Xoe and y==Yoe:
        response='oe'
        code_response  = 10
    elif x==Xo and y==Yo:
        response='o'
        code_response  = 7
    elif x==XO and y==YO:
        response='o2'
        code_response  = 8
    elif x==Xain and y==Yain:
        response='ain'
        code_response  = 11
    elif x==Xan and y==Yan:
        response='an'
        code_response  = 12
    elif x==Xon and y==Yon:
        response='on'
        code_response  = 13
    elif x==X1 and y==Y1:
        response= 1
    elif x==X2 and y==Y2:
        response= 2
    elif x==X3 and y==Y4:
        response= 3
    elif x==X4 and y==Y4:
        response= 4
    return response, code_response

def drawHighlightBox(x, y, buttonLength, buttonHeight):

    ### Draw highlight box for vowelbuttons if mouseover

    pygame.draw.rect(window, BLUE, (x - 5, y - 5, buttonLength + 10, buttonHeight + 10), 4)

def waiting_response():

    while True:
        for event in pygame.event.get(): # event handling loop
            if event.type == QUIT or (event.type == KEYUP and event.key == K_ESCAPE):
                pygame.quit()
                sys.exit()
            elif event.type == KEYUP and event.key == K_SPACE:
                return

def do_trial(soundFile,which_logfile):

        ### Main event-handling loop

        #time.sleep(1)
    window.fill(backgroundColor)
    draw_board(window, buttonBackground, score_buttonLength, list_left_vowels, list_top_vowels,  vowel_buttonLength, buttonHeight, button_textSize, textBackground)
    pygame.display.update()
    mousex,mousey = 0,0
    state = True
    choosing_vowels = True
    pygame.mouse.set_pos([W/2, H/2])
    pygame.time.wait(isi)
    #music = pyglet.media.load(os.path.join(input_path,soundFile), streaming=False)
    #music = pyglet.media.load(os.path.join(input_path,soundFile))
    stimulus = pygame.mixer.Sound(os.path.join(input_path,soundFile))   #the mixer module seems to play the sound with a weird sample frequency
    stimulus.play()
    #music.play()
    #pyglet.app.run()
    pygame.event.get()    # throw away all preceding events
    ticks0 = pygame.time.get_ticks()
    #pyglet.app.run()
    #pygame.mixer.music.load(soundFile)
    #pygame.mixer.music.play()
    while state: # main game loop
        window.fill(backgroundColor)
        mouseClicked = False
        draw_board(window, buttonBackground, score_buttonLength, list_left_vowels, list_top_vowels,  vowel_buttonLength, buttonHeight, button_textSize, textBackground)
        #AAfilledRoundedRect(window,(50,50,200,50),(200,20,20),0.5,'fccfff',(0,0,0))
        for event in pygame.event.get(): # event handling loop
            if event.type == QUIT or (event.type == KEYUP and event.key == K_ESCAPE):
                pygame.quit()
                sys.exit()
            elif event.type == MOUSEMOTION:
                mousex, mousey = event.pos
            elif event.type == MOUSEBUTTONUP:
                mousex, mousey = event.pos
                mouseClicked = True
        if mousey>0.7*H and choosing_vowels == True:
            pygame.mouse.set_pos([mousex, 0.7*H])
        boxx, boxy = mouse_over_vowelbutton(mousex, mousey,list_left_vowels,list_top_vowels)
        if boxx != None and boxy != None:
            drawHighlightBox(boxx, boxy, vowel_buttonLength, buttonHeight)
            if mouseClicked:
                rt = pygame.time.get_ticks() - ticks0
                choosing_vowels = False
                pygame.mouse.set_pos([0.5*W, 0.85*H])
                mousey = H
                response=detect_response(boxx,boxy)[0]
                response_code=detect_response(boxx,boxy)[1]
                boxx,boxxy= None, None
        if mousey<=0.7*H and choosing_vowels == False :
            pygame.mouse.set_pos([mousex, 0.7*H])
        if choosing_vowels == False :
            highlight_scoretext(window)
        boxx2, boxy2 = mouse_over_scorebutton(mousex, mousey,list_left_score,list_top_score)
        if boxx2 != None and boxy2 != None:
            drawHighlightBox(boxx2, boxy2, score_buttonLength, buttonHeight)
            if mouseClicked:
                score_response = detect_response(boxx2,boxy2)[0]
                stimulus_name = detect_stimulus(soundFile[:-4])[0]
                stimulus_code = detect_stimulus(soundFile[:-4])[1]
                context = detect_context(soundFile)[0]
                context_code =  detect_context(soundFile)[1]
                if which_logfile == 'test':
                    print >>logfileTest, subj, "\t", soundFile[:-4], "\t", stimulus_name, "\t", response, "\t",stimulus_code, "\t",response_code, "\t",score_response, "\t",context, "\t",context_code, "\t",  rt
                elif which_logfile == 'experience':
                    print >>logfile, subj, "\t", soundFile[:-4], "\t", stimulus_name, "\t", response, "\t",stimulus_code, "\t",response_code, "\t",score_response, "\t",context, "\t",context_code, "\t", rt
                state=False
        pygame.display.update()

if __name__ == '__main__':

    input_path = os.path.dirname(os.path.realpath(__file__)) + '/input/'

    SILVERGREY = (192, 192, 192)    # button color
    LIGHTGREY  = (220, 220, 220)    # background color
    BLUE       = (  0,   0, 255)
    YELLOW     = (255, 255,   0)
    BLACK      = (  0,   0,   0)

    # Define the button's and the text's appearance
    vowel_buttonLength = 130
    score_buttonLength = 170
    buttonHeight = vowel_buttonLength*0.618

    textColor = BLACK
    textBackground = SILVERGREY
    buttonBackground = SILVERGREY
    backgroundColor = LIGHTGREY
    textSize = 45   #  for all the texts other than the board
    button_textSize = 25 # for the buttons
    textFont = '/TimesNewRomanBold.ttf'   # font for texts other than buttons
    buttonTextfont = '/Calibri.ttf'

    pygame.init()

    # Prepare subject's profile and logfile
    subj = raw_input('subject name: ')
    subj = ''.join(subj.split())   # remove all the whitespaces of the subject's input
    #subj.replace(" ", "")
    exp_time = str(datetime.now())
    for c in ('-',':', ' '): exp_time = exp_time.replace(c,'')
    logfileTest = open((os.path.dirname(os.path.realpath(__file__))+ '/' + exp_time[4:12] + subj + 'Test.txt'), 'w')
    logfile = open((os.path.dirname(os.path.realpath(__file__))+ '/' + exp_time[4:12]  + subj + '.txt'), 'w')

    # create two logfiles to record subject's response
    print >>logfile, 'SUBJ', "\t", 'FILENAME',"\t", 'STIMULUS',"\t", 'RESPONSE', "\t",'STIMULUS_CODE',"\t", 'RESPONSE_CODE', "\t",'SCORE', "\t",'CONTEXTE',"\t", 'CONTEXTE_CODE', "\t",'Reaction_Time'
    print >>logfileTest, 'SUBJ', "\t", 'FILENAME',"\t", 'STIMULUS',"\t", 'RESPONSE', "\t",'STIMULUS_CODE',"\t", 'RESPONSE_CODE', "\t",'SCORE', "\t",'CONTEXTE',"\t", 'CONTEXTE_CODE', "\t",'Reaction_Time'

    # Set the window's resolution and size
    window = pygame.display.set_mode([0, 0], FULLSCREEN)   # Great for getting full-size window with automatic resolution
    pygame.display.set_caption('Test Perceptif')
    W, H = window.get_size()

    # Define the interval between each stimulus and the number of stimuli before each pause
    isi = 1000
    pause_size = 7

    # Define all the vowel buttons' coordinates

    Xa,Xe = (0.275*W-vowel_buttonLength/2,)*2
    Xi,XE = (0.425*W-vowel_buttonLength/2,)*2
    Xu,Xo = (0.575*W-vowel_buttonLength/2,)*2
    Xy, XO = (0.725*W-vowel_buttonLength/2,)*2

    Xeu, Xoe, Xain, Xan, Xon = (0.2*W-vowel_buttonLength/2), (0.35*W-vowel_buttonLength/2),(0.5*W-vowel_buttonLength/2),(0.65*W-vowel_buttonLength/2),(0.8*W-vowel_buttonLength/2)

    Ya, Yi, Yu, Yy = (0.25*H,)*4
    Ye, YE, Yo, YO = (0.4*H,)*4
    Yeu,Yoe,Yain,Yan, Yon = (0.55*H,)*5


    # Define all the score button's coordinates
    X1,X2,X3,X4 = 0.2*W-score_buttonLength/2,0.4*W-score_buttonLength/2,0.6*W-score_buttonLength/2,0.8*W-score_buttonLength/2
    Y1,Y2,Y3,Y4 = (0.8*H,)*4

    # Define a list of all the coordinates to check the subject's answers
    list_left_vowels = (Xa,Xi,Xu, Xy,Xe,XE,Xo,XO,Xeu,Xoe,Xain,Xan,Xon)
    list_top_vowels = (Ya, Yi, Yu, Yy, Ye, YE, Yo, YO, Yeu, Yoe, Yain, Yan, Yon)
    list_left_score = (X1,X2,X3,X4)
    list_top_score = (Y1,Y2,Y3,Y4)

    main()