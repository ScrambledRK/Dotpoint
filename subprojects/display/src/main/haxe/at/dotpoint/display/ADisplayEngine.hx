package haxe.at.dotpoint.display;

import haxe.at.dotpoint.datastructure.graph.event.TreeNodeEvent;
import haxe.at.dotpoint.dispatcher.event.Event;
import haxe.at.dotpoint.dispatcher.event.EventDispatcher;
import haxe.at.dotpoint.dispatcher.event.generic.StatusEvent;
import haxe.at.dotpoint.dispatcher.event.IEventDispatcher;
import haxe.at.dotpoint.display.renderable.IDisplayObject;
import haxe.at.dotpoint.display.renderable.material.buffer.IMaterialBuffer;
import haxe.at.dotpoint.display.renderable.mesh.buffer.IMeshBuffer;
import haxe.at.dotpoint.display.renderable.RenderableFactory;
import haxe.at.dotpoint.display.renderable.shader.buffer.IShaderBuffer;
import haxe.at.dotpoint.display.rendering.context.IRenderContext;
import haxe.at.dotpoint.display.rendering.IRenderer;
import haxe.at.dotpoint.display.scene.IScene;

/**
 * ...
 * @author RK
 */
class ADisplayEngine<TRenderer:IRenderer,TContext:IRenderContext,TScene:IScene<IDisplayObject>> extends EventDispatcher
{

	/**
	 *
	 */
	private var renderer:TRenderer;

	/**
	 *
	 */
	private var context:TContext;

	/**
	 *
	 */
	private var scene:TScene;

	// ************************************************************************ //
	// Constructor
	// ************************************************************************ //

	public function new( ?proxy:IEventDispatcher )
	{
		super( proxy );
	}

	// ************************************************************************ //
	// getter / setter
	// ************************************************************************ //

	/**
	 *
	 * @return
	 */
	public function getRenderer():TRenderer
	{
		return this.renderer;
	}

	/**
	 *
	 * @return
	 */
	public function getContext():TContext
	{
		return this.context;
	}

	/**
	 *
	 * @return
	 */
	public function getScene():TScene
	{
		return this.scene;
	}

	// ************************************************************************ //
	// Methods
	// ************************************************************************ //

	/**
	 *
	 * @param	onComplete
	 */
	public function initialize( onComplete:StatusEvent->Void ):Void
	{
		RenderableFactory.instance = this.createRenderableFactory();

		if( RenderableFactory.instance == null )
			throw "must set RenderableFactory.instance before initializing DisplayEngine";

		this.getContext().initialize( onComplete );
	}

	/**
	 *
	 */
	private function createRenderableFactory():RenderableFactory
	{
		throw "must override this method";
		return null;
	}
}