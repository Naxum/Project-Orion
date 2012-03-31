package com.whitesword.states
{
	import com.whitesword.utils.Text;
	
	import flash.events.MouseEvent;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;

	public class SaveDestinationState extends State
	{
		private var onCloud:Text = new Text("Save on the Cloud");
		private var onDevice:Text = new Text("Save on Device");
		
		public override function init():void
		{
			onCloud.centerXY(stage);
			onCloud.buttonMode = true;
			onCloud.y -= 50;
			
			onDevice.centerXY(stage);
			onDevice.buttonMode = true;
			onDevice.y += 50;
			
			addChild(onCloud);
			addChild(onDevice);
			
			onCloud.addEventListener(MouseEvent.CLICK, optionClick);
			onDevice.addEventListener(MouseEvent.CLICK, optionClick);
		}
		
		private function optionClick(event:MouseEvent):void
		{
			var saveFile:File = getGame().getPreferencesFile();
			var writer:FileStream = new FileStream();
			var content:String = "<xml>\n\t<version>" + getGame().getPreferenceSaveVersion() + "</version>\n\t<saveDestination>";
			writer.open(saveFile, FileMode.WRITE);
			
			if(event.currentTarget == onCloud)
			{
				content += "cloud";
			}
			else
			{
				content += "device";
			}
			
			content += "</saveDestination>\n</xml>";
			
			writer.writeUTF(content);
			writer.close();
			
			getGame().enterState(States.MENU);
		}
	}
}