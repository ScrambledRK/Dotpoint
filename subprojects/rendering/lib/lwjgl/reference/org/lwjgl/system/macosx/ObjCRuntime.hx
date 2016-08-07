package org.lwjgl.system.macosx;

import java.StdTypes;
@:native("org.lwjgl.system.macosx.ObjCRuntime")
@:final
/** Native bindings to Objective-C Runtime.  */
extern class ObjCRuntime 
{
/** Nil value.  */
	inline static public var nil:haxe.Int64 = 0;
/** Boolean values.  */
	inline static public var YES:Int8 = 1;
/** Boolean values.  */
	inline static public var NO:Int8 = 0;
/** Types.  */
	inline static public var _C_ID:Char16 = 64;
/** Types.  */
	inline static public var _C_CLASS:Char16 = 35;
/** Types.  */
	inline static public var _C_SEL:Char16 = 58;
/** Types.  */
	inline static public var _C_CHR:Char16 = 99;
/** Types.  */
	inline static public var _C_UCHR:Char16 = 67;
/** Types.  */
	inline static public var _C_SHT:Char16 = 115;
/** Types.  */
	inline static public var _C_USHT:Char16 = 83;
/** Types.  */
	inline static public var _C_INT:Char16 = 105;
/** Types.  */
	inline static public var _C_UINT:Char16 = 73;
/** Types.  */
	inline static public var _C_LNG:Char16 = 108;
/** Types.  */
	inline static public var _C_ULNG:Char16 = 76;
/** Types.  */
	inline static public var _C_LNG_LNG:Char16 = 113;
/** Types.  */
	inline static public var _C_ULNG_LNG:Char16 = 81;
/** Types.  */
	inline static public var _C_FLT:Char16 = 102;
/** Types.  */
	inline static public var _C_DBL:Char16 = 100;
/** Types.  */
	inline static public var _C_BFLD:Char16 = 98;
/** Types.  */
	inline static public var _C_BOOL:Char16 = 66;
/** Types.  */
	inline static public var _C_VOID:Char16 = 118;
/** Types.  */
	inline static public var _C_UNDEF:Char16 = 63;
/** Types.  */
	inline static public var _C_PTR:Char16 = 94;
/** Types.  */
	inline static public var _C_CHARPTR:Char16 = 42;
/** Types.  */
	inline static public var _C_ATOM:Char16 = 37;
/** Types.  */
	inline static public var _C_ARY_B:Char16 = 91;
/** Types.  */
	inline static public var _C_ARY_E:Char16 = 93;
/** Types.  */
	inline static public var _C_UNION_B:Char16 = 40;
/** Types.  */
	inline static public var _C_UNION_E:Char16 = 41;
/** Types.  */
	inline static public var _C_STRUCT_B:Char16 = 123;
/** Types.  */
	inline static public var _C_STRUCT_E:Char16 = 125;
/** Types.  */
	inline static public var _C_VECTOR:Char16 = 33;
/** Types.  */
	inline static public var _C_CONST:Char16 = 114;
/** Policies related to associative references.  */
	inline static public var OBJC_ASSOCIATION_ASSIGN:Int = 0;
/** Policies related to associative references.  */
	inline static public var OBJC_ASSOCIATION_RETAIN_NONATOMIC:Int = 1;
/** Policies related to associative references.  */
	inline static public var OBJC_ASSOCIATION_COPY_NONATOMIC:Int = 3;
/** Policies related to associative references.  */
	inline static public var OBJC_ASSOCIATION_RETAIN:Int = 1401;
/** Policies related to associative references.  */
	inline static public var OBJC_ASSOCIATION_COPY:Int = 1403;
/** Alternative version of: {@link #objc_getClassList}  */
/**
 * Obtains the list of registered class definitions.
 * 
 * <p>The Objective-C runtime library automatically registers all the classes defined in your source code. You can create class definitions at runtime and
 * register them with the {@link #objc_addClass} function.</p>
 * 
 * <h3>Special Considerations</h3>
 * You cannot assume that class objects you get from this function are classes that inherit from NSObject, so you cannot safely call any methods on such
 * classes without detecting that the method is implemented first.
 *
 * @param buffer      an array of Class values. On output, each Class value points to one class definition, up to either {@code bufferCount} or the total number of
 *                    registered classes, whichever is less. You can pass {@code NULL} to obtain the total number of registered class definitions without actually retrieving
 *                    any class definitions.
 * @param bufferCount the number of pointers for which you have allocated space in buffer. On return, this function fills in only this number of elements. If this number
 *                    is less than the number of registered classes, this function returns an arbitrary subset of the registered classes.
 *
 * @return an integer value indicating the total number of registered classes
 */
	static public function objc_getClassList(buffer:java.nio.ByteBuffer,bufferCount:Int):Int;
	@:overload(function (buffer:org.lwjgl.PointerBuffer):Int {})
/** JNI method for {@link #objc_storeWeak}  */
	static public function nobjc_storeWeak(location:haxe.Int64,obj:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #class_addMethod}  */
/**
 * Adds a new method to a class with a given name and implementation.
 * 
 * <h3>Discussion</h3>
 * class_addMethod will add an override of a superclass's implementation, but will not replace an existing implementation in this class. To change an
 * existing implementation, use {@link #method_setImplementation}.
 * 
 * <p>An Objective-C method is simply a C function that takes at least two arguments &ndash; {@code self} and {@code _cmd}. For example, given the following
 * function:
 * <pre><code style="font-family: monospace">
 * void myMethodIMP(id self, SEL _cmd)
 * {
 *     // implementation ....
 * }</code></pre>
 * you can dynamically add it to a class as a method (called {@code resolveThisMethodDynamically}) like this:
 * <pre><code style="font-family: monospace">
 * class_addMethod([self class], @selector(resolveThisMethodDynamically), (IMP) myMethodIMP, "v@:");</code></pre></p>
 *
 * @param cls   the class to which to add a method
 * @param name  a selector that specifies the name of the method being added
 * @param imp   a function which is the implementation of the new method. The function must take at least two arguments &ndash; {@code self} and {@code _cmd}.
 * @param types an array of characters that describe the types of the arguments to the method. For possible values, see <em>Objective-C Runtime Programming Guide
 *              &gt; Type Encodings in Objective-C Runtime Programming Guide. Since the function must take at least two arguments &ndash; {@code self} and
 *              {@code _cmd}, the second and third characters must be “@:” (the first character is the return type).
 *
 * @return {@link #YES} if the method was added successfully, otherwise {@link #NO} (for example, the class already contains a method implementation with that name)
 */
	static public function class_addMethod(cls:haxe.Int64,name:haxe.Int64,imp:haxe.Int64,types:java.nio.ByteBuffer):Int8;
	@:overload(function (cls:haxe.Int64,name:haxe.Int64,imp:haxe.Int64,types:java.lang.CharSequence):Int8 {})
/** CharSequence version of: {@link #objc_copyClassNamesForImage}  */
/**
 * Returns the names of all the classes within a specified library or framework.
 *
 * @param image the library or framework you are inquiring about
 *
 * @return an array of C strings representing all of the class names within the specified library or framework
 */
	static public function objc_copyClassNamesForImage(image:java.nio.ByteBuffer):org.lwjgl.PointerBuffer;
	@:overload(function (image:java.lang.CharSequence):org.lwjgl.PointerBuffer {})
/** JNI method for {@link #class_addProtocol}  */
	static public function nclass_addProtocol(cls:haxe.Int64,protocol:haxe.Int64):Int8;
/** CharSequence version of: {@link #objc_getProtocol}  */
/**
 * Returns a specified protocol.
 * 
 * <p>This function acquires the runtime lock.</p>
 *
 * @param name the name of a protocol
 *
 * @return the protocol named {@code name}{, or {@code NULL} if no protocol named name could be found
 */
	static public function objc_getProtocol(name:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (name:java.lang.CharSequence):haxe.Int64 {})
/** JNI method for {@link #object_dispose}  */
	static public function nobject_dispose(obj:haxe.Int64):haxe.Int64;
/** JNI method for {@link #sel_getName}  */
	static public function nsel_getName(sel:haxe.Int64):haxe.Int64;
/** JNI method for {@link #class_getInstanceVariable}  */
	static public function nclass_getInstanceVariable(cls:haxe.Int64,name:haxe.Int64):haxe.Int64;
/** JNI method for {@link #imp_getBlock}  */
	static public function nimp_getBlock(anImp:haxe.Int64):haxe.Int64;
/**
 * Describes the instance variables declared by a class.
 *
 * @param cls the class to inspect
 *
 * @return an array of pointers of type Ivar describing the instance variables declared by the class. Any instance variables declared by superclasses are not
 *         included. The array contains {@code *outCount} pointers followed by a {@code NULL} terminator. You must free the array with free().
 *         
 *         <p>If the class declares no instance variables, or {@code cls} is Nil, {@code NULL} is returned and {@code *outCount} is 0.</p>
 */
	static public function class_copyIvarList(cls:haxe.Int64):org.lwjgl.PointerBuffer;
/** JNI method for {@link #class_setWeakIvarLayout}  */
	static public function nclass_setWeakIvarLayout(cls:haxe.Int64,layout:haxe.Int64):Void;
/** CharSequence version of: {@link #objc_allocateClassPair}  */
/**
 * Creates a new class and metaclass.
 * 
 * <p>You can get a pointer to the new metaclass by calling <code style="font-family: monospace">object_getClass(newClass)</code>.</p>
 * 
 * <p>To create a new class, start by calling objc_allocateClassPair. Then set the class's attributes with functions like {@link #class_addMethod} and
 * {@link #class_addIvar}. When you are done building the class, call {@link #objc_registerClassPair}. The new class is now ready for use.</p>
 * 
 * <p>Instance methods and instance variables should be added to the class itself. Class methods should be added to the metaclass.</p>
 *
 * @param superclass the class to use as the new class's superclass, or Nil to create a new root class
 * @param name       the string to use as the new class's name. The string will be copied.
 * @param extraBytes the number of bytes to allocate for indexed ivars at the end of the class and metaclass objects. This should usually be 0.
 *
 * @return the new class, or Nil if the class could not be created (for example, the desired name is already in use)
 */
	static public function objc_allocateClassPair(superclass:haxe.Int64,name:java.nio.ByteBuffer,extraBytes:haxe.Int64):haxe.Int64;
	@:overload(function (superclass:haxe.Int64,name:java.lang.CharSequence,extraBytes:haxe.Int64):haxe.Int64 {})
/** CharSequence version of: {@link #class_getInstanceVariable}  */
/**
 * Returns the Ivar for a specified instance variable of a given class.
 *
 * @param cls  the class whose instance variable you wish to obtain
 * @param name the name of the instance variable definition to obtain
 *
 * @return a pointer to an Ivar data structure containing information about the instance variable specified by name
 */
	static public function class_getInstanceVariable(cls:haxe.Int64,name:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (cls:haxe.Int64,name:java.lang.CharSequence):haxe.Int64 {})
/**
 * Returns an array of property attributes for a given property.
 *
 * @param property the property whose attributes you want to copy
 * @param outCount the number of attributes returned in the array
 *
 * @return an array of property attributes. You must free the array with free().
 */
/** Alternative version of: {@link #property_copyAttributeList}  */
	static public function property_copyAttributeList(property:haxe.Int64,outCount:java.nio.IntBuffer):java.nio.ByteBuffer;
	@:overload(function (property:haxe.Int64,outCount:java.nio.ByteBuffer):java.nio.ByteBuffer {})
/** JNI method for {@link #sel_isEqual}  */
	static public function nsel_isEqual(lhs:haxe.Int64,rhs:haxe.Int64):Int8;
/**
 * Returns the name of a property.
 *
 * @param property the property you want to inquire about
 *
 * @return a C string containing the property's name
 */
	static public function property_getName(property:haxe.Int64):String;
/** JNI method for {@link #class_getWeakIvarLayout}  */
	static public function nclass_getWeakIvarLayout(cls:haxe.Int64):haxe.Int64;
/**
 * Returns the value associated with a given object for a given key.
 *
 * @param object the source object for the association
 * @param key    the key for the association
 *
 * @return the value associated with the key {@code key} for {@code object}.
 */
	static public function objc_getAssociatedObject(object:haxe.Int64,key:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #class_setIvarLayout}  */
/**
 * Sets the Ivar layout for a given class.
 *
 * @param cls    the class to modify
 * @param layout the layout of the Ivars for {@code cls}
 */
	static public function class_setIvarLayout(cls:haxe.Int64,layout:java.nio.ByteBuffer):Void;
	@:overload(function (cls:haxe.Int64,layout:java.lang.CharSequence):Void {})
/** JNI method for {@link #class_copyIvarList}  */
	static public function nclass_copyIvarList(cls:haxe.Int64,outCount:haxe.Int64):haxe.Int64;
/**
 * Inserted by the compiler when a mutation is detected during a foreach iteration.
 * 
 * <p>The compiler inserts this function when it detects that an object is mutated during a foreach iteration. The function is called when a mutation occurs,
 * and the enumeration mutation handler is enacted if it is set up (via the {@link #objc_setEnumerationMutationHandler} function). If the handler is not set up,
 * a fatal error occurs.</p>
 *
 * @param obj the object being mutated
 */
	static public function objc_enumerationMutation(obj:haxe.Int64):Void;
/** JNI method for {@link #property_copyAttributeList}  */
	static public function nproperty_copyAttributeList(property:haxe.Int64,outCount:haxe.Int64):haxe.Int64;
/** JNI method for {@link #ivar_getTypeEncoding}  */
	static public function nivar_getTypeEncoding(v:haxe.Int64):haxe.Int64;
/**
 * Returns the name of an instance variable.
 *
 * @param v the instance variable
 *
 * @return a C string containing the instance variable's name
 */
	static public function ivar_getName(v:haxe.Int64):String;
/** JNI method for {@link #objc_setEnumerationMutationHandler}  */
	static public function nobjc_setEnumerationMutationHandler(handler:haxe.Int64):Void;
/**
 * Returns a specified instance method for a given class.
 * 
 * <p>Note that this function searches superclasses for implementations, whereas {@link #class_copyMethodList} does not.</p>
 *
 * @param cls  the class you want to inspect
 * @param name the selector of the method you want to retrieve
 *
 * @return the method that corresponds to the implementation of the selector specified by aSelector for the class specified by {@code cls}, or {@code NULL} if the
 *         specified class or its superclasses do not contain an instance method with the specified selector.
 */
	static public function class_getInstanceMethod(cls:haxe.Int64,name:haxe.Int64):haxe.Int64;
/** JNI method for {@link #objc_constructInstance}  */
	static public function nobjc_constructInstance(cls:haxe.Int64,bytes:haxe.Int64):haxe.Int64;
/**
 * Removes all associations for a given object.
 * 
 * <p>The main purpose of this function is to make it easy to return an object to a "pristine state". You should not use this function for general removal of
 * associations from objects, since it also removes associations that other clients may have added to the object. Typically you should use
 * {@link #objc_setAssociatedObject} with a {@link #nil} value to clear an association.</p>
 *
 * @param object an object that maintains associated objects
 */
	static public function objc_removeAssociatedObjects(object:haxe.Int64):Void;
/**
 * Returns a string describing a single parameter type of a method.
 *
 * @param m     the method to inspect
 * @param index the index of the parameter to inspect
 *
 * @return a C string describing the type of the parameter at index {@code index}, or {@code NULL} if method has no parameter index {@code index}. You must free the
 *         string with free().
 */
	static public function method_copyArgumentType(m:haxe.Int64,index:Int):String;
/**
 * Returns a description of the Ivar layout for a given class.
 *
 * @param cls the class to inspect
 *
 * @return a description of the Ivar layout for {@code cls}
 */
	static public function class_getIvarLayout(cls:haxe.Int64):String;
/**
 * Registers a newly created protocol with the Objective-C runtime.
 * 
 * <p>When you create a new protocol using the {@link #objc_allocateProtocol}, you then register it with the Objective-C runtime by calling this function. After a
 * protocol is successfully registered, it is immutable and ready to use.</p>
 *
 * @param proto the protocol you want to register with the Objective-C runtime
 */
	static public function objc_registerProtocol(proto:haxe.Int64):Void;
/**
 * Adds a registered protocol to another protocol that is under construction.
 * 
 * <p>The protocol you want to add to ({@code proto}) must be under construction &ndash; allocated but not yet registered with the Objective-C runtime. The
 * protocol you want to add ({@code addition}) must be registered already.</p>
 *
 * @param proto    the protocol you want to add the registered protocol to
 * @param addition the registered protocol you want to add to {@code proto}
 */
	static public function protocol_addProtocol(proto:haxe.Int64,addition:haxe.Int64):Void;
/**
 * Destroys a class and its associated metaclass.
 * 
 * <p>Do not call this function if instances of the {@code cls} class or any subclass exist.</p>
 *
 * @param cls the class to be destroyed. This class must have been allocated using {@link #objc_allocateClassPair}.
 */
	static public function objc_disposeClassPair(cls:haxe.Int64):Void;
/**
 * Returns the superclass of a class.
 *
 * @param cls a class object
 *
 * @return the superclass of the class, or Nil if cls is a root class, or Nil if cls is Nil
 */
	static public function class_getSuperclass(cls:haxe.Int64):haxe.Int64;
/**
 * Returns the attribute string of a property.
 *
 * @param property a property
 *
 * @return a C string containing the property's attributes
 */
	static public function property_getAttributes(property:haxe.Int64):String;
/**
 * Returns the names of all the loaded Objective-C frameworks and dynamic libraries.
 *
 * @return an array of C strings representing the names of all the loaded Objective-C frameworks and dynamic libraries
 */
	static public function objc_copyImageNames():org.lwjgl.PointerBuffer;
/** JNI method for {@link #objc_destructInstance}  */
	static public function nobjc_destructInstance(obj:haxe.Int64):haxe.Int64;
/** JNI method for {@link #imp_removeBlock}  */
	static public function nimp_removeBlock(anImp:haxe.Int64):Int8;
/** JNI method for {@link #objc_getClass}  */
	static public function nobjc_getClass(name:haxe.Int64):haxe.Int64;
/**
 * Sets the version number of a class definition.
 * 
 * <p>You can use the version number of the class definition to provide versioning of the interface that your class represents to other classes. This is
 * especially useful for object serialization (that is, archiving of the object in a flattened form), where it is important to recognize changes to the
 * layout of the instance variables in different class-definition versions.</p>
 * 
 * <p>Classes derived from the Foundation framework NSObject class can set the class-definition version number using the setVersion: class method, which is
 * implemented using the class_setVersion function.</p>
 *
 * @param cls     a pointer to an Class data structure. Pass the class definition for which you wish to set the version
 * @param version the new version number of the class definition
 */
	static public function class_setVersion(cls:haxe.Int64,version:Int):Void;
/** CharSequence version of: {@link #class_replaceMethod}  */
/**
 * Replaces the implementation of a method for a given class.
 * 
 * <h3>Discussion</h3>
 * This function behaves in two different ways:
 * <ul>
 * <li>If the method identified by name does not yet exist, it is added as if class_addMethod were called. The type encoding specified by types is used as
 * given.</li>
 * <li>If the method identified by name does exist, its IMP is replaced as if method_setImplementation were called. The type encoding specified by types
 * is ignored.</li>
 * </ul>
 *
 * @param cls   the class you want to modify
 * @param name  a selector that identifies the method whose implementation you want to replace
 * @param imp   the new implementation for the method identified by {@code name} for the class identified by {@code cls}
 * @param types an array of characters that describe the types of the arguments to the method. For possible values, see <em>Objective-C Runtime Programming Guide
 *              &gt; Type Encodings in Objective-C Runtime Programming Guide. Since the function must take at least two arguments &ndash; {@code self} and
 *              {@code _cmd}, the second and third characters must be “@:” (the first character is the return type).
 *
 * @return the previous implementation of the method identified by {@code name} for the class identified by {@code cls}
 */
	static public function class_replaceMethod(cls:haxe.Int64,name:haxe.Int64,imp:haxe.Int64,types:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (cls:haxe.Int64,name:haxe.Int64,imp:haxe.Int64,types:java.lang.CharSequence):haxe.Int64 {})
/** JNI method for {@link #objc_getProtocol}  */
	static public function nobjc_getProtocol(name:haxe.Int64):haxe.Int64;
/** JNI method for {@link #protocol_getName}  */
	static public function nprotocol_getName(p:haxe.Int64):haxe.Int64;
/** JNI method for {@link #protocol_isEqual}  */
	static public function nprotocol_isEqual(proto:haxe.Int64,other:haxe.Int64):Int8;
/** JNI method for {@link #objc_copyImageNames}  */
	static public function nobjc_copyImageNames(outCount:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #class_addIvar}  */
/**
 * Adds a new instance variable to a class.
 * 
 * <p>This function may only be called after {@link #objc_allocateClassPair} and before {@link #objc_registerClassPair}. Adding an instance variable to an existing class
 * is not supported.</p>
 * 
 * <p>The class must not be a metaclass. Adding an instance variable to a metaclass is not supported.</p>
 * 
 * <p>The instance variable's minimum alignment in bytes is <code style="font-family: monospace">1<<align</code>. The minimum alignment of an instance variable depends on the ivar's type and
 * the machine architecture. For variables of any pointer type, pass <code style="font-family: monospace">log2(sizeof(pointer_type))</code>.</p>
 *
 * @param cls       
 * @param name      
 * @param size      
 * @param alignment 
 * @param types     
 *
 * @return {@link #YES} if the instance variable was added successfully, otherwise {@link #NO} (for example, the class already contains an instance variable with that name)
 */
	static public function class_addIvar(cls:haxe.Int64,name:java.nio.ByteBuffer,size:haxe.Int64,alignment:Int8,types:java.nio.ByteBuffer):Int8;
	@:overload(function (cls:haxe.Int64,name:java.lang.CharSequence,size:haxe.Int64,alignment:Int8,types:java.lang.CharSequence):Int8 {})
/**
 * Returns the name of a method.
 * 
 * <p>To get the method name as a C string, call <code style="font-family: monospace">sel_getName(method_getName(method))</code>.</p>
 *
 * @param m the method to inspect
 *
 * @return a pointer of type SEL
 */
	static public function method_getName(m:haxe.Int64):haxe.Int64;
/** JNI method for {@link #class_getClassVariable}  */
	static public function nclass_getClassVariable(cls:haxe.Int64,name:haxe.Int64):haxe.Int64;
/**
 * Returns a Boolean value that indicates whether two selectors are equal.
 * 
 * <p>sel_isEqual is equivalent to {@code ==}.</p>
 *
 * @param lhs the selector to compare with {@code rhs}
 * @param rhs the selector to compare with {@code lhs}
 *
 * @return {@link #YES} if rhs and rhs are equal, otherwise {@link #NO}
 */
	static public function sel_isEqual(lhs:haxe.Int64,rhs:haxe.Int64):Int8;
/** JNI method for {@link #objc_enumerationMutation}  */
	static public function nobjc_enumerationMutation(obj:haxe.Int64):Void;
/** JNI method for {@link #class_getIvarLayout}  */
	static public function nclass_getIvarLayout(cls:haxe.Int64):haxe.Int64;
/**
 * Returns a Boolean value that indicates whether a class object is a metaclass.
 *
 * @param cls a class object
 *
 * @return {@link #YES} if cls is a metaclass, {@link #NO} if cls is a non-meta class, {@link #NO} if cls is Nil
 */
	static public function class_isMetaClass(cls:haxe.Int64):Int8;
/**
 * Exchanges the implementations of two methods.
 *
 * @param m1 the method to exchange with second method
 * @param m2 the method to exchange with first method
 */
	static public function method_exchangeImplementations(m1:haxe.Int64,m2:haxe.Int64):Void;
/** JNI method for {@link #class_copyProtocolList}  */
	static public function nclass_copyProtocolList(cls:haxe.Int64,outCount:haxe.Int64):haxe.Int64;
/**
 * Creates an instance of a class at the specified location.
 *
 * @param cls   the class that you want to allocate an instance of
 * @param bytes the location at which to allocate an instance of the {@code cls} class. {@code bytes} must point to at least <code style="font-family: monospace">class_getInstanceSize(cls)</code>
 *              bytes of well-aligned, zero-filled memory.
 *
 * @return an instance of the class {@code cls} at {@code bytes}, if successful; otherwise {@link #nil} (for example, if {@code cls} or {@code bytes} are themselves {@link #nil})
 */
	static public function objc_constructInstance(cls:haxe.Int64,bytes:java.nio.ByteBuffer):haxe.Int64;
/** JNI method for {@link #objc_allocateProtocol}  */
	static public function nobjc_allocateProtocol(name:haxe.Int64):haxe.Int64;
/** JNI method for {@link #method_copyArgumentType}  */
	static public function nmethod_copyArgumentType(m:haxe.Int64,index:Int):haxe.Int64;
/** JNI method for {@link #protocol_conformsToProtocol}  */
	static public function nprotocol_conformsToProtocol(proto:haxe.Int64,other:haxe.Int64):Int8;
/** JNI method for {@link #objc_getClassList}  */
	static public function nobjc_getClassList(buffer:haxe.Int64,bufferCount:Int):Int;
/** JNI method for {@link #property_getName}  */
	static public function nproperty_getName(property:haxe.Int64):haxe.Int64;
/** JNI method for {@link #object_getIndexedIvars}  */
	static public function nobject_getIndexedIvars(obj:haxe.Int64):haxe.Int64;
/**
 * Returns a Boolean value that indicates whether a class conforms to a given protocol.
 * 
 * <p>You should usually use NSObject's conformsToProtocol: method instead of this function.</p>
 *
 * @param cls      the class you want to inspect
 * @param protocol a protocol
 *
 * @return {@link #YES} if {@code cls} conforms to {@code protocol}, otherwise {@link #NO}
 */
	static public function class_conformsToProtocol(cls:haxe.Int64,protocol:haxe.Int64):Int8;
/** JNI method for {@link #class_replaceProperty}  */
	static public function nclass_replaceProperty(cls:haxe.Int64,name:haxe.Int64,attributes:haxe.Int64,attributeCount:Int):Void;
/**
 * Stores a new value in a {@code __weak} variable.
 * 
 * <p>This function is typically used anywhere a {@code __weak} variable is the target of an assignment.</p>
 *
 * @param location the address of the weak pointer
 * @param obj      the new object you want the weak pointer to now point to
 *
 * @return the value stored in location (that is, {@code obj})
 */
/** Alternative version of: {@link #objc_storeWeak}  */
	static public function objc_storeWeak(location:org.lwjgl.PointerBuffer,obj:haxe.Int64):haxe.Int64;
	@:overload(function (location:java.nio.ByteBuffer,obj:haxe.Int64):haxe.Int64 {})
/** JNI method for {@link #objc_getMetaClass}  */
	static public function nobjc_getMetaClass(name:haxe.Int64):haxe.Int64;
/**
 * Adds a protocol to a class.
 *
 * @param cls      the class to modify
 * @param protocol the protocol to add to {@code cls}
 *
 * @return {@link #YES} if the protocol was added successfully, otherwise {@link #NO} (for example, the class already conforms to that protocol)
 */
	static public function class_addProtocol(cls:haxe.Int64,protocol:haxe.Int64):Int8;
/**
 * Returns a Boolean value that indicates whether one protocol conforms to another protocol.
 * 
 * <h3>Discussion</h3>
 * One protocol can incorporate other protocols using the same syntax that classes use to adopt a protocol:
 * 
 * <p><code style="font-family: monospace">@protocol ProtocolName < protocol list ></code></p>
 * 
 * <p>All the protocols listed between angle brackets are considered part of the {@code ProtocolName} protocol.</p>
 *
 * @param proto a protocol
 * @param other a protocol
 *
 * @return {@link #YES} if {@code proto} conforms to {@code other}, otherwise {@link #NO}
 */
	static public function protocol_conformsToProtocol(proto:haxe.Int64,other:haxe.Int64):Int8;
/** CharSequence version of: {@link #objc_lookUpClass}  */
/**
 * Returns the class definition of a specified class.
 * 
 * <p>{@link #objc_getClass} is different from this function in that if the class is not registered, objc_getClass calls the class handler callback and then checks
 * a second time to see whether the class is registered. This function does not call the class handler callback.</p>
 *
 * @param name the name of the class to look up
 *
 * @return the Class object for the named class, or {@link #nil} if the class is not registered with the Objective-C runtime
 */
	static public function objc_lookUpClass(name:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (name:java.lang.CharSequence):haxe.Int64 {})
/** JNI method for {@link #protocol_getMethodDescription}  */
	static public function nprotocol_getMethodDescription(p:haxe.Int64,aSel:haxe.Int64,isRequiredMethod:Int8,isInstanceMethod:Int8,__result:haxe.Int64):Void;
/** JNI method for {@link #objc_disposeClassPair}  */
	static public function nobjc_disposeClassPair(cls:haxe.Int64):Void;
/**
 * Returns the offset of an instance variable.
 * 
 * <p>For instance variables of type {@code id} or other object types, call {@link #object_getIvar} and {@link #object_setIvar} instead of using this offset to access
 * the instance variable data directly.</p>
 *
 * @param v the instance variable
 *
 * @return the offset of {@code v}
 */
	static public function ivar_getOffset(v:haxe.Int64):haxe.Int64;
/**
 * Returns the name of the method specified by a given selector.
 *
 * @param sel a pointer of type SEL. Pass the selector whose name you wish to determine.
 *
 * @return a C string indicating the name of the selector
 */
	static public function sel_getName(sel:haxe.Int64):String;
/** JNI method for {@link #object_getInstanceVariable}  */
	static public function nobject_getInstanceVariable(obj:haxe.Int64,name:haxe.Int64,outValue:haxe.Int64):haxe.Int64;
/** JNI method for {@link #ivar_getName}  */
	static public function nivar_getName(v:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #class_replaceProperty}  */
/** Alternative version of: {@link #class_replaceProperty}  */
/**
 * Replaces a property of a class.
 *
 * @param cls            the class to modify
 * @param name           the name of the property
 * @param attributes     an array of property attributes
 * @param attributeCount the number of attributes in {@code attributes}
 */
	static public function class_replaceProperty(cls:haxe.Int64,name:java.nio.ByteBuffer,attributes:java.nio.ByteBuffer,attributeCount:Int):Void;
	@:overload(function (cls:haxe.Int64,name:java.lang.CharSequence,attributes:java.nio.ByteBuffer):Void {})
	@:overload(function (cls:haxe.Int64,name:java.nio.ByteBuffer,attributes:java.nio.ByteBuffer):Void {})
/**
 * Creates a pointer to a function that calls the specified block when the method is called.
 *
 * @param block the block that implements this method. The signature of {@code block} should be <code style="font-family: monospace">method_return_type ^(id self, self, method_args …)</code>. The
 *              selector of the method is not available to {@code block}. {@code block} is copied with <code style="font-family: monospace">Block_copy()</code>.
 *
 * @return the IMP that calls {@code block}. You must dispose of the returned IMP using the function.
 */
	static public function imp_implementationWithBlock(block:haxe.Int64):haxe.Int64;
/**
 * Returns the value of a property attribute given the attribute name.
 *
 * @param property      the property whose value you are interested in
 * @param attributeName a C string representing the name of the attribute
 *
 * @return The value string of the {@code attributeName} attribute, if one exists in {@code property}; otherwise, {@link #nil}. You must free the returned value string
 *         with free().
 */
/**
 * Returns the value of a property attribute given the attribute name.
 *
 * @param property      the property whose value you are interested in
 * @param attributeName a C string representing the name of the attribute
 *
 * @return The value string of the {@code attributeName} attribute, if one exists in {@code property}; otherwise, {@link #nil}. You must free the returned value string
 *         with free().
 */
	static public function property_copyAttributeValue(property:haxe.Int64,attributeName:java.nio.ByteBuffer):String;
	@:overload(function (property:haxe.Int64,attributeName:java.lang.CharSequence):String {})
/** JNI method for {@link #ivar_getOffset}  */
	static public function nivar_getOffset(v:haxe.Int64):haxe.Int64;
/** JNI method for {@link #class_getName}  */
	static public function nclass_getName(cls:haxe.Int64):haxe.Int64;
/** JNI method for {@link #class_setIvarLayout}  */
	static public function nclass_setIvarLayout(cls:haxe.Int64,layout:haxe.Int64):Void;
/**
 * Returns an array of all the protocols known to the runtime.
 *
 * @return a C array of all the protocols known to the runtime. The array contains {@code *outCount} pointers followed by a {@code NULL} terminator. You must free the
 *         list with free().
 */
	static public function objc_copyProtocolList():org.lwjgl.PointerBuffer;
/** String return version of: {@link #method_getArgumentType}  */
/** Alternative version of: {@link #method_getArgumentType}  */
/**
 * Returns by reference a string describing a single parameter type of a method.
 * 
 * <p>The parameter type string is copied to {@code dst}. {@code dst} is filled as if <code style="font-family: monospace">strncpy(dst, parameter_type, dst_len)</code> were called. If the
 * method contains no parameter with that index, {@code dst} is filled as if <code style="font-family: monospace">strncpy(dst, "", dst_len)</code> were called.</p>
 *
 * @param m       the method you want to inquire about
 * @param index   the index of the parameter you want to inquire about
 * @param dst     the reference string to store the description
 * @param dst_len the maximum number of characters that can be stored in {@code dst}
 */
	static public function method_getArgumentType(m:haxe.Int64,index:Int,dst:java.nio.ByteBuffer,dst_len:haxe.Int64):Void;
	@:overload(function (m:haxe.Int64,index:Int,dst_len:haxe.Int64):String {})
	@:overload(function (m:haxe.Int64,index:Int,dst:java.nio.ByteBuffer):Void {})
/**
 * Returns a string describing a method's parameter and return types.
 *
 * @param m the method to inspect
 *
 * @return a C string. The string may be {@code NULL}
 */
	static public function method_getTypeEncoding(m:haxe.Int64):String;
/**
 * Returns an array of the properties declared by a protocol.
 *
 * @param proto a protocol
 *
 * @return a C array of pointers of type objc_property_t describing the properties declared by {@code proto}. Any properties declared by other protocols adopted
 *         by this protocol are not included. The array contains {@code *outCount} pointers followed by a {@code NULL} terminator. You must free the array with free().
 *         
 *         <p>If the protocol declares no properties, {@code NULL} is returned and {@code *outCount} is 0.</p>
 */
	static public function protocol_copyPropertyList(proto:haxe.Int64):org.lwjgl.PointerBuffer;
/** JNI method for {@link #method_getName}  */
	static public function nmethod_getName(m:haxe.Int64):haxe.Int64;
/** JNI method for {@link #objc_copyProtocolList}  */
	static public function nobjc_copyProtocolList(outCount:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #object_getInstanceVariable}  */
/** Alternative version of: {@link #object_getInstanceVariable}  */
/**
 * Obtains the value of an instance variable of a class instance.
 *
 * @param obj      a pointer to an instance of a class. Pass the object containing the instance variable whose value you wish to obtain
 * @param name     a C string. Pass the name of the instance variable whose value you wish to obtain
 * @param outValue on return, contains a pointer to the value of the instance variable
 *
 * @return a pointer to the Ivar data structure that defines the type and name of the instance variable specified by name
 */
	static public function object_getInstanceVariable(obj:haxe.Int64,name:java.nio.ByteBuffer,outValue:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (obj:haxe.Int64,name:java.lang.CharSequence,outValue:org.lwjgl.PointerBuffer):haxe.Int64 {})
	@:overload(function (obj:haxe.Int64,name:java.nio.ByteBuffer,outValue:org.lwjgl.PointerBuffer):haxe.Int64 {})
/**
 * Registers a class that was allocated using {@link #objc_allocateClassPair}.
 *
 * @param cls the class you want to register
 */
	static public function objc_registerClassPair(cls:haxe.Int64):Void;
/** JNI method for {@link #objc_getAssociatedObject}  */
	static public function nobjc_getAssociatedObject(object:haxe.Int64,key:haxe.Int64):haxe.Int64;
/** JNI method for {@link #objc_loadWeak}  */
	static public function nobjc_loadWeak(location:haxe.Int64):haxe.Int64;
/**
 * Returns the class of an object.
 *
 * @param obj an Objective-C object
 *
 * @return the class object of which object is an instance, or Nil if {@code obj} is {@link #nil}
 */
	static public function object_getClass(obj:haxe.Int64):haxe.Int64;
/**
 * Describes the instance methods implemented by a class.
 *
 * @param cls the class you want to inspect
 *
 * @return an array of pointers of type Method describing the instance methods implemented by the class—any instance methods implemented by superclasses are not
 *         included. The array contains {@code *outCount} pointers followed by a {@code NULL} terminator. You must free the array with free().
 *         
 *         <p>If {@code cls} implements no instance methods, or {@code cls} is Nil, returns {@code NULL} and {@code *outCount} is 0.</p>
 */
	static public function class_copyMethodList(cls:haxe.Int64):org.lwjgl.PointerBuffer;
/**
 * Reads the value of an instance variable in an object.
 *
 * @param obj  the object containing the instance variable whose value you want to read
 * @param ivar the Ivar describing the instance variable whose value you want to read
 *
 * @return the value of the instance variable specified by {@code ivar}, or {@link #nil} if {@code obj} is {@link #nil}
 */
	static public function object_getIvar(obj:haxe.Int64,ivar:haxe.Int64):haxe.Int64;
/**
 * Returns a pointer to the data structure describing a given class method for a given class.
 * 
 * <p>Note that this function searches superclasses for implementations, whereas {@link #class_copyMethodList} does not.</p>
 *
 * @param cls  a pointer to a class definition. Pass the class that contains the method you want to retrieve
 * @param name a pointer of type SEL. Pass the selector of the method you want to retrieve
 *
 * @return a pointer to the Method data structure that corresponds to the implementation of the selector specified by {@code name} for the class specified by
 *         {@code cls}, or {@code NULL} if the specified class or its superclasses do not contain a class method with the specified selector.
 */
	static public function class_getClassMethod(cls:haxe.Int64,name:haxe.Int64):haxe.Int64;
/**
 * Returns the class name of a given object.
 *
 * @param obj an Objective-C object
 *
 * @return the name of the class of which {@code obj} is an instance
 */
	static public function object_getClassName(obj:haxe.Int64):String;
/**
 * Returns the implementation of a method.
 *
 * @param m the method to inspect
 *
 * @return a function pointer of type IMP
 */
	static public function method_getImplementation(m:haxe.Int64):haxe.Int64;
/**
 * Returns the size of instances of a class.
 *
 * @param cls a class object
 *
 * @return the size in bytes of instances of the class {@code cls}, or 0 if {@code cls} is Nil
 */
	static public function class_getInstanceSize(cls:haxe.Int64):haxe.Int64;
/**
 * Returns the name of the dynamic library a class originated from.
 *
 * @param cls the class you are inquiring about
 *
 * @return a C string representing the name of the library containing the {@code cls} class.
 */
	static public function class_getImageName(cls:haxe.Int64):String;
/** JNI method for {@link #class_createInstance}  */
	static public function nclass_createInstance(cls:haxe.Int64,extraBytes:haxe.Int64):haxe.Int64;
/**
 * Returns a the name of a protocol.
 *
 * @param p a protocol
 *
 * @return the name of the protocol {@code p} as a C string
 */
	static public function protocol_getName(p:haxe.Int64):String;
/** JNI method for {@link #protocol_copyProtocolList}  */
	static public function nprotocol_copyProtocolList(proto:haxe.Int64,outCount:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #objc_getMetaClass}  */
/**
 * Returns the metaclass definition of a specified class.
 * 
 * <p>If the definition for the named class is not registered, this function calls the class handler callback and then checks a second time to see if the
 * class is registered. However, every class definition must have a valid metaclass definition, and so the metaclass definition is always returned,
 * whether it’s valid or not.</p>
 *
 * @param name the name of the class to look up
 *
 * @return the Class object for the metaclass of the named class, or {@link #nil} if the class is not registered with the Objective-C runtime
 */
	static public function objc_getMetaClass(name:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (name:java.lang.CharSequence):haxe.Int64 {})
/** JNI method for {@link #protocol_addProperty}  */
	static public function nprotocol_addProperty(proto:haxe.Int64,name:haxe.Int64,attributes:haxe.Int64,attributeCount:Int,isRequiredProperty:Int8,isInstanceProperty:Int8):Void;
/** JNI method for {@link #objc_copyClassNamesForImage}  */
	static public function nobjc_copyClassNamesForImage(image:haxe.Int64,outCount:haxe.Int64):haxe.Int64;
/** JNI method for {@link #class_setVersion}  */
	static public function nclass_setVersion(cls:haxe.Int64,version:Int):Void;
/**
 * Destroys an instance of a class without freeing memory and removes any of its associated references.
 * 
 * <p>This method does nothing if obj is {@link #nil}.</p>
 * 
 * <h3>Important</h3>
 * The garbage collector does not call this function. As a result, if you edit this function, you should also edit finalize. That said, Core Foundation
 * and other clients do call this function under garbage collection.
 *
 * @param obj the instance to destroy
 */
	static public function objc_destructInstance(obj:haxe.Int64):haxe.Int64;
/** JNI method for {@link #objc_removeAssociatedObjects}  */
	static public function nobjc_removeAssociatedObjects(object:haxe.Int64):Void;
/**
 * Returns the block associated with an IMP that was created using {@link #imp_implementationWithBlock}.
 *
 * @param anImp the IMP that calls this block
 *
 * @return the block called by {@code anImp}
 */
	static public function imp_getBlock(anImp:haxe.Int64):haxe.Int64;
/**
 * Returns an array of method descriptions of methods meeting a given specification for a given protocol.
 * 
 * <p>Methods in other protocols adopted by this protocol are not included.</p>
 *
 * @param p                a protocol
 * @param isRequiredMethod a Boolean value that indicates whether returned methods should be required methods (pass {@link #YES} to specify required methods)
 * @param isInstanceMethod a Boolean value that indicates whether returned methods should be instance methods (pass {@link #YES} to specify instance methods)
 * @param outCount         upon return, contains the number of method description structures in the returned array
 *
 * @return a C array of objc_method_description structures containing the names and types of {@code p}'s methods specified by {@code isRequiredMethod} and
 *         {@code isInstanceMethod}. The array contains {@code *outCount} pointers followed by a {@code NULL} terminator. You must free the list with free().
 *         
 *         <p>If the protocol declares no methods that meet the specification, {@code NULL} is returned and {@code *outCount} is 0.</p>
 */
/** Alternative version of: {@link #protocol_copyMethodDescriptionList}  */
	static public function protocol_copyMethodDescriptionList(p:haxe.Int64,isRequiredMethod:Int8,isInstanceMethod:Int8,outCount:java.nio.IntBuffer):java.nio.ByteBuffer;
	@:overload(function (p:haxe.Int64,isRequiredMethod:Int8,isInstanceMethod:Int8,outCount:java.nio.ByteBuffer):java.nio.ByteBuffer {})
/**
 * eturns an array of the protocols adopted by a protocol.
 *
 * @param proto a protocol
 *
 * @return a C array of protocols adopted by {@code proto}. The array contains {@code *outCount} pointers followed by a {@code NULL} terminator. You must free the array
 *         with free().
 *         
 *         <p>If the protocol declares no properties, {@code NULL} is returned and {@code *outCount} is 0.</p>
 */
	static public function protocol_copyProtocolList(proto:haxe.Int64):org.lwjgl.PointerBuffer;
/** JNI method for {@link #objc_copyClassList}  */
	static public function nobjc_copyClassList(outCount:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #protocol_getProperty}  */
/**
 * Returns the specified property of a given protocol.
 *
 * @param proto              a protocol
 * @param name               the name of a property
 * @param isRequiredProperty a Boolean value that indicates whether {@code name} is a required property
 * @param isInstanceProperty a Boolean value that indicates whether {@code name} is a instance property
 *
 * @return the property specified by {@code name}, {@code isRequiredProperty}, and {@code isInstanceProperty} for {@code proto}, or {@code NULL} if none of
 *         {@code proto}'s properties meets the specification
 */
	static public function protocol_getProperty(proto:haxe.Int64,name:java.nio.ByteBuffer,isRequiredProperty:Int8,isInstanceProperty:Int8):haxe.Int64;
	@:overload(function (proto:haxe.Int64,name:java.lang.CharSequence,isRequiredProperty:Int8,isInstanceProperty:Int8):haxe.Int64 {})
/**
 * Returns the number of arguments accepted by a method.
 *
 * @param m a pointer to a Method data structure. Pass the method in question.
 *
 * @return an integer containing the number of arguments accepted by the given method
 */
	static public function method_getNumberOfArguments(m:haxe.Int64):Int;
/** JNI method for {@link #class_addMethod}  */
	static public function nclass_addMethod(cls:haxe.Int64,name:haxe.Int64,imp:haxe.Int64,types:haxe.Int64):Int8;
/**
 * Sets an associated value for a given object using a given key and association policy.
 *
 * @param object the source object for the association
 * @param key    the key for the association
 * @param value  the value to associate with the key {@code key} for {@code object}. Pass {@link #nil} to clear an existing association.
 * @param policy the policy for the association. One of:<br>{@link #OBJC_ASSOCIATION_ASSIGN}, {@link #OBJC_ASSOCIATION_RETAIN_NONATOMIC}, {@link #OBJC_ASSOCIATION_COPY_NONATOMIC}, {@link #OBJC_ASSOCIATION_RETAIN}, {@link #OBJC_ASSOCIATION_COPY}
 */
	static public function objc_setAssociatedObject(object:haxe.Int64,key:haxe.Int64,value:haxe.Int64,policy:haxe.Int64):Void;
/** JNI method for {@link #object_setIvar}  */
	static public function nobject_setIvar(obj:haxe.Int64,ivar:haxe.Int64,value:haxe.Int64):Void;
/**
 * Returns the name of a class.
 *
 * @param cls a class object
 *
 * @return the name of the class, or the empty string if cls is Nil
 */
	static public function class_getName(cls:haxe.Int64):String;
/** CharSequence version of: {@link #class_getClassVariable}  */
/**
 * Returns the Ivar for a specified class variable of a given class.
 *
 * @param cls  the class definition whose class variable you wish to obtain
 * @param name the name of the class variable definition to obtain
 *
 * @return a pointer to an Ivar data structure containing information about the class variable specified by name
 */
	static public function class_getClassVariable(cls:haxe.Int64,name:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (cls:haxe.Int64,name:java.lang.CharSequence):haxe.Int64 {})
/**
 * Returns a Boolean value that indicates whether instances of a class respond to a particular selector.
 * 
 * <p>You should usually use NSObject's respondsToSelector: or instancesRespondToSelector: methods instead of this function.</p>
 *
 * @param cls  the class you want to inspect
 * @param name a selector
 *
 * @return {@link #YES} if instances of the class respond to the selector, otherwise {@link #NO}
 */
	static public function class_respondsToSelector(cls:haxe.Int64,name:haxe.Int64):Int8;
/** JNI method for {@link #protocol_getProperty}  */
	static public function nprotocol_getProperty(proto:haxe.Int64,name:haxe.Int64,isRequiredProperty:Int8,isInstanceProperty:Int8):haxe.Int64;
/** JNI method for {@link #protocol_copyPropertyList}  */
	static public function nprotocol_copyPropertyList(proto:haxe.Int64,outCount:haxe.Int64):haxe.Int64;
/** JNI method for {@link #property_getAttributes}  */
	static public function nproperty_getAttributes(property:haxe.Int64):haxe.Int64;
/** JNI method for {@link #class_replaceMethod}  */
	static public function nclass_replaceMethod(cls:haxe.Int64,name:haxe.Int64,imp:haxe.Int64,types:haxe.Int64):haxe.Int64;
/** JNI method for {@link #method_setImplementation}  */
	static public function nmethod_setImplementation(m:haxe.Int64,imp:haxe.Int64):haxe.Int64;
/** JNI method for {@link #method_getReturnType}  */
	static public function nmethod_getReturnType(m:haxe.Int64,dst:haxe.Int64,dst_len:haxe.Int64):Void;
/** JNI method for {@link #class_copyPropertyList}  */
	static public function nclass_copyPropertyList(cls:haxe.Int64,outCount:haxe.Int64):haxe.Int64;
/** JNI method for {@link #objc_registerProtocol}  */
	static public function nobjc_registerProtocol(proto:haxe.Int64):Void;
/** JNI method for {@link #imp_implementationWithBlock}  */
	static public function nimp_implementationWithBlock(block:haxe.Int64):haxe.Int64;
/**
 * Loads the object referenced by a weak pointer and returns it.
 * 
 * <p>This function loads the object referenced by a weak pointer and returns it after retaining and autoreleasing the object. As a result, the object stays
 * alive long enough for the caller to use it. This function is typically used anywhere a {@code __weak} variable is used in an expression.</p>
 *
 * @param location the address of the weak pointer
 *
 * @return the object pointed to by location, or {@link #nil} if location is {@link #nil}
 */
/** Alternative version of: {@link #objc_loadWeak}  */
	static public function objc_loadWeak(location:org.lwjgl.PointerBuffer):haxe.Int64;
	@:overload(function (location:java.nio.ByteBuffer):haxe.Int64 {})
/** JNI method for {@link #class_getProperty}  */
	static public function nclass_getProperty(cls:haxe.Int64,name:haxe.Int64):haxe.Int64;
/**
 * This function returns a pointer to any extra bytes allocated with the instance (as specified by {@link #class_createInstance} with extraBytes&gt;0). This
 * memory follows the object's ordinary ivars, but may not be adjacent to the last ivar.
 * 
 * <p>The returned pointer is guaranteed to be pointer-size aligned, even if the area following the object's last ivar is less aligned than that. Alignment
 * greater than pointer-size is never guaranteed, even if the area following the object's last ivar is more aligned than that.</p>
 * 
 * <p>In a garbage-collected environment, the memory is scanned conservatively.</p>
 *
 * @param obj an Objective-C object
 *
 * @return a pointer to any extra bytes allocated with {@code obj}. If {@code obj} was not allocated with any extra bytes, then dereferencing the returned pointer
 *         is undefined.
 */
	static public function object_getIndexedIvars(obj:haxe.Int64):haxe.Int64;
/**
 * Creates an instance of a class, allocating memory for the class in the default malloc memory zone.
 *
 * @param cls        the class that you want to allocate an instance of
 * @param extraBytes an integer indicating the number of extra bytes to allocate. The additional bytes can be used to store additional instance variables beyond those
 *                   defined in the class definition.
 *
 * @return an instance of the class {@code cls}
 */
	static public function class_createInstance(cls:haxe.Int64,extraBytes:haxe.Int64):haxe.Int64;
/**
 * Creates a {@link EnumerationMutationHandler} that delegates the callback to the specified functional interface.
 *
 * @param sam the delegation target
 *
 * @return the {@link EnumerationMutationHandler} instance
 */
	static public function EnumerationMutationHandler(sam:org.lwjgl.system.macosx.EnumerationMutationHandler_SAM):org.lwjgl.system.macosx.EnumerationMutationHandler;
/** JNI method for {@link #method_exchangeImplementations}  */
	static public function nmethod_exchangeImplementations(m1:haxe.Int64,m2:haxe.Int64):Void;
/** JNI method for {@link #class_getImageName}  */
	static public function nclass_getImageName(cls:haxe.Int64):haxe.Int64;
/** JNI method for {@link #method_getArgumentType}  */
	static public function nmethod_getArgumentType(m:haxe.Int64,index:Int,dst:haxe.Int64,dst_len:haxe.Int64):Void;
/** JNI method for {@link #class_copyMethodList}  */
	static public function nclass_copyMethodList(cls:haxe.Int64,outCount:haxe.Int64):haxe.Int64;
/** JNI method for {@link #object_getIvar}  */
	static public function nobject_getIvar(obj:haxe.Int64,ivar:haxe.Int64):haxe.Int64;
/**
 * Describes the properties declared by a class.
 *
 * @param cls the class you want to inspect
 *
 * @return an array of pointers of type {@code objc_property_t} describing the properties declared by the class. Any properties declared by superclasses are not
 *         included. The array contains {@code *outCount} pointers followed by a {@code NULL} terminator. You must free the array with free().
 *         
 *         <p>If {@code cls} declares no properties, or {@code cls} is Nil, returns {@code NULL} and {@code *outCount} is 0.</p>
 */
	static public function class_copyPropertyList(cls:haxe.Int64):org.lwjgl.PointerBuffer;
/** JNI method for {@link #protocol_copyMethodDescriptionList}  */
	static public function nprotocol_copyMethodDescriptionList(p:haxe.Int64,isRequiredMethod:Int8,isInstanceMethod:Int8,outCount:haxe.Int64):haxe.Int64;
/**
 * Sets the class of an object.
 *
 * @param obj the object to modify
 * @param cls a class object
 *
 * @return the previous value of object's class, or Nil if {@code obj} is {@link #nil}
 */
	static public function object_setClass(obj:haxe.Int64,cls:haxe.Int64):haxe.Int64;
/** JNI method for {@link #object_copy}  */
	static public function nobject_copy(obj:haxe.Int64,size:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #class_getProperty}  */
/**
 * Returns a property with a given name of a given class.
 *
 * @param cls  the class you want to inspect
 * @param name a C string. Pass the name of the instance variable whose value you wish to modify.
 *
 * @return a pointer of type {@code objc_property_t} describing the property, or {@code NULL} if the class does not declare a property with that name, or {@code NULL} if
 *         {@code cls} is Nil.
 */
	static public function class_getProperty(cls:haxe.Int64,name:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (cls:haxe.Int64,name:java.lang.CharSequence):haxe.Int64 {})
/** CharSequence version of: {@link #sel_getUid}  */
/**
 * Registers a method name with the Objective-C runtime system.
 * 
 * <p>The implementation of this method is identical to the implementation of {@link #sel_registerName}.</p>
 *
 * @param str a pointer to a C string. Pass the name of the method you wish to register
 *
 * @return a pointer of type SEL specifying the selector for the named method
 */
	static public function sel_getUid(str:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (str:java.lang.CharSequence):haxe.Int64 {})
/**
 * Sets the implementation of a method.
 *
 * @param m   the method for which to set an implementation
 * @param imp the implemention to set to this method
 *
 * @return the previous implementation of the method
 */
	static public function method_setImplementation(m:haxe.Int64,imp:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #protocol_addProperty}  */
/** Alternative version of: {@link #protocol_addProperty}  */
/**
 * Adds a property to a protocol that is under construction.
 * 
 * <p>The protocol you want to add the property to must be under construction &ndash; allocated but not yet registered with the Objective-C runtime (via the
 * {@link #objc_registerProtocol} function).</p>
 *
 * @param proto              the protocol you want to add a property to
 * @param name               the name of the property you want to add.
 * @param attributes         an array of property attributes
 * @param attributeCount     the number of properties in {@code attributes}
 * @param isRequiredProperty a Boolean indicating whether the property's accessor methods are required methods of the {@code proto} protocol. If {@link #YES}, the property's accessor
 *                           methods are required methods; if {@link #NO}, the property's accessor methods are optional methods.
 * @param isInstanceProperty a Boolean indicating whether the property's accessor methods are instance methods. If {@link #YES}, the property's accessor methods are instance methods.
 *                           {@link #YES} is the only value allowed for a property. As a result, if you set this value to {@link #NO}, the property will not be added to the protocol.
 */
	static public function protocol_addProperty(proto:haxe.Int64,name:java.nio.ByteBuffer,attributes:java.nio.ByteBuffer,attributeCount:Int,isRequiredProperty:Int8,isInstanceProperty:Int8):Void;
	@:overload(function (proto:haxe.Int64,name:java.lang.CharSequence,attributes:java.nio.ByteBuffer,isRequiredProperty:Int8,isInstanceProperty:Int8):Void {})
	@:overload(function (proto:haxe.Int64,name:java.nio.ByteBuffer,attributes:java.nio.ByteBuffer,isRequiredProperty:Int8,isInstanceProperty:Int8):Void {})
/** JNI method for {@link #class_respondsToSelector}  */
	static public function nclass_respondsToSelector(cls:haxe.Int64,name:haxe.Int64):Int8;
/**
 * Returns the type string of an instance variable.
 *
 * @param v the instance variable
 *
 * @return a C string containing the instance variable's type encoding
 */
	static public function ivar_getTypeEncoding(v:haxe.Int64):String;
/** JNI method for {@link #sel_registerName}  */
	static public function nsel_registerName(str:haxe.Int64):haxe.Int64;
/** JNI method for {@link #class_getVersion}  */
	static public function nclass_getVersion(cls:haxe.Int64):Int;
/** JNI method for {@link #object_setInstanceVariable}  */
	static public function nobject_setInstanceVariable(obj:haxe.Int64,name:haxe.Int64,value:haxe.Int64):haxe.Int64;
/**
 * Returns the version number of a class definition.
 * 
 * <p>You can use the version number of the class definition to provide versioning of the interface that your class represents to other classes. This is
 * especially useful for object serialization (that is, archiving of the object in a flattened form), where it is important to recognize changes to the
 * layout of the instance variables in different class-definition versions.</p>
 * 
 * <p>Classes derived from the Foundation framework NSObject class can obtain the class-definition version number using the getVersion class method, which is
 * implemented using the class_getVersion function.</p>
 *
 * @param cls a pointer to an Class data structure. Pass the class definition for which you wish to obtain the version
 *
 * @return an integer indicating the version number of the class definition
 */
	static public function class_getVersion(cls:haxe.Int64):Int;
/** JNI method for {@link #objc_allocateClassPair}  */
	static public function nobjc_allocateClassPair(superclass:haxe.Int64,name:haxe.Int64,extraBytes:haxe.Int64):haxe.Int64;
/** JNI method for {@link #class_addIvar}  */
	static public function nclass_addIvar(cls:haxe.Int64,name:haxe.Int64,size:haxe.Int64,alignment:Int8,types:haxe.Int64):Int8;
/** JNI method for {@link #class_getMethodImplementation}  */
	static public function nclass_getMethodImplementation(cls:haxe.Int64,name:haxe.Int64):haxe.Int64;
/** JNI method for {@link #objc_getRequiredClass}  */
	static public function nobjc_getRequiredClass(name:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #objc_allocateProtocol}  */
/**
 * Creates a new protocol instance.
 * 
 * <p>You must register the returned protocol instance with the {@link #objc_registerProtocol} function before you can use it.</p>
 * 
 * <p>There is no dispose method associated with this function.</p>
 *
 * @param name the name of the protocol you want to create
 *
 * @return a new protocol instance or {@link #nil} if a protocol with the same name as {@code name} already exists
 */
	static public function objc_allocateProtocol(name:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (name:java.lang.CharSequence):haxe.Int64 {})
/**
 * Returns a string describing a method's return type.
 *
 * @param m the method to inspect
 *
 * @return a C string describing the return type. You must free the string with free().
 */
	static public function method_copyReturnType(m:haxe.Int64):String;
/** JNI method for {@link #class_addProperty}  */
	static public function nclass_addProperty(cls:haxe.Int64,name:haxe.Int64,attributes:haxe.Int64,attributeCount:Int):Int8;
/**
 * Sets the current mutation handler.
 *
 * @param handler a function pointer to the new mutation handler
 */
	static public function objc_setEnumerationMutationHandler(handler:org.lwjgl.system.macosx.EnumerationMutationHandler):Void;
/**
 * Returns a copy of a given object.
 *
 * @param obj  an Objective-C object
 * @param size the size of the object {@code obj}
 *
 * @return a copy of obj
 */
	static public function object_copy(obj:haxe.Int64,size:haxe.Int64):haxe.Int64;
/** JNI method for {@link #class_getInstanceMethod}  */
	static public function nclass_getInstanceMethod(cls:haxe.Int64,name:haxe.Int64):haxe.Int64;
/** JNI method for {@link #protocol_addMethodDescription}  */
	static public function nprotocol_addMethodDescription(proto:haxe.Int64,name:haxe.Int64,types:haxe.Int64,isRequiredMethod:Int8,isInstanceMethod:Int8):Void;
/**
 * Returns a description of the layout of weak Ivars for a given class.
 *
 * @param cls the class to inspect
 *
 * @return a description of the layout of the weak Ivars for {@code cls}
 */
	static public function class_getWeakIvarLayout(cls:haxe.Int64):String;
/**
 * Frees the memory occupied by a given object.
 *
 * @param obj an Objective-C object
 *
 * @return {@link #nil}
 */
	static public function object_dispose(obj:haxe.Int64):haxe.Int64;
/**
 * Creates and returns a list of pointers to all registered class definitions.
 *
 * @return a {@link #nil} terminated array of classes. You must free the array with free()
 */
	static public function objc_copyClassList():org.lwjgl.PointerBuffer;
/** JNI method for {@link #method_copyReturnType}  */
	static public function nmethod_copyReturnType(m:haxe.Int64):haxe.Int64;
/** JNI method for {@link #protocol_addProtocol}  */
	static public function nprotocol_addProtocol(proto:haxe.Int64,addition:haxe.Int64):Void;
/** JNI method for {@link #objc_registerClassPair}  */
	static public function nobjc_registerClassPair(cls:haxe.Int64):Void;
/** JNI method for {@link #sel_getUid}  */
	static public function nsel_getUid(str:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #class_setWeakIvarLayout}  */
/**
 * Sets the layout for weak Ivars for a given class.
 *
 * @param cls    the class to modify
 * @param layout the layout of the weak Ivars for {@code cls}
 */
	static public function class_setWeakIvarLayout(cls:haxe.Int64,layout:java.nio.ByteBuffer):Void;
	@:overload(function (cls:haxe.Int64,layout:java.lang.CharSequence):Void {})
/** CharSequence version of: {@link #objc_getRequiredClass}  */
/**
 * Returns the class definition of a specified class.
 * 
 * <p>This function is the same as {@link #objc_getClass}, but kills the process if the class is not found.</p>
 * 
 * <p>This function is used by ZeroLink, where failing to find a class would be a compile-time link error without ZeroLink.</p>
 *
 * @param name the name of the class to look up
 *
 * @return the Class object for the named class
 */
	static public function objc_getRequiredClass(name:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (name:java.lang.CharSequence):haxe.Int64 {})
/** JNI method for {@link #method_getImplementation}  */
	static public function nmethod_getImplementation(m:haxe.Int64):haxe.Int64;
/**
 * Returns a method description structure for a specified method of a given protocol.
 *
 * @param p                a protocol
 * @param aSel             a selector
 * @param isRequiredMethod a Boolean value that indicates whether {@code aSel} is a required method
 * @param isInstanceMethod a Boolean value that indicates whether {@code aSel} is a instance method
 * @param __result         an objc_method_description structure that describes the method specified by {@code aSel}, {@code isRequiredMethod}, and {@code isInstanceMethod} for
 *                         the protocol {@code p}.
 *                         
 *                         <p>If the protocol does not contain the specified method, returns an objc_method_description structure with the value <code style="font-family: monospace">{NULL, NULL}</code>.</p>
 */
	static public function protocol_getMethodDescription(p:haxe.Int64,aSel:haxe.Int64,isRequiredMethod:Int8,isInstanceMethod:Int8,__result:java.nio.ByteBuffer):Void;
/** CharSequence version of: {@link #protocol_addMethodDescription}  */
/**
 * Adds a method to a protocol.
 * 
 * <p>To add a method to a protocol using this function, the protocol must be under construction. That is, you must add any methods to proto before you
 * register it with the Objective-C runtime (via the {@link #objc_registerProtocol} function).</p>
 *
 * @param proto            the protocol you want to add a method to
 * @param name             the name of the method you want to add
 * @param types            a C string representing the signature of the method you want to add
 * @param isRequiredMethod a Boolean indicating whether the method is a required method of the {@code proto} protocol. If {@link #YES}, the method is a required method; if {@link #NO}, the
 *                         method is an optional method.
 * @param isInstanceMethod a Boolean indicating whether the method is an instance method. If {@link #YES}, the method is an instance method; if {@link #NO}, the method is a class method.
 */
	static public function protocol_addMethodDescription(proto:haxe.Int64,name:haxe.Int64,types:java.nio.ByteBuffer,isRequiredMethod:Int8,isInstanceMethod:Int8):Void;
	@:overload(function (proto:haxe.Int64,name:haxe.Int64,types:java.lang.CharSequence,isRequiredMethod:Int8,isInstanceMethod:Int8):Void {})
/**
 * Sets the value of an instance variable in an object.
 * 
 * <p>object_setIvar is faster than {@link #object_setInstanceVariable} if the Ivar for the instance variable is already known.</p>
 *
 * @param obj   the object containing the instance variable whose value you want to set
 * @param ivar  the Ivar describing the instance variable whose value you want to set
 * @param value the new value for the instance variable
 */
	static public function object_setIvar(obj:haxe.Int64,ivar:haxe.Int64,value:haxe.Int64):Void;
/** JNI method for {@link #objc_lookUpClass}  */
	static public function nobjc_lookUpClass(name:haxe.Int64):haxe.Int64;
/** JNI method for {@link #property_copyAttributeValue}  */
	static public function nproperty_copyAttributeValue(property:haxe.Int64,attributeName:haxe.Int64):haxe.Int64;
/** JNI method for {@link #class_conformsToProtocol}  */
	static public function nclass_conformsToProtocol(cls:haxe.Int64,protocol:haxe.Int64):Int8;
/** CharSequence version of: {@link #objc_getClass}  */
/**
 * Returns the class definition of a specified class.
 * 
 * <p>objc_getClass is different from {@link #objc_lookUpClass} in that if the class is not registered, objc_getClass calls the class handler callback and then
 * checks a second time to see whether the class is registered. objc_lookUpClass does not call the class handler callback.</p>
 *
 * @param name the name of the class to look up
 *
 * @return the Class object for the named class, or {@link #nil} if the class is not registered with the Objective-C runtime
 */
	static public function objc_getClass(name:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (name:java.lang.CharSequence):haxe.Int64 {})
/** JNI method for {@link #object_getClassName}  */
	static public function nobject_getClassName(obj:haxe.Int64):haxe.Int64;
/** CharSequence version of: {@link #class_addProperty}  */
/** Alternative version of: {@link #class_addProperty}  */
/**
 * Adds a property to a class.
 *
 * @param cls            the class to modify
 * @param name           the name of the property
 * @param attributes     an array of property attributes
 * @param attributeCount the number of attributes in {@code attributes}
 *
 * @return {@link #YES} if the property was added successfully; otherwise {@link #NO} (for example, this function returns {@link #NO} if the class already has that property)
 */
	static public function class_addProperty(cls:haxe.Int64,name:java.nio.ByteBuffer,attributes:java.nio.ByteBuffer,attributeCount:Int):Int8;
	@:overload(function (cls:haxe.Int64,name:java.lang.CharSequence,attributes:java.nio.ByteBuffer):Int8 {})
	@:overload(function (cls:haxe.Int64,name:java.nio.ByteBuffer,attributes:java.nio.ByteBuffer):Int8 {})
/** JNI method for {@link #method_getTypeEncoding}  */
	static public function nmethod_getTypeEncoding(m:haxe.Int64):haxe.Int64;
/** String return version of: {@link #method_getReturnType}  */
/** Alternative version of: {@link #method_getReturnType}  */
/**
 * Returns by reference a string describing a method's return type.
 * 
 * <p>The method's return type string is copied to {@code dst}. {@code dst} is filled as if <code style="font-family: monospace">strncpy(dst, parameter_type, dst_len)</code> were called.</p>
 *
 * @param m       the method to inspect
 * @param dst     the reference string to store the description
 * @param dst_len the maximum number of characters that can be stored in {@code dst}
 */
	static public function method_getReturnType(m:haxe.Int64,dst:java.nio.ByteBuffer,dst_len:haxe.Int64):Void;
	@:overload(function (m:haxe.Int64,dst_len:haxe.Int64):String {})
	@:overload(function (m:haxe.Int64,dst:java.nio.ByteBuffer):Void {})
/**
 * Describes the protocols adopted by a class.
 *
 * @param cls the class you want to inspect
 *
 * @return an array of pointers of type Protocol* describing the protocols adopted by the class. Any protocols adopted by superclasses or other protocols are not
 *         included. The array contains {@code *outCount} pointers followed by a {@code NULL} terminator. You must free the array with free().
 *         
 *         <p>If {@code cls} adopts no protocols, or {@code cls} is Nil, returns {@code NULL} and {@code *outCount} is 0.</p>
 */
	static public function class_copyProtocolList(cls:haxe.Int64):org.lwjgl.PointerBuffer;
/**
 * Disassociates a block from an IMP that was created using {@link #imp_implementationWithBlock}, and releases the copy of the block that was created.
 *
 * @param anImp an IMP that was created using the {@link #imp_implementationWithBlock} function.
 *
 * @return {@link #YES} if the block was released successfully; otherwise, {@link #NO} (for example, the function returns {@link #NO} if the block was not used to create {@code anImp}
 *         previously).
 */
	static public function imp_removeBlock(anImp:haxe.Int64):Int8;
/** CharSequence version of: {@link #sel_registerName}  */
/**
 * Registers a method with the Objective-C runtime system, maps the method name to a selector, and returns the selector value.
 * 
 * <p>You must register a method name with the Objective-C runtime system to obtain the method’s selector before you can add the method to a class
 * definition. If the method name has already been registered, this function simply returns the selector.</p>
 *
 * @param str a pointer to a C string. Pass the name of the method you wish to register
 *
 * @return a pointer of type SEL specifying the selector for the named method
 */
	static public function sel_registerName(str:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (str:java.lang.CharSequence):haxe.Int64 {})
/**
 * Returns the function pointer that would be called if a particular message were sent to an instance of a class.
 * 
 * <p>class_getMethodImplementation may be faster than <code style="font-family: monospace">method_getImplementation(class_getInstanceMethod(cls, name))</code>.</p>
 * 
 * <p>The function pointer returned may be a function internal to the runtime instead of an actual method implementation. For example, if instances of the
 * class do not respond to the selector, the function pointer returned will be part of the runtime's message forwarding machinery.</p>
 *
 * @param cls  the class you want to inspect
 * @param name a selector
 *
 * @return the function pointer that would be called if <code style="font-family: monospace">[object name]</code> were called with an instance of the class, or {@code NULL} if {@code cls} is Nil
 */
	static public function class_getMethodImplementation(cls:haxe.Int64,name:haxe.Int64):haxe.Int64;
/** JNI method for {@link #class_getClassMethod}  */
	static public function nclass_getClassMethod(cls:haxe.Int64,name:haxe.Int64):haxe.Int64;
/** JNI method for {@link #object_setClass}  */
	static public function nobject_setClass(obj:haxe.Int64,cls:haxe.Int64):haxe.Int64;
/**
 * Returns a Boolean value that indicates whether two protocols are equal.
 *
 * @param proto a protocol
 * @param other a protocol
 *
 * @return {@link #YES} if proto is the same as other, otherwise {@link #NO}
 */
	static public function protocol_isEqual(proto:haxe.Int64,other:haxe.Int64):Int8;
/** JNI method for {@link #method_getNumberOfArguments}  */
	static public function nmethod_getNumberOfArguments(m:haxe.Int64):Int;
/** CharSequence version of: {@link #object_setInstanceVariable}  */
/**
 * Changes the value of an instance variable of a class instance.
 *
 * @param obj   a pointer to an instance of a class. Pass the object containing the instance variable whose value you wish to modify
 * @param name  a C string. Pass the name of the instance variable whose value you wish to modify
 * @param value the new value for the instance variable
 *
 * @return a pointer to the Ivar data structure that defines the type and name of the instance variable specified by name
 */
	static public function object_setInstanceVariable(obj:haxe.Int64,name:java.nio.ByteBuffer,value:java.nio.ByteBuffer):haxe.Int64;
	@:overload(function (obj:haxe.Int64,name:java.lang.CharSequence,value:java.nio.ByteBuffer):haxe.Int64 {})
/** JNI method for {@link #objc_setAssociatedObject}  */
	static public function nobjc_setAssociatedObject(object:haxe.Int64,key:haxe.Int64,value:haxe.Int64,policy:haxe.Int64):Void;

}
