package at.dotpoint.gis;

import at.dotpoint.dispatcher.event.generic.ErrorEvent;
import at.dotpoint.dispatcher.event.generic.StatusEvent;
import at.dotpoint.gis.loader.ShapeDataRequest;
import at.dotpoint.gis.shape.ShapeRepository;
import at.dotpoint.gis.shape.records.ARecordRepresentation;
import at.dotpoint.gis.shape.records.ARecordRepresentationPoints;
import at.dotpoint.gis.shape.records.IPointCollection;
import at.dotpoint.gis.shape.records.RecordPoint;
import at.dotpoint.gis.shape.signature.ShapeTypesRecord;
import at.dotpoint.loader.URLRequest;
import at.dotpoint.loader.event.ProgressEvent;
import at.dotpoint.math.axis.AxisEuler;
import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.spatial.geometry.primitive.MathCube;
import at.dotpoint.spatial.geometry.primitive.cube.ICube;
import haxe.ds.Vector;
import haxe.unit.TestRunner;


/**
 * ...
 * @author RK
 */
class GISTestRunner extends TestRunner 
{
	
	private var logic:GISLogic;
	private var view:GISView;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //		
	
	//
	static public function main()
	{
		
	}	
	
	//
	public function new( )
	{
		super();
		
		//
		var url:URLRequest = new URLRequest( "res/ne_10m_roads.shp" );
		
		var request:ShapeDataRequest = new ShapeDataRequest( url );
			request.addStatusListener( this.onComplete, this.onProgress, this.onError );
			request.load();
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //		
	
	//
	private function onProgress( event:ProgressEvent ):Void
	{
		//trace("onProgress: " + event.ratio );
	}
	
	//
	private function onError( event:ErrorEvent ):Void
	{
		trace("onError: " + event.message );
	}
	
	//
	private function onComplete( event:StatusEvent ):Void
	{		
		var request:ShapeDataRequest = cast event.target;
		var repository:ShapeRepository = cast request.result;		
		
		//
		this.view = new GISView( 800, 600 );
		this.logic = new GISLogic( repository, this.view );
		
		this.logic.initialize();
		
		//
		trace("DONE!");
	}	
	
}