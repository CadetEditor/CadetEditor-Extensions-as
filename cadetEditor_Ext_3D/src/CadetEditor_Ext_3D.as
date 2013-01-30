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
	
	import cadet3D.assets.CadetEngine3DIcons;
	import cadet3D.components.cameras.CameraComponent;
	import cadet3D.components.core.MeshComponent;
	import cadet3D.components.core.ObjectContainer3DComponent;
	import cadet3D.components.core.Renderer3D;
	import cadet3D.components.core.Sprite3DComponent;
	import cadet3D.components.debug.TridentComponent;
	import cadet3D.components.geom.CubeGeometryComponent;
	import cadet3D.components.geom.PlaneGeometryComponent;
	import cadet3D.components.geom.SphereGeometryComponent;
	import cadet3D.components.lights.DirectionalLightComponent;
	import cadet3D.components.lights.PointLightComponent;
	import cadet3D.components.materials.ColorMaterialComponent;
	import cadet3D.components.materials.SkyBoxMaterialComponent;
	import cadet3D.components.materials.TextureMaterialComponent;
	import cadet3D.components.primitives.SkyBoxComponent;
	import cadet3D.components.processes.HoverCamProcess;
	import cadet3D.components.textures.BitmapCubeTextureComponent;
	import cadet3D.components.textures.BitmapTextureComponent;
	
	import flox.app.FloxApp;
	import flox.app.managers.ResourceManager;
	
	public class CadetEditor_Ext_3D extends Sprite
	{
		public function CadetEditor_Ext_3D()
		{
			var resourceManager:ResourceManager = FloxApp.resourceManager;
			
			// Force inclusion of some types
//			PlaneGeometryComponent;
//			SphereGeometryComponent;
//			CubeGeometryComponent;
			
			// Entities =======================================	
			// Cameras
			resourceManager.addResource( new ComponentFactory( CameraComponent, "Camera", "Entities", CadetEngine3DIcons.Camera ) );
			// Debug
			resourceManager.addResource( new ComponentFactory( TridentComponent, "Trident", "Entities", CadetEngine3DIcons.Mesh ) );
			// Entities
			resourceManager.addResource( new ComponentFactory( MeshComponent, "Mesh", "Entities", CadetEngine3DIcons.Mesh ) );
			resourceManager.addResource( new ComponentFactory( ObjectContainer3DComponent, "ObjectContainer3D", "Entities", CadetEngine3DIcons.Mesh ) );
			resourceManager.addResource( new ComponentFactory( SkyBoxComponent, "SkyBox", "Entities", CadetEngine3DIcons.Mesh ) );
			resourceManager.addResource( new ComponentFactory( Sprite3DComponent, "Sprite3D", "Entities", CadetEngine3DIcons.Mesh ) );
			
			// Geometries =====================================
//			resourceManager.addResource( new ComponentFactory( HeightmapGeometryComponent, "HeightmapGeometry", "Geometry", CadetBuilderAway3D4Icons.Geometry ) );
			resourceManager.addResource( new ComponentFactory( PlaneGeometryComponent, "PlaneGeometry", "Geometry", CadetEngine3DIcons.Geometry ) );
			resourceManager.addResource( new ComponentFactory( SphereGeometryComponent, "SphereGeometry", "Geometry", CadetEngine3DIcons.Geometry ) );
			resourceManager.addResource( new ComponentFactory( CubeGeometryComponent, "CubeGeometry", "Geometry", CadetEngine3DIcons.Geometry ) );			
			
			// Lights =========================================
			resourceManager.addResource( new ComponentFactory( DirectionalLightComponent, "Directional Light", "Entities", CadetEngine3DIcons.DirectionalLight ) );
			resourceManager.addResource( new ComponentFactory( PointLightComponent, "Point Light", "Entities", CadetEngine3DIcons.PointLight ) );
			
			// Materials ======================================
			resourceManager.addResource( new ComponentFactory( ColorMaterialComponent, "Color Material", "Materials", CadetEngine3DIcons.Material ) );
			resourceManager.addResource( new ComponentFactory( SkyBoxMaterialComponent, "SkyBox Material", "Materials", CadetEngine3DIcons.Material ) );
			resourceManager.addResource( new ComponentFactory( TextureMaterialComponent, "Texture Material", "Materials", CadetEngine3DIcons.Material ) );
			
			// Processes ======================================
			resourceManager.addResource( new ComponentFactory( HoverCamProcess, "HoverCamProcess", "Processes", CadetEngineIcons.Process, ICadetScene, 1 ) );
			resourceManager.addResource( new ComponentFactory( Renderer3D, "Away3D Renderer", "Processes", CadetEngine3DIcons.Renderer, ICadetScene, 1 ) );	
			
			// Textures =======================================
			resourceManager.addResource( new ComponentFactory( BitmapTextureComponent, "Bitmap Texture", "Textures", CadetEngineIcons.Texture ) );
			resourceManager.addResource( new ComponentFactory( BitmapCubeTextureComponent, "Bitmap Cube Texture", "Textures", CadetEngineIcons.Texture ) );
			
		}
	}
}