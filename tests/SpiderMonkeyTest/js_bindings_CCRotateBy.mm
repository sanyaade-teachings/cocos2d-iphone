/*
* AUTOGENERATED FILE. DO NOT EDIT IT
* Generated by ../../tools/js/generate_spidermonkey_bindings.py on 2012-05-30
*/

// needed for callbacks from objective-c to JS
#import <objc/runtime.h>
#import "JRSwizzle.h"

#import "jstypedarray.h"
#import "ScriptingCore.h"   

#import "js_bindings_CCRotateBy.h"
#import "js_bindings_cocos2d.h"


JSClass* JSPROXY_CCRotateBy_class = NULL;
JSObject* JSPROXY_CCRotateBy_object = NULL;
 // Constructor
JSBool JSPROXY_CCRotateBy_constructor(JSContext *cx, uint32_t argc, jsval *vp)
{
    JSObject *jsobj = JS_NewObject(cx, JSPROXY_CCRotateBy_class, JSPROXY_CCRotateBy_object, NULL);

    JSPROXY_CCRotateBy *proxy = [[JSPROXY_CCRotateBy alloc] initWithJSObject:jsobj];

    JS_SetPrivate(jsobj, proxy);
    JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(jsobj));

    /* no callbacks */
    
    return JS_TRUE;
}

// Destructor
void JSPROXY_CCRotateBy_finalize(JSContext *cx, JSObject *obj)
{
	JSPROXY_CCRotateBy *pt = (JSPROXY_CCRotateBy*)JS_GetPrivate(obj);
	if (pt) {
		// id real = [pt realObj];
	
		/* no callbacks */

		[pt release];

		JS_free(cx, pt);
	}
}

// Arguments: ccTime, float
// Ret value: CCRotateBy
JSBool JSPROXY_CCRotateBy_actionWithDuration_angle_(JSContext *cx, uint32_t argc, jsval *vp) {
	NSCAssert( argc == 2, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	double arg0; JS_ValueToNumber( cx, *argvp++, &arg0 );
	double arg1; JS_ValueToNumber( cx, *argvp++, &arg1 );

	CCRotateBy *real = [CCRotateBy actionWithDuration:(ccTime)arg0 angle:(float)arg1  ];

	JSObject *jsobj = JS_NewObject(cx, JSPROXY_CCRotateBy_class, JSPROXY_CCRotateBy_object, NULL);
	JSPROXY_CCRotateBy *ret_proxy = [[JSPROXY_CCRotateBy alloc] initWithJSObject:jsobj];
	[ret_proxy setRealObj: real];
	JS_SetPrivate(jsobj, ret_proxy);
	JS_SET_RVAL(cx, vp, OBJECT_TO_JSVAL(jsobj));

	return JS_TRUE;
}

// Arguments: ccTime, float
// Ret value: None
JSBool JSPROXY_CCRotateBy_initWithDuration_angle_(JSContext *cx, uint32_t argc, jsval *vp) {

	JSObject* obj = (JSObject *)JS_THIS_OBJECT(cx, vp);
	JSPROXY_NSObject *proxy = (JSPROXY_NSObject*) JS_GetPrivate( obj );
	NSCAssert( proxy, @"Invalid Proxy object");
	NSCAssert( ![proxy realObj], @"Object not initialzied. error");
	NSCAssert( argc == 2, @"Invalid number of arguments" );
	jsval *argvp = JS_ARGV(cx,vp);
	double arg0; JS_ValueToNumber( cx, *argvp++, &arg0 );
	double arg1; JS_ValueToNumber( cx, *argvp++, &arg1 );

	CCRotateBy *real = [[CCRotateBy alloc] initWithDuration:(ccTime)arg0 angle:(float)arg1  ];
	[proxy setRealObj: real];
	[real release];

	JS_SET_RVAL(cx, vp, JSVAL_TRUE);
	return JS_TRUE;
}

@implementation JSPROXY_CCRotateBy

+(void) createClassWithContext:(JSContext*)cx object:(JSObject*)globalObj name:(NSString*)name
{
	JSPROXY_CCRotateBy_class = (JSClass *)calloc(1, sizeof(JSClass));
	JSPROXY_CCRotateBy_class->name = [name UTF8String];
	JSPROXY_CCRotateBy_class->addProperty = JS_PropertyStub;
	JSPROXY_CCRotateBy_class->delProperty = JS_PropertyStub;
	JSPROXY_CCRotateBy_class->getProperty = JS_PropertyStub;
	JSPROXY_CCRotateBy_class->setProperty = JS_StrictPropertyStub;
	JSPROXY_CCRotateBy_class->enumerate = JS_EnumerateStub;
	JSPROXY_CCRotateBy_class->resolve = JS_ResolveStub;
	JSPROXY_CCRotateBy_class->convert = JS_ConvertStub;
	JSPROXY_CCRotateBy_class->finalize = JSPROXY_CCRotateBy_finalize;
	JSPROXY_CCRotateBy_class->flags = JSCLASS_HAS_PRIVATE;

	static JSPropertySpec properties[] = {
		{0, 0, 0, 0, 0}
	};
	static JSFunctionSpec funcs[] = {
		JS_FN("initWithDurationangle", JSPROXY_CCRotateBy_initWithDuration_angle_, 1, JSPROP_PERMANENT | JSPROP_SHARED),
		JS_FS_END
	};
	static JSFunctionSpec st_funcs[] = {
		JS_FN("actionWithDurationangle", JSPROXY_CCRotateBy_actionWithDuration_angle_, 1, JSPROP_PERMANENT | JSPROP_SHARED),
		JS_FS_END
	};

	JSPROXY_CCRotateBy_object = JS_InitClass(cx, globalObj, JSPROXY_CCActionInterval_object, JSPROXY_CCRotateBy_class, JSPROXY_CCRotateBy_constructor,0,properties,funcs,NULL,st_funcs);
}

@end
