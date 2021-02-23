#! /usr/bin/env python3

import rospy
from jetbot.msg import keycon
from pynput.keyboard import Listener, Key, KeyCode
rospy.init_node('Keyboard_Test')
pub = rospy.Publisher("/Keyboard",keycon,queue_size=1)
rate = rospy.Rate(100)

move = keycon()

move.ServoX = 1300
move.ServoY = 2100
move.Front = 0
move.Right = 0
move.Left = 0

def Vertical(key):
    global move
    if key == KeyCode(char='w'):
        print('Camera Upper!!')
        move.ServoY = move.ServoY+100
    elif key == KeyCode(char='x'):
        print('Camera Down!!')
        move.ServoY = move.ServoY-100
    elif key == KeyCode(char='s'):
        print('Init mode')
        move.ServoY=1300
    pub.publish(move)

def Horizonal(key):
    global move
    if key == KeyCode(char='d'):
        print('Camera Right')
        move.ServoX = move.ServoX-100
    elif key == KeyCode(char='a'):
        print('Camera Left!!')
        move.ServoX = move.ServoX+100
    elif key == KeyCode(char='s'):
        print('Init mode')
        move.ServoX=2100
    pub.publish(move)

def RobotMove(key):
    global move
    if key == KeyCode(char='8'):
        print('Move Frontward')
        move.Front=move.Front+1
        move.Right,move.Left= 0,0
    elif key == KeyCode(char='4'):
        print('Move Left')
        move.Left=move.Left+1
    elif key == KeyCode(char='6'):
        print('Move Right')
        move.Right = move.Right+1
    elif key == KeyCode(char='2'):
        print('Move backward')
        move.Front=move.Front-1
    elif key == KeyCode(char='7'):
        print('Stop!!')
        move.Front=0
        move.Left=0
        move.Right=0
    pub.publish(move)

def handlePress(key):
    # print("눌린 키 : {}".format(key))
    Vertical(key)
    Horizonal(key)
    RobotMove(key)

def handleRelease(key):

    if key == Key.esc : 
     return False

with Listener(on_press=handlePress, on_release=handleRelease) as listener:
    listener.join()

