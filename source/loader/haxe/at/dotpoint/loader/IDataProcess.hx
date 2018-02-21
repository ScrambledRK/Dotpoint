package at.dotpoint.loader;

import at.dotpoint.processor.task.ITask;

//
interface IDataProcess<TInput,TResult> extends ITask
{
    public var input:TInput;
    public var result:TResult;

    //
    public function then( resolve:TResult -> Void, ?reject:Dynamic -> Void ):Void;
}
