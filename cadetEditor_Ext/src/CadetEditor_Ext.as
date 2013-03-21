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
	import cadet.components.processes.SoundProcess;
	import cadet.components.processes.TouchInputMapping;
	import cadet.components.sounds.SoundComponent;
	import cadet.core.CadetScene;
	import cadet.entities.ComponentFactory;
	
	import core.app.CoreApp;
	import core.app.managers.ResourceManager;
	
	public class CadetEditor_Ext extends Sprite
	{
		public function CadetEditor_Ext()
		{
			var resourceManager:ResourceManager = CoreApp.resourceManager;
			
			// Processes
			resourceManager.addResource( new ComponentFactory( KeyboardInputMapping, "Keyboard Input Mapping", "Processes", CadetEngineIcons.Process, InputProcess ) );
			resourceManager.addResource( new ComponentFactory( TouchInputMapping, "Touch Input Mapping", "Processes", CadetEngineIcons.Process, InputProcess ) );
			resourceManager.addResource( new ComponentFactory( SoundProcess, "Sound Process", "Processes", CadetEngineIcons.Process, CadetScene, 1 ) );
			// Sounds
			resourceManager.addResource( new ComponentFactory( SoundComponent, "Sound", null, CadetEngineIcons.Sound ) );
		}
	}
}
