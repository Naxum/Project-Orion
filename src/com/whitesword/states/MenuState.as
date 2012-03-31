package com.whitesword.states
{
	import com.whitesword.utils.Text;
	
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFormat;

	public class MenuState extends State
	{
		public var newUniverse:Text, deletePrefs:Text;
		
		public override function init():void
		{
			newUniverse = new Text("New Universe");
			newUniverse.centerXY(stage);
			
			newUniverse.y -= 50;			
			
			deletePrefs = new Text("Delete Preferences");
			deletePrefs.centerXY(stage);
			
			deletePrefs.y += 50;
			
			addChild(newUniverse);
			addChild(deletePrefs);
			
			newUniverse.addEventListener(MouseEvent.CLICK, menuClick);
			deletePrefs.addEventListener(MouseEvent.CLICK, deletePreferences);
			
			getGame().loadPrefs();
		}
		
		public override function update():void
		{
			
		}
		
		public function deletePreferences(event:MouseEvent):void
		{
			getGame().deletePreferences();
			getGame().enterState(States.SPLASH);
		}
		
		public function menuClick(event:MouseEvent):void
		{
			if(event.currentTarget == newUniverse)
			{
				getGame().enterState(States.NEW_UNIVERSE);
			}
		}
	}
}