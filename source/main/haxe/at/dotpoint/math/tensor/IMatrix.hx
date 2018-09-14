package at.dotpoint.math.tensor;

/**
 *
 */
interface IMatrix<T:IMatrix<T>> extends ITensor<T>
{
    /**
	 * reset the matrix to identity. diagonal will be set to 1, rest to 0.
	 * @return self for chain-method calling
	 */
    public function identity():T;

    /**
	 * switches row values with column values and vice versa
	 * @return self for chain-method calling
	 */
    public function transpose():T;

    /**
     * sets given matrix to the inverse using cramer formula (devide by determinant, multiply by inverse)
     * @return self for chain-method calling
     */
    public function inverse():T;

    /**
     * useful value for various operations.
     * yes I am this specific about this. fight me!
     */
    public function determinant():Float;

    /**
     * calculates the matrix product of 2 matrices. not communtative (a*b != b*a)
     * rows of a are multiplied with columns of b. can be used to compose 2 matrix together.
     *
     * @return self for chain-method calling
     */
    public function multiply( b:T, asLeft:Bool ):T;
}
