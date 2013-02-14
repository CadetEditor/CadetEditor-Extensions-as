// Copyright (c) 2012, Unwrong Ltd. http://www.unwrong.com
// All rights reserved. 

package 
{
	import flash.display.Sprite;
	
	import cadet.assets.CadetEngineIcons;
	import cadet.components.processes.InputProcess;
	import cadet.components.processes.KeyboardInputMapping;
	import cadet.components.processes.TouchInputMapping;
	import cadet.components.sounds.Sound;
	import cadet.entities.ComponentFactory;
	
	import flox.app.FloxApp;
	import flox.app.managers.ResourceManager;
	
	public class CadetEditor_Ext extends Sprite
	{
		public function CadetEditor_Ext()
		{
			var resourceManager:ResourceManager = FloxApp.resourceManager;
			
			// Processes
			// Input process is different in 2D and 3D due to handling of Touch events by renderers
			//resourceManager.addResource( new ComponentFactory( InputProcess, "Input Process", "Processes", CadetEngineIcons.Process, ICadetScene, 1 ) );
			resourceManager.addResource( new ComponentFactory( KeyboardInputMapping, "Keyboard Input Mapping", "Processes", CadetEngineIcons.Process, InputProcess ) );
			resourceManager.addResource( new ComponentFactory( TouchInputMapping, "Touch Input Mapping", "Processes", CadetEngineIcons.Process, InputProcess ) );
			
			// Sounds
			resourceManager.addResource( new ComponentFactory( Sound, "Sound", null, CadetEngineIcons.Component ) );
		}
	}
}
