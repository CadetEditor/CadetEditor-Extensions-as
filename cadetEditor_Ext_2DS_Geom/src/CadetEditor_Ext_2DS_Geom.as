package
{
	import flash.display.Sprite;
	
	import cadet.assets.CadetEngineIcons;
	import cadet.entities.ComponentFactory;
	
	import cadet2D.components.core.Entity;
	import cadet2D.components.geom.BoundingSphere;
	import cadet2D.components.geom.CircleGeometry;
	import cadet2D.components.geom.CompoundGeometry;
	import cadet2D.components.geom.PolygonGeometry;
	import cadet2D.components.geom.RectangleGeometry;
	import cadet2D.components.geom.TerrainGeometry;
	import cadet2D.components.geom.TriangleGeometry;
	import cadet2D.components.skins.ConnectionSkin;
	import cadet2D.components.skins.GeometrySkin;
	import cadet2D.components.skins.SpringSkin;
	
	import core.app.CoreApp;
	import core.app.managers.ResourceManager;
	
	public class CadetEditor_Ext_2DS_Geom extends Sprite
	{
		public function CadetEditor_Ext_2DS_Geom()
		{
			var resourceManager:ResourceManager = CoreApp.resourceManager;		
			
			// Geometry
			resourceManager.addResource( new ComponentFactory( RectangleGeometry, 			"Rectangle", 					"Geometry", 	CadetEngineIcons.Geometry, 	Entity, 	1 ) );
			resourceManager.addResource( new ComponentFactory( TriangleGeometry, 			"Triangle", 					"Geometry", 	CadetEngineIcons.Geometry, 	Entity, 	1 ) );
			resourceManager.addResource( new ComponentFactory( CircleGeometry, 				"Circle", 						"Geometry", 	CadetEngineIcons.Geometry, 	Entity, 	1 ) );
			resourceManager.addResource( new ComponentFactory( PolygonGeometry, 			"Polygon", 						"Geometry", 	CadetEngineIcons.Geometry, 	Entity, 	1 ) );
			resourceManager.addResource( new ComponentFactory( CompoundGeometry, 			"Compound Geometry", 			"Geometry", 	CadetEngineIcons.Geometry, 	Entity, 	1 ) );
			resourceManager.addResource( new ComponentFactory( TerrainGeometry, 			"Terrain Geometry", 			"Geometry", 	CadetEngineIcons.Geometry, 	Entity, 	1 ) );
			resourceManager.addResource( new ComponentFactory( BoundingSphere, 				"Bounding Sphere", 				"Geometry", 	CadetEngineIcons.Geometry, 	null, 		1 ) );
			
			// Graphics Skins
			resourceManager.addResource( new ComponentFactory( GeometrySkin, 				"Geometry Skin", 				"Display", 		CadetEngineIcons.Skin, 		Entity, 		1 ) );
//			resourceManager.addResource( new ComponentFactory( GeometryDebugSkin, 			"Geometry Debug Skin", 			"Skins", 		CadetEngineIcons.Skin, 		Entity, 		1 ) );
//			resourceManager.addResource( new ComponentFactory( FractalPolygonSkin, 			"Fractal Polygon Skin", 		"Skins", 		CadetEngineIcons.Skin, 		Entity, 		1 ) );
			resourceManager.addResource( new ComponentFactory( ConnectionSkin, 				"Connection Skin", 				"Display", 		CadetEngineIcons.Skin, 		Entity, 		1 ) );
			resourceManager.addResource( new ComponentFactory( SpringSkin, 					"Spring Skin", 					"Display", 		CadetEngineIcons.Skin, 		Entity, 		1 ) );

		}
	}
}