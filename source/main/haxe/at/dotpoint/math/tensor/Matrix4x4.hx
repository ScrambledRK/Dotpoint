package at.dotpoint.math.tensor;

import at.dotpoint.math.tensor.Matrix3x3.TMatrix3x3;
import at.dotpoint.exception.IndexBoundsException;
import at.dotpoint.math.tensor.ITensor.TTensor;

/**
 *
 */
typedef TMatrix4x4 = {
    > TMatrix3x3,

    public var m14:Float;
    public var m24:Float;
    public var m34:Float;

    public var m41:Float;
    public var m42:Float;
    public var m43:Float;
    public var m44:Float;
}


/**
 *
 */
@:forward
abstract Matrix4x4(DMatrix4x4) from DMatrix4x4 to DMatrix4x4
{
//
    inline public function new()
    {
        this = new DMatrix4x4();
    }

    // ************************************************************************ //
    // Abstract
    // ************************************************************************ //

    //
    @:from @:noDoc @:noCompletion
    inline public static function fromDMatrix4x4( from:DMatrix4x4 ):Matrix4x4
    {
        return from;
    }

    //
    @:from @:noDoc @:noCompletion
    inline public static function fromIMatrix( from:IMatrix<Matrix4x4> ):Matrix4x4
    {
//		#if debug
//			if( !Std.is( from, Matrix4x4 ) )
//				throw new RuntimeException("only Matrix4x4 is a supported IVector<Matrix4x4> interface");
//		#end

        return cast from;
    }

    //
    @:from @:noDoc @:noCompletion
    inline public static function fromTMatrix( from:TMatrix4x4 ):Matrix4x4
    {
        var result:Matrix4x4 = new Matrix4x4();
            result.m11 = from.m11;
            result.m12 = from.m12;
            result.m13 = from.m13;
            result.m14 = from.m14;
            result.m21 = from.m21;
            result.m22 = from.m22;
            result.m23 = from.m23;
            result.m24 = from.m24;
            result.m31 = from.m31;
            result.m32 = from.m32;
            result.m33 = from.m33;
            result.m34 = from.m34;
            result.m41 = from.m41;
            result.m42 = from.m42;
            result.m43 = from.m43;
            result.m44 = from.m44;

        return result;
    }

    //
    @:from @:noDoc @:noCompletion
    inline public static function fromArray( from:Array<Float> ):Matrix4x4
    {
        #if debug
        if( from.length != 9 )
            throw new IndexBoundsException( from.length, 0, 16 );
        #end

        var result:Matrix4x4 = new Matrix4x4();
            result.m11 = from[0];
            result.m12 = from[1];
            result.m13 = from[2];
            result.m14 = from[3];
            result.m21 = from[4];
            result.m22 = from[5];
            result.m23 = from[6];
            result.m24 = from[7];
            result.m31 = from[8];
            result.m32 = from[9];
            result.m33 = from[10];
            result.m34 = from[11];
            result.m41 = from[12];
            result.m42 = from[13];
            result.m43 = from[14];
            result.m44 = from[15];

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
            result[3] = this.m14;
            result[4] = this.m21;
            result[5] = this.m22;
            result[6] = this.m23;
            result[7] = this.m24;
            result[8] = this.m31;
            result[9] = this.m32;
            result[10] = this.m33;
            result[11] = this.m34;
            result[12] = this.m41;
            result[13] = this.m42;
            result[14] = this.m43;
            result[15] = this.m44;

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
class DMatrix4x4 implements IMatrix<Matrix4x4>
{
    public var numComponents(get,never):Float;
    inline private function get_numComponents(){ return 16; }

    public var m11:Float; public var m21:Float; public var m31:Float; public var m41:Float;
    public var m12:Float; public var m22:Float; public var m32:Float; public var m42:Float;
    public var m13:Float; public var m23:Float; public var m33:Float; public var m43:Float;
    public var m14:Float; public var m24:Float; public var m34:Float; public var m44:Float;

    // ************************************************************************ //
    // Constructor
    // ************************************************************************ //

    //
    public function new( )
    {
        this.identity();
    }

    //
    public function clone( ?into:Matrix4x4 ):Matrix4x4
    {
        if( into != null )
            into = new Matrix4x4();

        into.m11 = this.m11; into.m21 = this.m21; into.m31 = this.m31; into.m41 = this.m41;
        into.m12 = this.m12; into.m22 = this.m22; into.m32 = this.m32; into.m42 = this.m42;
        into.m13 = this.m13; into.m23 = this.m23; into.m33 = this.m33; into.m43 = this.m43;
        into.m14 = this.m14; into.m24 = this.m24; into.m34 = this.m34; into.m44 = this.m44;

        return into;
    }

    //
    public function copy( from:TTensor ):Matrix4x4
    {
        m11 = from.get(0); m21 = from.get(4); m31 = from.get(8);  m41 = from.get(12);
        m12 = from.get(1); m22 = from.get(5); m32 = from.get(9);  m42 = from.get(13);
        m13 = from.get(2); m23 = from.get(6); m33 = from.get(10); m43 = from.get(14);
        m14 = from.get(3); m24 = from.get(7); m34 = from.get(11); m44 = from.get(15);

        return this;
    }

    //
    public function zero( ):Matrix4x4
    {
        m11 = 0; m21 = 0; m31 = 0; m41 = 0;
        m12 = 0; m22 = 0; m32 = 0; m42 = 0;
        m13 = 0; m23 = 0; m33 = 0; m43 = 0;
        m14 = 0; m24 = 0; m34 = 0; m44 = 0;

        return this;
    }

    //
    public function identity( ):Matrix4x4
    {
        m11 = 1; m21 = 0; m31 = 0; m41 = 0;
        m12 = 0; m22 = 1; m32 = 0; m42 = 0;
        m13 = 0; m23 = 0; m33 = 1; m43 = 0;
        m14 = 0; m24 = 0; m34 = 0; m44 = 1;

        return this;
    }

    //
    public function transpose():Matrix4x4
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
            case 0:  return this.m11;
            case 1:  return this.m12;
            case 2:  return this.m13;
            case 3:  return this.m14;

            case 4:  return this.m21;
            case 5:  return this.m22;
            case 6:  return this.m23;
            case 7:  return this.m24;

            case 8:  return this.m31;
            case 9:  return this.m32;
            case 10: return this.m33;
            case 11: return this.m34;

            case 12: return this.m41;
            case 13: return this.m42;
            case 14: return this.m43;
            case 15: return this.m44;

            default:
                throw new IndexBoundsException( index, 0, 16 );
        }
    }

    //
    inline public function set( index:Int, value:Float ):Float
    {
        switch( index )
        {
            case 0:  return this.m11 = value;
            case 1:  return this.m12 = value;
            case 2:  return this.m13 = value;
            case 3:  return this.m14 = value;

            case 4:  return this.m21 = value;
            case 5:  return this.m22 = value;
            case 6:  return this.m23 = value;
            case 7:  return this.m24 = value;

            case 8:  return this.m31 = value;
            case 9:  return this.m32 = value;
            case 10: return this.m33 = value;
            case 11: return this.m34 = value;

            case 12: return this.m41 = value;
            case 13: return this.m42 = value;
            case 14: return this.m43 = value;
            case 15: return this.m44 = value;

            default:
                throw new IndexBoundsException( index, 0, 16 );
        }
    }

    //
    public function equals( b:Matrix4x4 ):Bool
    {
        return    BasicMath.equals( b.m11, this.m11 )
               && BasicMath.equals( b.m12, this.m12 )
               && BasicMath.equals( b.m13, this.m13 )
               && BasicMath.equals( b.m14, this.m14 )
               && BasicMath.equals( b.m21, this.m21 )
               && BasicMath.equals( b.m22, this.m22 )
               && BasicMath.equals( b.m23, this.m23 )
               && BasicMath.equals( b.m24, this.m24 )
               && BasicMath.equals( b.m31, this.m31 )
               && BasicMath.equals( b.m32, this.m32 )
               && BasicMath.equals( b.m33, this.m33 )
               && BasicMath.equals( b.m34, this.m34 )
               && BasicMath.equals( b.m41, this.m41 )
               && BasicMath.equals( b.m42, this.m42 )
               && BasicMath.equals( b.m43, this.m43 )
               && BasicMath.equals( b.m44, this.m44 )
        ;
    }

    // -------------------------------------- //

    //
    inline public function add( b:Matrix4x4, scale:Float = 1 ):Matrix4x4
    {
        this.m11 += b.m11 * scale;
        this.m12 += b.m12 * scale;
        this.m13 += b.m13 * scale;
        this.m14 += b.m14 * scale;

        this.m21 += b.m21 * scale;
        this.m22 += b.m22 * scale;
        this.m23 += b.m23 * scale;
        this.m24 += b.m24 * scale;

        this.m31 += b.m31 * scale;
        this.m32 += b.m32 * scale;
        this.m33 += b.m33 * scale;
        this.m34 += b.m34 * scale;

        this.m41 += b.m41 * scale;
        this.m42 += b.m42 * scale;
        this.m43 += b.m43 * scale;
        this.m44 += b.m44 * scale;

        return this;
    }

    //
    inline public function sub( b:Matrix4x4, scale:Float = 1 ):Matrix4x4
    {
        this.m11 -= b.m11 * scale;
        this.m12 -= b.m12 * scale;
        this.m13 -= b.m13 * scale;
        this.m14 -= b.m14 * scale;

        this.m21 -= b.m21 * scale;
        this.m22 -= b.m22 * scale;
        this.m23 -= b.m23 * scale;
        this.m24 -= b.m24 * scale;

        this.m31 -= b.m31 * scale;
        this.m32 -= b.m32 * scale;
        this.m33 -= b.m33 * scale;
        this.m34 -= b.m34 * scale;

        this.m41 -= b.m41 * scale;
        this.m42 -= b.m42 * scale;
        this.m43 -= b.m43 * scale;
        this.m44 -= b.m44 * scale;

        return this;
    }

    //
    inline public function scale( scale:Float ):Matrix4x4
    {
        this.m11 *= scale;
        this.m12 *= scale;
        this.m13 *= scale;
        this.m14 *= scale;

        this.m21 *= scale;
        this.m22 *= scale;
        this.m23 *= scale;
        this.m24 *= scale;

        this.m31 *= scale;
        this.m32 *= scale;
        this.m33 *= scale;
        this.m34 *= scale;

        this.m41 *= scale;
        this.m42 *= scale;
        this.m43 *= scale;
        this.m44 *= scale;

        return this;
    }

    // ************************************************************************ //
    // IMatrix
    // ************************************************************************ //

    //
    public function determinant():Float
    {
        return   (m11 * m22 - m21 * m12) * (m33 * m44 - m43 * m34)
               - (m11 * m32 - m31 * m12) * (m23 * m44 - m43 * m24)
               + (m11 * m42 - m41 * m12) * (m23 * m34 - m33 * m24)
               + (m21 * m32 - m31 * m22) * (m13 * m44 - m43 * m14)
               - (m21 * m42 - m41 * m22) * (m13 * m34 - m33 * m14)
               + (m31 * m42 - m41 * m32) * (m13 * m24 - m23 * m14)
        ;
    }

    //
    public function multiply( other:Matrix4x4, asLeft:Bool ):Matrix4x4
    {
        var a:Matrix4x4;
        var b:Matrix4x4;

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

        this.m11 = a.m11 * b.m11 + a.m12 * b.m21 + a.m13 * b.m31 + a.m14 * b.m41;
        this.m12 = a.m11 * b.m12 + a.m12 * b.m22 + a.m13 * b.m32 + a.m14 * b.m42;
        this.m13 = a.m11 * b.m13 + a.m12 * b.m23 + a.m13 * b.m33 + a.m14 * b.m43;
        this.m14 = a.m11 * b.m14 + a.m12 * b.m24 + a.m13 * b.m34 + a.m14 * b.m44;

        this.m21 = a.m21 * b.m11 + a.m22 * b.m21 + a.m23 * b.m31 + a.m24 * b.m41;
        this.m22 = a.m21 * b.m12 + a.m22 * b.m22 + a.m23 * b.m32 + a.m24 * b.m42;
        this.m23 = a.m21 * b.m13 + a.m22 * b.m23 + a.m23 * b.m33 + a.m24 * b.m43;
        this.m24 = a.m21 * b.m14 + a.m22 * b.m24 + a.m23 * b.m34 + a.m24 * b.m44;

        this.m31 = a.m31 * b.m11 + a.m32 * b.m21 + a.m33 * b.m31 + a.m34 * b.m41;
        this.m32 = a.m31 * b.m12 + a.m32 * b.m22 + a.m33 * b.m32 + a.m34 * b.m42;
        this.m33 = a.m31 * b.m13 + a.m32 * b.m23 + a.m33 * b.m33 + a.m34 * b.m43;
        this.m34 = a.m31 * b.m14 + a.m32 * b.m24 + a.m33 * b.m34 + a.m34 * b.m44;

        this.m41 = a.m41 * b.m11 + a.m42 * b.m21 + a.m43 * b.m31 + a.m44 * b.m41;
        this.m42 = a.m41 * b.m12 + a.m42 * b.m22 + a.m43 * b.m32 + a.m44 * b.m42;
        this.m43 = a.m41 * b.m13 + a.m42 * b.m23 + a.m43 * b.m33 + a.m44 * b.m43;
        this.m44 = a.m41 * b.m14 + a.m42 * b.m24 + a.m43 * b.m34 + a.m44 * b.m44;

        //
        return this;
    }

    //
    public function inverse():Matrix4x4
    {
        var d:Float = determinant();

        if( Math.abs(d) < BasicMath.ZERO_TOLERANCE )
            return this;

        d = 1 / d;

        var m11:Float = this.m11; var m21:Float = this.m21; var m31:Float = this.m31; var m41:Float = this.m41;
        var m12:Float = this.m12; var m22:Float = this.m22; var m32:Float = this.m32; var m42:Float = this.m42;
        var m13:Float = this.m13; var m23:Float = this.m23; var m33:Float = this.m33; var m43:Float = this.m43;
        var m14:Float = this.m14; var m24:Float = this.m24; var m34:Float = this.m34; var m44:Float = this.m44;

        this.m11 =  d * ( m22*(m33*m44 - m43*m34) - m32*(m23*m44 - m43*m24) + m42*(m23*m34 - m33*m24) );
        this.m12 = -d * ( m12*(m33*m44 - m43*m34) - m32*(m13*m44 - m43*m14) + m42*(m13*m34 - m33*m14) );
        this.m13 =  d * ( m12*(m23*m44 - m43*m24) - m22*(m13*m44 - m43*m14) + m42*(m13*m24 - m23*m14) );
        this.m14 = -d * ( m12*(m23*m34 - m33*m24) - m22*(m13*m34 - m33*m14) + m32*(m13*m24 - m23*m14) );
        this.m21 = -d * ( m21*(m33*m44 - m43*m34) - m31*(m23*m44 - m43*m24) + m41*(m23*m34 - m33*m24) );
        this.m22 =  d * ( m11*(m33*m44 - m43*m34) - m31*(m13*m44 - m43*m14) + m41*(m13*m34 - m33*m14) );
        this.m23 = -d * ( m11*(m23*m44 - m43*m24) - m21*(m13*m44 - m43*m14) + m41*(m13*m24 - m23*m14) );
        this.m24 =  d * ( m11*(m23*m34 - m33*m24) - m21*(m13*m34 - m33*m14) + m31*(m13*m24 - m23*m14) );
        this.m31 =  d * ( m21*(m32*m44 - m42*m34) - m31*(m22*m44 - m42*m24) + m41*(m22*m34 - m32*m24) );
        this.m32 = -d * ( m11*(m32*m44 - m42*m34) - m31*(m12*m44 - m42*m14) + m41*(m12*m34 - m32*m14) );
        this.m33 =  d * ( m11*(m22*m44 - m42*m24) - m21*(m12*m44 - m42*m14) + m41*(m12*m24 - m22*m14) );
        this.m34 = -d * ( m11*(m22*m34 - m32*m24) - m21*(m12*m34 - m32*m14) + m31*(m12*m24 - m22*m14) );
        this.m41 = -d * ( m21*(m32*m43 - m42*m33) - m31*(m22*m43 - m42*m23) + m41*(m22*m33 - m32*m23) );
        this.m42 =  d * ( m11*(m32*m43 - m42*m33) - m31*(m12*m43 - m42*m13) + m41*(m12*m33 - m32*m13) );
        this.m43 = -d * ( m11*(m22*m43 - m42*m23) - m21*(m12*m43 - m42*m13) + m41*(m12*m23 - m22*m13) );
        this.m44 =  d * ( m11*(m22*m33 - m32*m23) - m21*(m12*m33 - m32*m13) + m31*(m12*m23 - m22*m13) );

        return this;
    }

}
