package at.dotpoint.datastructure.graph;

import at.dotpoint.datastructure.iterator.IIterator;
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
		var i:Int = 0;
		var j:Int = 0;

		// ------------ //

		//
		var container:GraphContainer = new GraphContainer();

		//
		i++; j = 0;

		var node1:GraphNode = container.createNode();
		var node2:GraphNode = container.createNode();

		aTrue( node1 != null, '$i.$j' ); j++;
		aTrue( node2 != null, '$i.$j' ); j++;

		aEquals( node1.ID, 0, '$i.$j' ); j++;
		aEquals( node2.ID, 1, '$i.$j' ); j++;

		//
		i++; j = 0;

		var node3:GraphNode = container.getNodeByID( 0 );
		var node4:GraphNode = container.getNodeByID( 1 );

		aEquals( node1, node3, '$i.$j' ); j++;
		aEquals( node2, node4, '$i.$j' ); j++;

		//
		i++; j = 0;

		container.removeNode( node1 );

		var node5:GraphNode = container.getNodeByID( 0 );
		var node6:GraphNode = container.getNodeByID( 1 );

		aEquals( node5, null, '$i.$j' ); j++;
		aEquals( node2, node6, '$i.$j' ); j++;
	}

	//
	public function testIntegrationEdges():Void
	{
		var i:Int = 0;
		var j:Int = 0;

		// ------------ //

		var container:GraphContainer = new GraphContainer();

		// 1
		i++; j = 0;

		var node1:GraphNode = container.createNode();
		var node2:GraphNode = container.createNode();
		var node3:GraphNode = container.createNode();

		aEquals( container.getNumEdges( 0 ), 0, '$i.$j' );	j++;

		// 2
		i++; j = 0;

		var edge1:GraphEdge = container.createEdge( 0, node1, node2 );
		var edge2:GraphEdge = container.createEdge( 0, node1, node2 ); // twice!
		var edge3:GraphEdge = container.createEdge( 1, node1, node2 );
		var edge4:GraphEdge = container.createEdge( 1, node1, node3 );

		aEquals( container.getNumEdges( 0 ), 1, '$i.$j' ); j++;
		aEquals( container.getNumEdges( 1 ), 2, '$i.$j' ); j++;

		aTrue( edge1 != null, '$i.$j' ); j++;
		aTrue( edge2 != null, '$i.$j' ); j++;
		aTrue( edge3 != null, '$i.$j' ); j++;
		aTrue( edge4 != null, '$i.$j' ); j++;

		// 3
		i++; j = 0;

		aEquals( edge1, edge2, '$i.$j' ); j++;

		aEquals( edge1.ID, 0, '$i.$j' ); j++;
		aEquals( edge2.ID, 0, '$i.$j' ); j++;
		aEquals( edge3.ID, 1, '$i.$j' ); j++;
		aEquals( edge4.ID, 2, '$i.$j' ); j++;

		// 4
		i++; j = 0;

		aEquals( node1.edges[0], edge1.ID, '$i.$j' ); j++;
		aEquals( node2.edges[0], edge1.ID, '$i.$j' ); j++;

		aEquals( node1.edges[1], edge3.ID, '$i.$j' ); j++;
		aEquals( node2.edges[1], edge3.ID, '$i.$j' ); j++;

		aEquals( node1.edges[2], edge4.ID, '$i.$j' ); j++;
		aEquals( node3.edges[0], edge4.ID, '$i.$j' ); j++;

		// 5
		i++; j = 0;

		aEquals( edge1.aNodeID, node1.ID, '$i.$j' ); j++;
		aEquals( edge1.bNodeID, node2.ID, '$i.$j' ); j++;

		aEquals( edge3.aNodeID, node1.ID, '$i.$j' ); j++;
		aEquals( edge3.bNodeID, node2.ID, '$i.$j' ); j++;

		aEquals( edge4.aNodeID, node1.ID, '$i.$j' ); j++;
		aEquals( edge4.bNodeID, node3.ID, '$i.$j' ); j++;

		// 6
		i++; j = 0;

		container.removeEdge( edge1 );

		aEquals( container.getNumEdges( 0 ), 0, '$i.$j' ); j++;
		aEquals( container.getNumEdges( 1 ), 2, '$i.$j' ); j++;

		// 7
		i++; j = 0;

		container.removeNode( node3 );

		aEquals( container.getNumEdges( 0 ), 0, '$i.$j' ); j++;
		aEquals( container.getNumEdges( 1 ), 1, '$i.$j' ); j++;

		// 8
		i++; j = 0;

		aEquals( node1.edges.length, 1, '$i.$j' ); j++;
		aEquals( node2.edges.length, 1, '$i.$j' ); j++;
		aEquals( node3.edges.length, 0, '$i.$j' ); j++;
	}

	//
	public function testIteratorNeighbors():Void
	{
		var i:Int = 0;
		var j:Int = 0;

		// ------------ //

		var container:GraphContainer = new GraphContainer();

		// 1
		i++; j = 0;

		var list:Array<GraphNode> = new Array<GraphNode>();

		var node1:GraphNode = list[0] = container.createNode();
		var node2:GraphNode = list[1] = container.createNode();
		var node3:GraphNode = list[2] = container.createNode();
		var node4:GraphNode = list[3] = container.createNode();

		container.createEdge( 0, node1, node2 );
		container.createEdge( 1, node1, node2 );
		container.createEdge( 1, node1, node3 );
		container.createEdge( 1, node1, node4 );

		var iterator:IIterator<GraphNode> = container.iteratorNeighbors( node1, 1 );
		var counter:Int = 0;

		while( iterator.hasNext() )
		{
			var neighbor:GraphNode = iterator.next();
			var expected:GraphNode = list[ 1 + (counter++) ];

			aEquals( neighbor, expected, '$counter' );
		}

		aEquals( counter, 3, "counter" );
	}
}
