package at.dotpoint.datastructure.graph;

import haxe.unit.TestCase;
using at.dotpoint.unit.TestCaseHelper;

/**
 *
 */
class GraphContainerTest extends TestCase
{

	//
	public function testIntegrationNodes():Void
	{
		//
		var container:GraphContainer = new GraphContainer();

		//
		var node1:GraphNode = container.createNode();
		var node2:GraphNode = container.createNode();

		aTrue( node1 != null, "1.1" );
		aTrue( node2 != null, "1.2" );

		aEquals( node1.ID, 0, "1.3" );
		aEquals( node2.ID, 1, "1.4" );

		//
		var node3:GraphNode = container.getNodeByID( 0 );
		var node4:GraphNode = container.getNodeByID( 1 );

		aEquals( node1, node3, "2.1" );
		aEquals( node2, node4, "2.2" );

		//
		container.removeNode( node1 );

		var node5:GraphNode = container.getNodeByID( 0 );
		var node6:GraphNode = container.getNodeByID( 1 );

		aEquals( node5, null, "3.1" );
		aEquals( node2, node6, "3.2" );
	}

	//
	public function testIntegrationEdges():Void
	{
		var container:GraphContainer = new GraphContainer();

		//
		var node1:GraphNode = container.createNode();
		var node2:GraphNode = container.createNode();
		var node3:GraphNode = container.createNode();

		aEquals( container.getNumEdges( 0 ), 0, "1.1" );

		//
		var edge1:GraphEdge = container.createEdge( 0, node1, node2 );
		var edge2:GraphEdge = container.createEdge( 0, node1, node2 ); // twice!
		var edge3:GraphEdge = container.createEdge( 1, node1, node3 );

		aTrue( edge1 != null, "1.2" );
		aTrue( edge2 != null, "1.3" );
		aTrue( edge3 != null, "1.4" );

		aEquals( edge1.ID, 0, "1.5" );
		aEquals( edge2.ID, 1, "1.6" );
		aEquals( edge3.ID, 2, "1.7" );

		//
		aEquals( container.getNumEdges( 0 ), 2, "2.1" );
		aEquals( container.getNumEdges( 1 ), 1, "2.2" );

		aEquals( edge1.aNodeID, node1.ID, "2.3" );
		aEquals( edge1.bNodeID, node2.ID, "2.4" );

		aEquals( edge2.aNodeID, node1.ID, "2.5" );
		aEquals( edge2.bNodeID, node2.ID, "2.6" );

		aEquals( edge3.aNodeID, node1.ID, "2.7" );
		aEquals( edge3.bNodeID, node3.ID, "2.8" );

		//
		container.removeEdge( edge1 );

		aEquals( container.getNumEdges( 0 ), 1, "3.1" );
		aEquals( container.getNumEdges( 1 ), 1, "3.2" );

		//
		container.removeNode( node3 );

		aEquals( container.getNumEdges( 0 ), 1, "3.3" );
		aEquals( container.getNumEdges( 1 ), 0, "3.4" );
	}
}
