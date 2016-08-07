package haxe.at.dotpoint.display.rendering;

import haxe.at.dotpoint.dispatcher.lazy.LazyStatus;
import haxe.at.dotpoint.display.renderable.IDisplayObject;
import haxe.at.dotpoint.display.renderable.IRenderable;
import haxe.at.dotpoint.display.renderable.material.buffer.IMaterialBuffer;
import haxe.at.dotpoint.display.renderable.material.IMaterial;
import haxe.at.dotpoint.display.renderable.mesh.buffer.IMeshBuffer;
import haxe.at.dotpoint.display.renderable.mesh.IMesh;
import haxe.at.dotpoint.display.renderable.shader.buffer.IShaderBuffer;
import haxe.at.dotpoint.display.renderable.shader.data.IShaderData;
import haxe.at.dotpoint.display.renderable.shader.IShader;

/**
 * ...
 * @author RK
 */
class ARenderer<TDisplayEngine:IDisplayEngine> implements IRenderer
{

	//
	private var engine:TDisplayEngine;

	// ------------ //

	//
	private var currentMesh:IMesh;

	//
	private var currentMaterial:IMaterial;

	//
	private var currentShader:IShader;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( engine:TDisplayEngine )
	{
		this.engine = engine;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 * @param	entities
	 */
	public function render( entities:Iterable<IRenderable> ):Void
	{
		throw "must override method";
	}

	// ************************************************************************ //
	// Select Buffer
	// ************************************************************************ //

	/**
	 *
	 */
	private function selectEntity( entity:IRenderable ):Void
	{
		var isNewShader:Bool 	= this.selectShader( entity.shader );
		var isNewMaterial:Bool 	= this.selectMaterial( entity.material );
		var isNewMesh:Bool 		= this.selectMesh( entity.mesh );

		// ---------- //

		this.currentShader.buffer.bind( this.currentShader.data, entity.input );

		if( isNewShader || isNewMesh )
			this.currentMesh.buffer.bind( this.currentMesh.data, this.currentShader );

		if( isNewShader || isNewMaterial )
			this.currentMaterial.buffer.bind( this.currentMaterial.data, this.currentShader );
	}

	/**
	 * TODO: use IRenderableComponent instead of copy-paste for mesh/material/...
	 */
	private function selectMesh( mesh:IMesh ):Bool
	{
		var changed:Bool = false;

		if( mesh.data.lazyStatus == LazyStatus.INVALID )
		{
			mesh.buffer.allocate( mesh.data );
			mesh.data.lazyStatus = LazyStatus.VALID;

			changed = true;
		}

		// ---------- //

		if( this.currentMesh != mesh )
		{
			if( this.currentMesh != null )
				this.currentMesh.buffer.unbind( this.currentMesh.data, this.currentShader );

			this.currentMesh = mesh;

			changed = true;
		}

		return changed;
	}


	/**
	 *
	 */
	private function selectMaterial( material:IMaterial ):Bool
	{
		var changed:Bool = false;

		if( material.data.lazyStatus == LazyStatus.INVALID )
		{
			material.buffer.allocate( material.data );
			material.data.lazyStatus = LazyStatus.VALID;

			changed = true;
		}

		// ---------- //

		if( this.currentMaterial != material )
		{
			if( this.currentMaterial != null )
				this.currentMaterial.buffer.unbind( this.currentMaterial.data, this.currentShader );

			this.currentMaterial = material;

			changed = true;
		}

		return changed;
	}

	/**
	 *
	 */
	private function selectShader( shader:IShader ):Bool
	{
		var changed:Bool = false;

		if( shader.data.lazyStatus == LazyStatus.INVALID )
		{
			shader.buffer.allocate( shader.data );
			shader.data.lazyStatus = LazyStatus.VALID;

			changed = true;
		}

		// ---------- //

		if( this.currentShader != shader )
		{
			if( this.currentShader != null )
				this.currentShader.buffer.unbind( this.currentShader.data, null );

			this.currentShader = shader;

			changed = true;
		}

		return changed;
	}
}