﻿//read mepackage {	import flash.display.MovieClip;	import flash.display.Sprite;	import flash.display.Graphics;	import flash.events.Event;	public class Main extends MovieClip	{		var layer1:Sprite=new Sprite();		var moveX:Number;		var widthL:int = 0;		var heightL:int = 0;		var widthR:int = stage.stageWidth;		var heightR:int = stage.stageHeight;		var total:int = 100;		var scale:int = 50;		var speed:int = 30;		var tag:int;		var array:Array=new Array();		public function Main()		{			addChild(layer1);			createBall();			//getBall();			stage.addEventListener(Event.ENTER_FRAME,onRunHandler);		}		public function createBall()		{			for (var i:int=0; i<total; i++)			{				var color:int = Math.random() * 0xFF0000;				var ball:Sprite=new Sprite();				ball.graphics.beginFill(color,Math.random()*1);				ball.graphics.drawCircle(10,10,scale*Math.random());				ball.x = Math.random() * stage.stageWidth;				ball.y = Math.random() * stage.stageHeight;				layer1.addChild(ball);				moveX=Math.floor((Math.random()*3)-1);				if (moveX==0)				{					moveX = 1;				}				ball.name = String(moveX);				tag = Math.random() * 3 + 1;				//ball["tag"]=tag				array.push(tag);			}		}		public function onRunHandler(e:Event)		{			for (var i:int=0; i<total; i++)			{				var nowBall:Object = layer1.getChildAt(i);				//				if (array[i] == 1)				{					nowBall.x +=  speed * int(nowBall.name);				}				else if (array[i]==2)				{					nowBall.y +=  speed * int(nowBall.name);				}				else if (array[i]==3)				{					nowBall.y +=  speed * int(nowBall.name);					nowBall.x +=  speed * int(nowBall.name);				}				if ((((nowBall.x<widthL)||(nowBall.x>widthR))||(nowBall.y<heightL))||(nowBall.y>heightR))				{					nowBall.name *=  -1;					array[i] = Math.floor(Math.random() * 3 + 1);									}			}		}	}}