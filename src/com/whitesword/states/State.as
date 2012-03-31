package com.whitesword.states
{
	import flash.display.Sprite;

	public class State extends Sprite
	{
		private var game:iPadSpaceGame;
		private var inited:Boolean;
		
		public function initGame(game:iPadSpaceGame):void
		{
			this.game = game;
			if(!inited)
			{
				inited = true;
				init();
			}
		}
		
		public function preUpdate():void
		{			
			update();
		}
		
		/**
		 * Called every time the state is entered.
		 */
		public function enter():void
		{
			
		}
		
		/**
		 * Called immediately before the state is left.
		 */
		public function exit():void
		{
			
		}
		
		/**
		 * Called once per frame (at 60 fps)
		 */
		public function update():void
		{
			
		}
		
		/**
		 * Called before enter, but only called once.
		 */
		public function init():void
		{
			
		}
		
		public function getGame():iPadSpaceGame
		{
			return game;
		}
	}
}