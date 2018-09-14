package at.dotpoint.math.tensor;

import at.dotpoint.exception.IndexBoundsException;
import at.dotpoint.math.tensor.ITensor.TTensor;

/**
 *
 */
typedef TMatrix3x3 = {
    > TTensor,

    public var m11:Float;
    public var m12:Float;
    public var m13:Float;

    public var m21:Float;
    public var m22:Float;
    public var m23:Float;

    public var m31:Float;
    public var m32:Float;
    public var m33:Float;
}


/**
 *
 */
@:forward
abstract Matrix3x3(DMatrix3x3) from DMatrix3x3 to DMatrix3x3
{
//
    inline public function new()
    {
        this = new DMatrix3x3();
    }

    // ************************************************************************ //
    // Abstract
    // ************************************************************************ //

    //
    @:from @:noDoc @:noCompletion
    inline public static function fromDMatrix3x3( from:DMatrix3x3 ):Matrix3x3
    {
        return from;
    }

    //
    @:from @:noDoc @:noCompletion
    inline public static function fromIMatrix( from:IMatrix<Matrix3x3> ):Matrix3x3
    {
//		#if debug
//			if( !Std.is( from, Matrix3x3 ) )
//				throw new RuntimeException("only Matrix3x3 is a supported IVector<Matrix3x3> interface");
//		#end

        return cast from;
    }

    //
    @:from @:noDoc @:noCompletion
    inline public static function fromTMatrix( from:TMatrix3x3 ):Matrix3x3
    {
        var result:Matrix3x3 = new Matrix3x3();
            result.m11 = from.m11;
            result.m12 = from.m12;
            result.m13 = from.m13;
            result.m21 = from.m21;
            result.m22 = from.m22;
            result.m23 = from.m23;
            result.m31 = from.m31;
            result.m32 = from.m32;
            result.m33 = from.m33;

        return result;
    }

    //
    @:from @:noDoc @:noCompletion
    inline public static function fromArray( from:Array<Float> ):Matrix3x3
    {
        #if debug
        if( from.length != 9 )
            throw new IndexBoundsException( from.length, 0, 9 );
        #end

        var result:Matrix3x3 = new Matrix3x3();
            result.m11 = from[0];
            result.m12 = from[1];
            result.m13 = from[2];
            result.m21 = from[3];
            result.m22 = from[4];
            result.m23 = from[5];
            result.m31 = from[6];
            result.m32 = from[7];
            result.m33 = from[8];

        return result;
    }

    //
    @:to @:noDoc @:noCompletion
    inline public function toArray():Array<Float>
    {
        var result:Array<Float> = new Array<Float>();
            result[0] = this.m11;
            result[1] = this.m12;
            result[2] = this.m13;
            result[3] = this.m21;
            result[4] = this.m22;
            result[5] = this.m23;
            result[6] = this.m31;
            result[7] = this.m32;
            result[8] = this.m33;

        return result;
    }

    // ------------------------------------------------------------------------ //
    // ------------------------------------------------------------------------ //
    // ArrayAccess

    //
    @:arrayAccess @:noDoc @:noCompletion
    inline public function getComponent( index:Int ):Float
    {
        return this.get( index );
    }

    //
    @:arrayAccess @:noDoc @:noCompletion
    inline public function setComponent( index:Int, value:Float ):Float
    {
        return this.set( index, value );
    }
}

/**
 *
 */
class DMatrix3x3 implements IMatrix<Matrix3x3>
{
    public var numComponents(get,never):Float;
    inline private function get_numComponents(){ return 9; }

    public var m11:Float; public var m21:Float; public var m31:Float;
    public var m12:Float; public var m22:Float; public var m32:Float;
    public var m13:Float; public var m23:Float; public var m33:Float;

    // ************************************************************************ //
    // Constructor
    // ************************************************************************ //

    //
    public function new( )
    {
        this.identity();
    }

    //
    public function clone( ?into:Matrix3x3 ):Matrix3x3
    {
        if( into != null )
            into = new Matrix3x3();

        into.m11 = this.m11; into.m21 = this.m21; into.m31 = this.m31;
        into.m12 = this.m12; into.m22 = this.m22; into.m32 = this.m32;
        into.m13 = this.m13; into.m23 = this.m23; into.m33 = this.m33;

        return into;
    }

    //
    public function copy( from:TTensor ):Matrix3x3
    {
        m11 = from.get(0); m21 = from.get(3); m31 = from.get(6);
        m12 = from.get(1); m22 = from.get(4); m32 = from.get(7);
        m13 = from.get(2); m23 = from.get(5); m33 = from.get(8);

        return this;
    }

    //
    public function zero( ):Matrix3x3
    {
        m11 = 0; m21 = 0; m31 = 0;
        m12 = 0; m22 = 0; m32 = 0;
        m13 = 0; m23 = 0; m33 = 0;

        return this;
    }

    //
    public function identity( ):Matrix3x3
    {
        m11 = 1; m21 = 0; m31 = 0;
        m12 = 0; m22 = 1; m32 = 0;
        m13 = 0; m23 = 0; m33 = 1;

        return this;
    }

    //
    public function transpose():Matrix3x3
    {
        var t:Float;

        t = m21; m21 = m12; m12 = t;
        t = m31; m31 = m13; m13 = t;
        t = m32; m32 = m23; m23 = t;

        return this;
    }

    // ************************************************************************ //
    // ITensor
    // ************************************************************************ //

    //
    inline public function get( index:Int ):Float
    {
        switch( index )
        {
            case 0:	return this.m11;
            case 1:	return this.m12;
            case 2:	return this.m13;

            case 3:	return this.m21;
            case 4:	return this.m22;
            case 5:	return this.m23;

            case 6:	return this.m31;
            case 7:	return this.m32;
            case 8:	return this.m33;

            default:
                throw new IndexBoundsException( index, 0, 9 );
        }
    }

    //
    inline public function set( index:Int, value:Float ):Float
    {
        switch( index )
        {
            case 0:	return this.m11 = value;
            case 1:	return this.m12 = value;
            case 2:	return this.m13 = value;

            case 3:	return this.m21 = value;
            case 4:	return this.m22 = value;
            case 5:	return this.m23 = value;

            case 6:	return this.m31 = value;
            case 7:	return this.m32 = value;
            case 8:	return this.m33 = value;

            default:
                throw new IndexBoundsException( index, 0, 9 );
        }
    }

    //
    public function equals( b:Matrix3x3 ):Bool
    {
        return    BasicMath.equals( b.m11, this.m11 )
               && BasicMath.equals( b.m12, this.m12 )
               && BasicMath.equals( b.m13, this.m13 )
               && BasicMath.equals( b.m21, this.m21 )
               && BasicMath.equals( b.m22, this.m22 )
               && BasicMath.equals( b.m23, this.m23 )
               && BasicMath.equals( b.m31, this.m31 )
               && BasicMath.equals( b.m32, this.m32 )
               && BasicMath.equals( b.m33, this.m33 )
        ;
    }

    // -------------------------------------- //

    //
    inline public function add( b:Matrix3x3, scale:Float = 1 ):Matrix3x3
    {
        this.m11 += b.m11 * scale;
        this.m12 += b.m12 * scale;
        this.m13 += b.m13 * scale;

        this.m21 += b.m21 * scale;
        this.m22 += b.m22 * scale;
        this.m23 += b.m23 * scale;

        this.m31 += b.m31 * scale;
        this.m32 += b.m32 * scale;
        this.m33 += b.m33 * scale;

        return this;
    }

    //
    inline public function sub( b:Matrix3x3, scale:Float = 1 ):Matrix3x3
    {
        this.m11 -= b.m11 * scale;
        this.m12 -= b.m12 * scale;
        this.m13 -= b.m13 * scale;

        this.m21 -= b.m21 * scale;
        this.m22 -= b.m22 * scale;
        this.m23 -= b.m23 * scale;

        this.m31 -= b.m31 * scale;
        this.m32 -= b.m32 * scale;
        this.m33 -= b.m33 * scale;

        return this;
    }

    //
    inline public function scale( scale:Float ):Matrix3x3
    {
        this.m11 *= scale;
        this.m12 *= scale;
        this.m13 *= scale;

        this.m21 *= scale;
        this.m22 *= scale;
        this.m23 *= scale;

        this.m31 *= scale;
        this.m32 *= scale;
        this.m33 *= scale;

        return this;
    }

    // ************************************************************************ //
    // IMatrix
    // ************************************************************************ //

    //
    public function determinant():Float
    {
        var cf0:Float = m22 * m33 - m23 * m32;
        var cf3:Float = m13 * m32 - m12 * m33;
        var cf6:Float = m12 * m23 - m13 * m22;

        return m11 * cf0 + m21 * cf3 + m31 * cf6;
    }

    //
    public function multiply( other:Matrix3x3, asLeft:Bool ):Matrix3x3
    {
        var a:Matrix3x3;
        var b:Matrix3x3;

        //
        if( asLeft )
        {
            a = this.clone();
            b = other;
        }
        else
        {
            a = other;
            b = this.clone();
        }

        // ------------------ //

        this.m11 = a.m11 * b.m11 + a.m12 * b.m21 + a.m13 * b.m31;
        this.m12 = a.m11 * b.m12 + a.m12 * b.m22 + a.m13 * b.m32;
        this.m13 = a.m11 * b.m13 + a.m12 * b.m23 + a.m13 * b.m33;

        this.m21 = a.m21 * b.m11 + a.m22 * b.m21 + a.m23 * b.m31;
        this.m22 = a.m21 * b.m12 + a.m22 * b.m22 + a.m23 * b.m32;
        this.m23 = a.m21 * b.m13 + a.m22 * b.m23 + a.m23 * b.m33;

        this.m31 = a.m31 * b.m11 + a.m32 * b.m21 + a.m33 * b.m31;
        this.m32 = a.m31 * b.m12 + a.m32 * b.m22 + a.m33 * b.m32;
        this.m33 = a.m31 * b.m13 + a.m32 * b.m23 + a.m33 * b.m33;

        //
        return this;
    }

    //
    public function inverse():Matrix3x3
    {
        var d:Float = determinant();

        if( Math.abs(d) < BasicMath.ZERO_TOLERANCE )
            return this;

        d = 1 / d;

        var m11:Float = this.m11; var m21:Float = this.m21; var m31:Float = this.m31;
        var m12:Float = this.m12; var m22:Float = this.m22; var m32:Float = this.m32;
        var m13:Float = this.m13; var m23:Float = this.m23; var m33:Float = this.m33;

        this.m11 = (m22 * m33 - m23 * m32) * d;
        this.m12 = (m13 * m32 - m12 * m33) * d;
        this.m13 = (m12 * m23 - m13 * m22) * d;
        this.m21 = (m23 * m31 - m21 * m33) * d;
        this.m22 = (m11 * m33 - m13 * m31) * d;
        this.m23 = (m13 * m21 - m11 * m23) * d;
        this.m31 = (m21 * m32 - m22 * m31) * d;
        this.m32 = (m12 * m31 - m11 * m32) * d;
        this.m33 = (m11 * m22 - m12 * m21) * d;

        return this;
    }

}
