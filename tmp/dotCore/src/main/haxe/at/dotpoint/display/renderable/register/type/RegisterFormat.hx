package haxe.at.dotpoint.display.renderable.register.type;

/**
 * 13.03.15
 * @author RK
 */
enum RegisterFormat
{
	TNULL;
	TBOOL;
	TINT;

	TFLOAT_1;
	TFLOAT_2;
	TFLOAT_3;
	TFLOAT_4;

	TMATRIX_33;
	TMATRIX_44;

	TTexture;

	TArray( type:RegisterFormat, length:Int );
	TObject( fields:Array<RegisterFormat> );
}