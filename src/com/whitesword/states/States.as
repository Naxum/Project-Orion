package com.whitesword.states
{
	public class States
	{
		public static var SPLASH:State = new SplashState();
		public static var SAVE_DESTINATION:State = new SaveDestinationState();
		public static var MENU:State = new MenuState();
		public static var NEW_UNIVERSE:State = new NewUniverseState();
		public static var GAMEPLAY:State = new GameplayState();
	}
}