.class Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;
.super Ljava/lang/Object;
.source "CloseableHttpResponseProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcz/msebera/android/httpclient/HttpResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 53
    :try_start_0
    const-class v0, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Proxy;->getProxyClass(Ljava/lang/ClassLoader;[Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/reflect/InvocationHandler;

    aput-object v3, v1, v2

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;->a:Ljava/lang/reflect/Constructor;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_20} :catch_21

    .line 58
    return-void

    .line 55
    :catch_21
    move-exception v0

    .line 56
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lcz/msebera/android/httpclient/HttpResponse;)V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;->b:Lcz/msebera/android/httpclient/HttpResponse;

    .line 65
    return-void
.end method

.method public static a(Lcz/msebera/android/httpclient/HttpResponse;)Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    .registers 5

    .prologue
    .line 94
    :try_start_0
    sget-object v0, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;->a:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;

    invoke-direct {v3, p0}, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;-><init>(Lcz/msebera/android/httpclient/HttpResponse;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcz/msebera/android/httpclient/client/methods/CloseableHttpResponse;
    :try_end_13
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_13} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_13} :catch_22

    return-object v0

    .line 95
    :catch_14
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 97
    :catch_1b
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 99
    :catch_22
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;->b:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-interface {v0}, Lcz/msebera/android/httpclient/HttpResponse;->b()Lcz/msebera/android/httpclient/HttpEntity;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lcz/msebera/android/httpclient/util/EntityUtils;->a(Lcz/msebera/android/httpclient/HttpEntity;)V

    .line 70
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 74
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 76
    invoke-virtual {p0}, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;->a()V

    .line 77
    const/4 v0, 0x0

    .line 80
    :goto_11
    return-object v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/CloseableHttpResponseProxy;->b:Lcz/msebera/android/httpclient/HttpResponse;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_17} :catch_19

    move-result-object v0

    goto :goto_11

    .line 81
    :catch_19
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_21

    .line 84
    throw v1

    .line 86
    :cond_21
    throw v0
.end method
