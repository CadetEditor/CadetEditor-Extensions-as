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
	
	import cadet2D.components.behaviours.MouseFollowBehaviour;
	import cadet2D.components.core.Entity;
	import cadet2D.components.materials.StandardMaterialComponent;
	import cadet2D.components.particles.PDParticleSystemComponent;
	import cadet2D.components.processes.InputProcess2D;
	import cadet2D.components.processes.TrackCamera2DProcess;
	import cadet2D.components.processes.WorldBounds2D;
	import cadet2D.components.renderers.Renderer2D;
	import cadet2D.components.shaders.fragment.TextureFragmentShaderComponent;
	import cadet2D.components.shaders.vertex.AnimateUVVertexShaderComponent;
	import cadet2D.components.skins.ImageSkin;
	import cadet2D.components.skins.MovieClipSkin;
	import cadet2D.components.textures.TextureAtlasComponent;
	import cadet2D.components.textures.TextureComponent;
	import cadet2D.components.transforms.Transform2D;
	
	import core.app.CoreApp;
	import core.app.managers.ResourceManager;
	
	public class CadetEditor_Ext_2DS extends Sprite
	{
		public function CadetEditor_Ext_2DS()
		{
			var resourceManager:ResourceManager = CoreApp.resourceManager;	
			
			// Core Component
			resourceManager.addResource( new ComponentFactory( Entity, "Entity" ) );
			
			// Processes
			resourceManager.addResource( new ComponentFactory( InputProcess2D,				"Input Process", 				"Processes", 	CadetEngineIcons.Process, 		ICadetScene, 	1 ) );
			resourceManager.addResource( new ComponentFactory( WorldBounds2D, 				"World Bounds 2D", 				"Processes", 	CadetEngineIcons.Process, 		ICadetScene, 	1 ) );
			resourceManager.addResource( new ComponentFactory( TrackCamera2DProcess, 		"Track Camera", 				"Processes", 	CadetEngineIcons.Process, 		ICadetScene, 	1 ) );
			resourceManager.addResource( new ComponentFactory( Renderer2D, 					"2D Renderer", 					"Processes", 	CadetEngineIcons.Renderer, 		ICadetScene, 	1 ) );
			resourceManager.addResource( new ComponentFactory( PDParticleSystemComponent,	"Particle System",				"Processes",	CadetEngineIcons.Process ) );
			
			// Transforms
			resourceManager.addResource( new ComponentFactory( Transform2D, 				"2D Transform", 				null, 			CadetEngineIcons.Transform, 	null, 			1 ) );
			
			// Skins
			resourceManager.addResource( new ComponentFactory( ImageSkin, 					"Image Skin", 					"Display", 		CadetEngineIcons.Skin ) );
			resourceManager.addResource( new ComponentFactory( MovieClipSkin, 				"MovieClip Skin", 				"Display", 		CadetEngineIcons.Skin ) );			
			
			// Textures
			resourceManager.addResource( new ComponentFactory( TextureComponent,			"Texture",						"Display",		CadetEngineIcons.Texture ) );
			resourceManager.addResource( new ComponentFactory( TextureAtlasComponent,		"TextureAtlas",					"Display",		CadetEngineIcons.Texture) );
			
			// Behaviours - Core
			resourceManager.addResource( new ComponentFactory( MouseFollowBehaviour,		"Mouse Follow",					"Behaviours",	CadetEngineIcons.Behaviour, Entity,		1 ) );
			
			// Materials
			resourceManager.addResource( new ComponentFactory( StandardMaterialComponent,	"StandardMaterialComponent",	"Display",	CadetEngineIcons.Component ) );
			
			// Shaders
			resourceManager.addResource( new ComponentFactory( AnimateUVVertexShaderComponent, "AnimateUVVertexShaderComponent",	"Display",	CadetEngineIcons.Component ) );
			resourceManager.addResource( new ComponentFactory( TextureFragmentShaderComponent, "TextureFragmentShaderComponent",	"Display", CadetEngineIcons.Component ) );
			
			/*
			// Graphics Skins
//			resourceManager.addResource( new ComponentFactory( ScrollingBackgroundSkin, 	"Scrolling Background Skin", 	"Skins", 		CadetEngineIcons.Skin, 		null, 			1 ) );
//			resourceManager.addResource( new ComponentFactory( FootprintManagerDebugSkin, 	"Footprint Manager Debug Skin", "Skins", 		CadetEngineIcons.Skin, 		null, 			1 ) );
//			resourceManager.addResource( new ComponentFactory( WorldBoundsDebugSkin, 		"World Bounds Debug Skin", 		"Skins",		CadetEngineIcons.Skin,		null,			1 ) );
			
			// Needed here?
			resourceManager.addResource( new ComponentFactory( FootprintManagerProcess, 	"Footprint Manager", 			"Processes", 	CadetEngineIcons.Process, 		ICadetScene, 	1 ) );
			resourceManager.addResource( new ComponentFactory( CollisionDetectionProcess, 	"Collision Detection", 			"Processes", 	CadetEngineIcons.Process, 		ICadetScene, 	1 ) );
			
			// Footprints
			resourceManager.addResource( new ComponentFactory( SimpleFootprintBehaviour, 	"Footprint Simple", 			"Behaviours", 	CadetEngineIcons.Behaviour,	null, 		1 ) );
			resourceManager.addResource( new ComponentFactory( GeometryFootprintBehaviour, 	"Footprint Geometry", 			"Behaviours", 	CadetEngineIcons.Behaviour,	null, 		1 ) );
			resourceManager.addResource( new ComponentFactory( BezierCurveFootprintBehaviour, "Footprint Bezier", 			"Behaviours", 	CadetEngineIcons.Behaviour,	null, 		1 ) );
			*/
		}
	}
}