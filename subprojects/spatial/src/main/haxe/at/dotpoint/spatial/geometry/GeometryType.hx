package at.dotpoint.spatial.geometry;

/**
 * @author RK
 */
enum GeometryType 
{
	PRIMITIVE(type:PrimitiveType);
	COMPLEX(type:ComplexType);
}

//
enum PrimitiveType
{
	SPHERE;
	CUBE;
}

//
enum ComplexType
{
	CONVEX;
	CONCAVE;
}