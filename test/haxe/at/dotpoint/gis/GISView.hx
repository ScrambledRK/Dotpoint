package at.dotpoint.gis;

import at.dotpoint.math.tensor.vector.IVector3;
import at.dotpoint.math.tensor.vector.Vector2;
import haxe.ds.Vector;
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
 * @author ...
 */
class GISView 
{

	//
	private var jframe:JFrame;
	private var jpane:JLayeredPane;
	
	private var canvas:Graphics2D;
	
	//
	private var translation:Vector2;
	private var dimension:Vector2;
	private var scale:Vector2;	
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	/**
	 * 
	 */
	public function new( w:Int, h:Int ) 
	{
		this.dimension = new Vector2( w, h );
		this.translation = new Vector2();
		this.scale = new Vector2( 1.0, -1.0 );
		
		//this.initialize( w, h );
	}
	
	//
	private function initialize( w:Int, h:Int )
	{		
		this.initializeFrame( w, h );
		this.initializePane( w, h );
		
		// -------------------- //				
		
		this.jframe.setVisible( true );
	}
	
	//
	private function initializeFrame( w:Int, h:Int ):Void
	{
		this.jframe = new JFrame( "GIS FUN!" );
		this.jframe.setSize( w, h );
		this.jframe.setDefaultCloseOperation( JFrame.EXIT_ON_CLOSE );
		this.jframe.setBackground( Color.LIGHT_GRAY );
		this.jframe.setLocationRelativeTo(null);
		this.jframe.setLayout( new BorderLayout() );
		
		// -------------------- //
		
		this.jpane = new JLayeredPane();
		this.jpane.setPreferredSize( new Dimension( w, h ) );
		this.jpane.setLayout( null );
		
		//
		this.jframe.getContentPane().add( this.jpane );		
	}
	
	//
	private function initializePane( w:Int, h:Int ):Void
	{
		this.jpane.removeAll();
		
		if( this.canvas != null )
			this.canvas.dispose();
		
		// -------------------- //
		
		var canvas_img:BufferedImage = new BufferedImage( w, h, BufferedImage.TYPE_INT_ARGB );
		
		var canvas:JLabel = new JLabel( new ImageIcon( canvas_img ) );
			canvas.setBounds( 0, 0, w, h );

		this.canvas = cast canvas_img.getGraphics();

		//
		this.jpane.setLayer( canvas, 1 );
		this.jpane.add( canvas );
	}
	
	// ************************************************************************ //
	// Methods
	// ************************************************************************ //	
	
	//
	public function setScaling( scale:Float ):Void
	{
		this.scale.x = scale;
		this.scale.y = scale * -1;
	}
	
	//
	public function setTranslation( x:Float, y:Float ):Void
	{
		this.translation.x = x;
		this.translation.y = y;
	}
	
	// ------------------------------------------------------------------------ //
	// ------------------------------------------------------------------------ //
	
	//
	public function draw( list:Vector<IVector3> ):Void
	{
		return;
		
		//
		this.canvas.setColor( new Color( 0.5, 0.2, 0.8, 1 ) );
		
		for( point in list )
		{
			var x:Int = Std.int( this.translation.x + point.x * this.dimension.x * this.scale.x );
			var y:Int = Std.int( this.translation.y + point.y * this.dimension.y * this.scale.y );
			
			this.canvas.fillOval( x, y, 2, 2 );
		}
	}
}