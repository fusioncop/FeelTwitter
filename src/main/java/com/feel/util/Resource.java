
 
package com.feel.util;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;//1~2개의 작은 데이터임에도 불구하고, 너무나 큰 범위의 Model을 넘겨준다면, 보수유지나 모르는 사람이 코드 파악하는데 한참 걸린다고 한다. 그렇기 때문에, 두리뭉실한 model보다는 더 작은 규모의 데이터를 담을 수 있는 객체를 만들어야 한다.

import org.apache.log4j.Logger;


public final class Resource {//Closes resources of all kinds.

    private static final Logger LOG = Logger.getLogger(Resource.class);

    private static Map<String, String> insteadOfClose = new ConcurrentHashMap<String, String>(5);//Map의  "<>"속에 들어가는 것은 Key와 Value값이다. 


    private static Map<String, String> beforeClose = new ConcurrentHashMap<String, String>(5);

    private static Map<String, String> afterClose = new ConcurrentHashMap<String, String>(5);

    static {
        beforeClose("javax.jms.Connection", "stop");
        insteadOfClose("com.jcraft.jsch.Channel", "disconnect");
        insteadOfClose("javax.imageio.ImageReader", "dispose");
        insteadOfClose("javax.imageio.ImageWriter", "dispose");
        insteadOfClose("com.feel.nativecall.NativeCall", "destroy");
        insteadOfClose("org.apache.http.impl.client.AbstractHttpClient", "shutdown");
        insteadOfClose("groovyx.net.http.HTTPBuilder", "shutdown");
    }

    /**
     * No instances needed.
     */
    private Resource() {
        super();
    }

  
    public static void beforeClose(Class<?> clazz, String method) {
        beforeClose(clazz.getName(), method);
    }


    public static void beforeClose(String className, String method) {
        beforeClose.put(className, method);
    }

    public static void afterClose(Class<?> clazz, String method) {
        afterClose(clazz.getName(), method);
    }

    public static void afterClose(String className, String method) {
        afterClose.put(className, method);
    }

    
    public static void insteadOfClose(Class<?> clazz, String method) {
        insteadOfClose(clazz.getName(), method);
    }


    public static void insteadOfClose(String className, String method) {
        insteadOfClose.put(className, method);
    }

    
    public static void close(Object... objects) {
        if (objects == null) {
            return;
        }
        for (Object object : objects) {
            if (object != null) {
                callFromMap(beforeClose, object);
                if (!callFromMap(insteadOfClose, object)) {
                    callVoidMethod(object, "close");
                }
                callFromMap(afterClose, object);
            }
        }
    }

    private static boolean callFromMap(Map<String, String> map, Object object) {
        return callFromMap(map, object, object.getClass());
    }

    private static boolean callFromMap(Map<String, String> map, Object object, Class<?> currClass) {
        String currentClassName = currClass.getName();

        // First check class itself
        if (map.containsKey(currentClassName)) {
            callVoidMethod(object, map.get(currentClassName));
            return true;
        }
        // Then check interfaces
        else if (callFromMapFromInterfaces(map, object, currClass)) {
            return true;
        }
        // Finally check base classes recursively
        else if (hasSuperclass(currClass)) {
            if (callFromMap(map, object, currClass.getSuperclass())) {
                return true;
            }
        }
        return false;
    }

    private static boolean callFromMapFromInterfaces(Map<String, String> map, Object object, Class<?> currClass) {
        boolean atLeastOneMethodCalled = false;
        for (Class<?> currentInterface : currClass.getInterfaces()) {
            if (callFromMap(map, object, currentInterface)) {
                atLeastOneMethodCalled = true;
            }
        }
        return atLeastOneMethodCalled;
    }

    private static boolean hasSuperclass(Class<?> clazz) {
        return clazz != null && clazz != Object.class && clazz.getSuperclass() != null;
    }

    private static void callVoidMethod(Object object, String method) {
        try {
            Method m = object.getClass().getMethod(method, new Class<?>[] {});
            m.invoke(object, new Object[] {});
        }
        catch (NoSuchMethodException ex) {
            log(object, ex);
        }
        catch (IllegalArgumentException ex) {
            log(object, ex);
        }
        catch (IllegalAccessException ex) {
            log(object, ex);
        }
        catch (InvocationTargetException ex) {
            log(object, ex.getCause());
        }
        catch (SecurityException ex) {
            log(object, ex);
        }
    }

    private static void log(Object object, Throwable throwable) {
        if (LOG.isTraceEnabled()) {
            LOG.warn(object.getClass().getName(), throwable);
        }
        else if (LOG.isDebugEnabled()) {
            LOG.warn(object.getClass().getName() + ": " + throwable.getClass().getName() + ": "
                    + throwable.getLocalizedMessage());
        }
    }

}
