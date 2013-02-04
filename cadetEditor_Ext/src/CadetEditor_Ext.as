// Copyright (c) 2012, Unwrong Ltd. http://www.unwrong.com
// All rights reserved. 

package 
{
	import flash.display.Sprite;
	
	import cadet.assets.CadetEngineIcons;
	import cadet.components.processes.KeyboardInputMapping;
	import cadet.components.processes.KeyboardInputProcess;
	import cadet.components.sounds.Sound;
	import cadet.core.ICadetScene;
	import cadet.entities.ComponentFactory;
	
	import flox.app.FloxApp;
	import flox.app.managers.ResourceManager;
	
	public class CadetEditor_Ext extends Sprite
	{
		public function CadetEditor_Ext()
		{
			var resourceManager:ResourceManager = FloxApp.resourceManager;
			
			// Processes
			resourceManager.addResource( new ComponentFactory( KeyboardInputProcess, "Keyboard Input Process", "Processes", CadetEngineIcons.Process, ICadetScene, 1 ) );
			resourceManager.addResource( new ComponentFactory( KeyboardInputMapping, "Keyboard Input Mapping", "Processes", CadetEngineIcons.Process, KeyboardInputProcess ) );
			
			// Sounds
			resourceManager.addResource( new ComponentFactory( Sound, "Sound", null, CadetEngineIcons.Component ) );
		}
	}
}
