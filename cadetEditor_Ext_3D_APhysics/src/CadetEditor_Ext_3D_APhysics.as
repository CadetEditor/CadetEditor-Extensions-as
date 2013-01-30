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
	import cadet.core.ICadetScene;
	import cadet.entities.ComponentFactory;
	
	import cadet3D.components.core.MeshComponent;
	
	import cadet3DPhysics.components.behaviours.RigidBodyBehaviour;
	import cadet3DPhysics.components.processes.PhysicsProcess;
	
	import flox.app.FloxApp;
	import flox.app.managers.ResourceManager;
	
	public class CadetEditor_Ext_3D_APhysics extends Sprite
	{
		public function CadetEditor_Ext_3D_APhysics()
		{
			var resourceManager:ResourceManager = FloxApp.resourceManager;
			
			// Behaviours
			resourceManager.addResource( new ComponentFactory( RigidBodyBehaviour, "Rigid Body", "Behaviours", CadetEngineIcons.Behaviour, MeshComponent, 1 ) );
			
			// Processes ======================================
			resourceManager.addResource( new ComponentFactory( PhysicsProcess, "Physics Process", "Processes", CadetEngineIcons.Process, ICadetScene, 1 ) );
		}
	}
}