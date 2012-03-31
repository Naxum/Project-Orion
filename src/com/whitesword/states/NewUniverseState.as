package com.whitesword.states
{
	import com.whitesword.utils.Text;
	
	import flash.events.MouseEvent;

	public class NewUniverseState extends State
	{
		private var universeNameLabel:Text = new Text("Universe Name:");
		private var universeName:Text = new Text("Edit");
		
		private var createUniverse:Text = new Text("Create Universe");
		
		public override function init():void
		{
			universeName.centerXY(stage);
			universeName.x += 80;
			universeName.y = 50;
			universeName.setSize(320, universeName.height, false);
			universeName.setEditable(16);
			
			universeNameLabel.centerXY(stage);
			universeNameLabel.x -= 140;
			universeNameLabel.y = 50;
			
			createUniverse.centerX(stage);
			createUniverse.y = stage.stageHeight - createUniverse.height - 20;
			createUniverse.addEventListener(MouseEvent.CLICK, createUniverseClick);
			
			addChild(universeName);
			addChild(universeNameLabel);
			addChild(createUniverse);
		}
		
		public override function enter():void
		{
			universeName.revertToStartText();
		}
		
		public function createUniverseClick(event:MouseEvent):void
		{
			//TODO: Check to see if universe with that name exists
			
			getGame().setCurrentUniverseName(universeName.getText());
			
			getGame().enterState(States.GAMEPLAY);
		}
	}
}