package at.dotpoint.processor;

import at.dotpoint.processor.task.ITask;

//
interface IDataProcess<TInput,TResult> extends ITask
{
    public var input:TInput;
    public var result:TResult;
}
