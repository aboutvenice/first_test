﻿package {	import flash.display.MovieClip;	import flash.display.Sprite;	import flash.display.Graphics;	public class Main extends MovieClip	{		var layer1:Sprite=new Sprite();		public function Main()		{			addChild(layer1);			createBall();		}		public function createBall()		{			for (var i:int=0; i<10; i++)			{				var color:int=Math.random()*0xFF0000								var ball:Sprite=new Sprite()				ball.graphics.beginFill(color)				ball.graphics.drawCircle(10,10,80)				ball.x=Math.random()*stage.stageWidth				ball.y=Math.random()*stage.stageHeight				layer1.addChild(ball)											}		}	}}