// =================================================================================================
//
//	CadetEngine Framework
//	Copyright 2012 Unwrong Ltd. All Rights Reserved.
//
//	This program is free software. You can redistribute and/or modify it
//	in accordance with the terms of the accompanying license agreement.
//
// =================================================================================================

package 
{
	import flash.display.Sprite;
	
	import cadet.assets.CadetEngineIcons;
	import cadet.components.processes.InputProcess;
	import cadet.components.processes.KeyboardInputMapping;
	import cadet.components.processes.TouchInputMapping;
	import cadet.components.sounds.SoundComponent;
	import cadet.entities.ComponentFactory;
	
	import flox.app.FloxApp;
	import flox.app.managers.ResourceManager;
	
	public class CadetEditor_Ext extends Sprite
	{
		public function CadetEditor_Ext()
		{
			var resourceManager:ResourceManager = FloxApp.resourceManager;
			
			// Processes
			resourceManager.addResource( new ComponentFactory( KeyboardInputMapping, "Keyboard Input Mapping", "Processes", CadetEngineIcons.Process, InputProcess ) );
			resourceManager.addResource( new ComponentFactory( TouchInputMapping, "Touch Input Mapping", "Processes", CadetEngineIcons.Process, InputProcess ) );
			
			// Sounds
			resourceManager.addResource( new ComponentFactory( SoundComponent, "Sound", null, CadetEngineIcons.Sound ) );
		}
	}
}
