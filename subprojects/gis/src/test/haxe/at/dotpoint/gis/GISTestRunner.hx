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
import at.dotpoint.math.tensor.vector.IVector3;
import haxe.ds.Vector;
import haxe.unit.TestRunner;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.javax.swing.border.BevelBorder;
import java.javax.swing.BoxLayout;
import java.javax.swing.filechooser.FileNameExtensionFilter;
import java.javax.swing.JFileChooser;
import java.javax.swing.JFrame;
import java.javax.swing.JLabel;
import java.javax.swing.JMenu;
import java.javax.swing.JMenuBar;
import java.javax.swing.JMenuItem;
import java.javax.swing.JPanel;
import java.lang.System;
import java.NativeArray;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.awt.image.RescaleOp;
import java.awt.RenderingHints;
import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.awt.image.RescaleOp;
import java.awt.RenderingHints;
import java.io.File;
import java.javax.imageio.ImageIO;
import java.javax.swing.ImageIcon;
import java.javax.swing.JLabel;
import java.javax.swing.JLayeredPane;
import java.javax.swing.JPanel;
import java.NativeArray;

/**
 * ...
 * @author RK
 */
class GISTestRunner extends TestRunner 
{
	//
	static public function main()
	{
		
	}	

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //	
	
	//
	public function new( )
	{
		super();

		//
		this.initGUI();
		
		//
		var url:URLRequest = new URLRequest( "res/ne_10m_roads.shp" );
		
		var request:ShapeDataRequest = new ShapeDataRequest( url );
			request.addStatusListener( this.onComplete, this.onProgress, this.onError );
			request.load();
	}
	
	//
	private function onComplete( event:StatusEvent ):Void
	{
		trace("DONE!");
		
		var request:ShapeDataRequest = cast event.target;
		var repository:ShapeRepository = cast request.result;
		
		var record:ARecordRepresentation = null;
		var recordList:ARecordRepresentationPoints = new ARecordRepresentationPoints();
		var recordSingle:RecordPoint = new RecordPoint();
		
		var length:Int = repository.record.signature.records.length;
		
		for( j in 0...length )
		{
			var type:Int = repository.getType( j );
			
			trace( j + "/" + length );
			
			if( ShapeTypesRecord.isPoint( type ) )	record = recordSingle;
			else 									record = recordList;
			
			repository.getRecord( j, record );
			
			var coll:IPointCollection = cast record;
			
			//trace( record + ": " + coll.getBounds() + " - " + coll.getPoints().length );
			this.draw( coll.getPoints() );
		}
	}
	
	/**
	 *
	 */
	private var jframe:JFrame;
	private var articlePane:JLayeredPane;
	private var articleCanvas:Graphics2D;
	
	//
	private function initGUI()
	{
		var w:Int = 1200;
		var h:Int = 900;
		
		this.jframe = new JFrame( "GIS FUN!" );
		this.jframe.setSize( w, h );
		this.jframe.setDefaultCloseOperation( JFrame.EXIT_ON_CLOSE );
		this.jframe.setBackground( Color.LIGHT_GRAY );
		this.jframe.setLocationRelativeTo(null);
		this.jframe.setLayout( new BorderLayout() );
		
		// -------------------- //
		
		this.articlePane = new JLayeredPane();
		this.articlePane.setPreferredSize( new Dimension( w, h ) );
		this.articlePane.setLayout( null );

		// -------------- //

		var canvas_img:BufferedImage = new BufferedImage( w, h, BufferedImage.TYPE_INT_ARGB );
		var canvas:JLabel = new JLabel( new ImageIcon( canvas_img ) );
			canvas.setBounds( 0, 0, w, h );

		this.articleCanvas = cast canvas_img.getGraphics();

		this.articlePane.setLayer( canvas, 1 );
		this.articlePane.add( canvas );
		
		// -------------------- //
		
		
		this.jframe.getContentPane().add( this.articlePane );		
		this.jframe.setVisible( true );
	}
	
	//
	private function draw( list:Vector<IVector3> ):Void
	{
		this.articleCanvas.setColor( new Color( 0.5, 0.2, 0.8, 1 ) );
		
		for( point in list )
		{
			var x:Int = 800 + Std.int( point.x *  8 );
			var y:Int = 600 + Std.int( point.y * -8 );
			
			this.articleCanvas.fillOval( x, y, 2, 2 );
		}
	}
	
	//
	private function onProgress( event:ProgressEvent ):Void
	{
		trace("onProgress: " + event.ratio );
	}
	
	//
	private function onError( event:ErrorEvent ):Void
	{
		trace("onError: " + event.message );
	}
	
}