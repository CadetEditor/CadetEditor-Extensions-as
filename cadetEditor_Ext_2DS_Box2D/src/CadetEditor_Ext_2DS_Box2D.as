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
	import cadet.core.ComponentContainer;
	import cadet.core.ICadetScene;
	import cadet.entities.ComponentFactory;
	
	import cadet2DBox2D.components.behaviours.DistanceJointBehaviour;
	import cadet2DBox2D.components.behaviours.PrismaticJointBehaviour;
	import cadet2DBox2D.components.behaviours.RevoluteJointBehaviour;
	import cadet2DBox2D.components.behaviours.RigidBodyBehaviour;
	import cadet2DBox2D.components.behaviours.RigidBodyCollisionDetectBehaviour;
	import cadet2DBox2D.components.behaviours.RigidBodyMouseDragBehaviour;
	import cadet2DBox2D.components.behaviours.SpringBehaviour;
	import cadet2DBox2D.components.processes.DebugDrawProcess;
	import cadet2DBox2D.components.processes.PhysicsProcess;
	
	import core.app.CoreApp;
	import core.app.managers.ResourceManager;
	
	public class CadetEditor_Ext_2DS_Box2D extends Sprite
	{
		public function CadetEditor_Ext_2DS_Box2D()
		{
			var resourceManager:ResourceManager = CoreApp.resourceManager;

			// Processes
			resourceManager.addResource( new ComponentFactory( PhysicsProcess, 				"Physics", 						"Processes", 	CadetEngineIcons.Process, 		ICadetScene, 	1 ) );
			resourceManager.addResource( new ComponentFactory( DebugDrawProcess,			"Debug Draw Process",			"Processes",	CadetEngineIcons.Process,		ICadetScene,	1 ) );
			
			// Behaviours
			resourceManager.addResource( new ComponentFactory( RigidBodyBehaviour, 			"Rigid Body", 					"Behaviours",	CadetEngineIcons.Behaviour,	ComponentContainer,			1 ) );
			resourceManager.addResource( new ComponentFactory( RigidBodyMouseDragBehaviour, "Mouse Drag", 					"Behaviours",	CadetEngineIcons.Behaviour,	ComponentContainer,			1 ) );			
			resourceManager.addResource( new ComponentFactory( RigidBodyCollisionDetectBehaviour, "RB Collision Detect", 	"Behaviours",	CadetEngineIcons.Behaviour,	ComponentContainer,			1 ) );
			
			resourceManager.addResource( new ComponentFactory( DistanceJointBehaviour, 		"Distance Joint", 				"Behaviours", 	CadetEngineIcons.Behaviour,	ComponentContainer, 		1 ) );
			resourceManager.addResource( new ComponentFactory( SpringBehaviour, 			"Spring Joint", 				"Behaviours", 	CadetEngineIcons.Behaviour,	ComponentContainer, 		1 ) );
			resourceManager.addResource( new ComponentFactory( RevoluteJointBehaviour, 		"Revolute Joint", 				"Behaviours", 	CadetEngineIcons.Behaviour,	ComponentContainer, 		1 ) );
			resourceManager.addResource( new ComponentFactory( PrismaticJointBehaviour, 	"Prismatic Joint", 				"Behaviours", 	CadetEngineIcons.Behaviour,	ComponentContainer, 		1 ) );
		}
	}
}