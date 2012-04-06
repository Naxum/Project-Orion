package 
{
	import com.whitesword.space.galaxy.Galaxy;
	import com.whitesword.space.planets.Star;
	import com.whitesword.space.races.AlienRace;
	import com.whitesword.space.races.AlienRaceCharacteristic;
	import com.whitesword.space.races.AlienRaceHistory;
	import com.whitesword.space.races.AlienRaceTrait;
	import com.whitesword.states.State;
	import com.whitesword.states.States;
	import com.whitesword.utils.Image;
	import com.whitesword.utils.SpriteSheet;
	import com.whitesword.utils.Text;
	
	import flash.display.Bitmap;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageOrientation;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.StageOrientationEvent;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.utils.getQualifiedClassName;
	
	
	public class iPadSpaceGame extends Sprite
	{
		private var currentState:State;
		private var saveToCloud:Boolean;
		private var currentUniverseName:String;
		
		[Embed(source="res/font/NaxcraftSpace.ttf", fontFamily="NaxcraftSpace", embedAsCFF="false", fontName="NaxcraftSpace")]
		public var Font:Class;
		
		[Embed(source="res/test/test.png")]
		public var TestImage:Class;
		
		[Embed(source="res/test/sheet.png")]
		public var TestSpriteSheet:Class;
		public var sheet:SpriteSheet = new SpriteSheet(new TestSpriteSheet(), 62, 62);
		
		private var inited:Boolean;
		
		public function iPadSpaceGame()
		{
			super();
			
			// support autoOrients
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.color = 0x000000;
			
			//trace("Initial stage width: " + stage.stageWidth + ", height: " + stage.stageHeight);
			
			var startOrientation:String = stage.orientation;
			if (startOrientation == StageOrientation.DEFAULT || startOrientation == StageOrientation.UPSIDE_DOWN)
			{
				stage.setOrientation(StageOrientation.ROTATED_LEFT);
			}
			else
			{
				stage.setOrientation(startOrientation);
			}                    
			
			stage.addEventListener(StageOrientationEvent.ORIENTATION_CHANGING, orientationChangeListener);
			this.addEventListener(Event.ENTER_FRAME, update);
		}
		
		public function update(event:Event):void
		{
			if(!inited)
			{
				trace("Stage width: " + stage.stageWidth + ", height: " + stage.stageHeight);
				inited = true;
				
				init();
			}
			
			if(currentState != null)
			{
				currentState.preUpdate();
			}
		}
		
		public function init():void
		{
			if(!File.applicationStorageDirectory.resolvePath("saves").exists)
			{
				File.applicationStorageDirectory.resolvePath("saves").createDirectory();
			}
			enterState(States.SPLASH);
		}
		
		/*
		public function newRace(event:MouseEvent):void
		{
			var race:AlienRace = new AlienRace();
			race.generate();
			
			var text:Text = new Text("", true);
			
			text.setText(race.traceInformation(), true);
			text.setPosition((stage.stageWidth*0.5) - (text.width*0.5), (stage.stageHeight*0.5) - (text.height*0.5));
		}*/
		
		public function orientationChangeListener(e:StageOrientationEvent):void
		{
			if (e.afterOrientation == StageOrientation.DEFAULT || e.afterOrientation ==  StageOrientation.UPSIDE_DOWN)
			{
				e.preventDefault();
			}
		}
		
		/**
		 * Currently doesn't support transitions
		 */
		public function enterState(state:State):void
		{
			if(currentState != null)
			{
				currentState.exit();
				removeChild(currentState);
			}
			
			trace("Entering State: " + getQualifiedClassName(state).replace("com.whitesword.states::", ""));
			
			addChild(state);
			
			state.initGame(this);
			state.enter();
			currentState = state;
		}
		
		public function getCurrentState():State
		{
			return currentState;
		}
		
		public function loadPrefs():void
		{
			trace("loading prefs");
			
			var prefs:File = getPreferencesFile();
			var reader:FileStream = new FileStream();
			
			reader.open(prefs, FileMode.READ);
			
			var xml:XML = XML(reader.readUTF());
			
			reader.close();
			
			if(xml.version != getPreferenceSaveVersion())
			{
				trace("Updating preferences from version " + xml.version + " to version " + getPreferenceSaveVersion());
				
				//TODO: Do that.
			}
			
			setSaveToCloud(xml.saveDestination == "cloud");
			
		}
		
		public function setSaveToCloud(b:Boolean):void
		{
			this.saveToCloud = b;
		}
		
		public function getSaveToCloud():Boolean
		{
			//return saveToCloud;
			return false;
		}
		
		public function getPreferenceSaveVersion():String
		{
			return "1";
		}
		
		public function deletePreferences():void
		{
			getPreferencesFile().deleteFile();
		}
		
		public function setCurrentUniverseName(s:String):void
		{
			this.currentUniverseName = s;
		}
		
		public function getCurrentUniverseName():String
		{
			return currentUniverseName;
		}
		
		public function getCurrentUniverseSaveFile():File
		{
			return File.applicationStorageDirectory.resolvePath("saves/" + getCurrentUniverseName() + ".xml");
		}
		
		public function getPreferencesFile():File
		{
			return File.applicationStorageDirectory.resolvePath("prefs.xml");
		}
	}
}