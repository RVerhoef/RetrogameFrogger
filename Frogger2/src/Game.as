package  
{
	import flash.display.Sprite;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	/**
	 * ...
	 * @author Rob
	 */
	public class Game extends Sprite 
	{
		//vars for world
		private var road:Road;
		private var water:Water;
		private var houseZone:HouseZone;
		private var sidewalk:Sidewalk;
		private var grass1:Grass;
		private var grass2:Grass;
		private var grass3:Grass;
		private var grass4:Grass;
		private var grass5:Grass;
		
		//vars for player & enemies
		private var frog:Frog;
		private var smallCar1:MoveSmallCar;
		private var smallCar2:MoveSmallCar;
		private var smallCar3:MoveSmallCar;
		private var smallCar4:MoveSmallCar;
		
		//bools
		private var frogkill:Boolean = false;
		
		public function Game():void
		{
			//events
			stage.addEventListener(KeyboardEvent.KEY_DOWN, Controls);
			stage.addEventListener(Event.ENTER_FRAME, Update);
		
			//world
			road = new Road();
			road.y = 160;
			addChild(road);
			
			water = new Water();
			water.y = 64;
			addChild(water);
			
			houseZone = new HouseZone();
			houseZone.y = 48;
			addChild(houseZone);
			
			sidewalk = new Sidewalk();
			sidewalk.y = 144;
			addChild(sidewalk);
			
			grass1 = new Grass();
			grass1.x = 16;
			grass1.y = 48;
			addChild(grass1);
			
			grass2 = new Grass();
			grass2.x = 64;
			grass2.y = 48;
			addChild(grass2);
			
			grass3 = new Grass();
			grass3.x = 104;
			grass3.y = 48;
			addChild(grass3);
			
			grass4 = new Grass();
			grass4.x = 144;
			grass4.y = 48;
			addChild(grass4);
			
			grass5 = new Grass();
			grass5.x = 192;
			grass5.y = 48;
			addChild(grass5);
			
			//player & enemies
			frog = new Frog;
			frog.x = 96;
			frog.y = 240;
			if (frogkill == false);
			{
				addChild(frog);
			}
			
			smallCar1 = new MoveSmallCar(-4, 0);
			smallCar1.x = 100;
			smallCar1.y = 224
			addChild(smallCar1);
			
			smallCar2 = new MoveSmallCar(4, 0);
			smallCar2.x = 100;
			smallCar2.y = 208
			addChild(smallCar2);
			
			smallCar3 = new MoveSmallCar(-8, 0);
			smallCar3.x = 100;
			smallCar3.y = 192
			addChild(smallCar3);
			
			smallCar4 = new MoveSmallCar(4, 0);
			smallCar4.x = 100;
			smallCar4.y = 176
			addChild(smallCar4);
		}
		
		public function Controls(e:KeyboardEvent):void
		{
			if (e.keyCode == 38)
			{
				frog.y += -16;
			}
			
			if (e.keyCode == 40)
			{
				frog.y += 16;
			}
			
			if (e.keyCode == 37)
			{
				frog.x += -16;
			}
			
			if (e.keyCode == 39)
			{
				frog.x += 16;
			}
			
		}
		
		public function Update(E:Event):void
		{
			smallCar1.update();
			smallCar2.update();
			smallCar3.update();
			smallCar4.update();
		}
		
	}

}