.class public Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;
.super Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;
.source "SpdyMiddleware.java"


# static fields
.field private static final z:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;


# instance fields
.field n:Z

.field o:Ljava/lang/reflect/Field;

.field p:Ljava/lang/reflect/Field;

.field q:Ljava/lang/reflect/Field;

.field r:Ljava/lang/reflect/Field;

.field s:Ljava/lang/reflect/Field;

.field t:Ljava/lang/reflect/Field;

.field u:Ljava/lang/reflect/Field;

.field v:Ljava/lang/reflect/Method;

.field w:Ljava/lang/reflect/Method;

.field x:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;",
            ">;"
        }
    .end annotation
.end field

.field y:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 169
    new-instance v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$1;)V

    sput-object v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->z:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient;)V

    .line 123
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->x:Ljava/util/Hashtable;

    .line 42
    new-instance v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$1;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .registers 3

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;Lcom/koushikdutta/async/callback/ConnectCallback;)V
    .registers 15

    .prologue
    const/4 v2, 0x1

    .line 248
    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 250
    iget-object v0, p2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->g:Lcom/koushikdutta/async/http/Protocol;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->c:Ljava/lang/String;

    .line 252
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->g()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v4

    .line 262
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 263
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Header;

    sget-object v1, Lcom/koushikdutta/async/http/spdy/Header;->b:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Header;

    sget-object v1, Lcom/koushikdutta/async/http/spdy/Header;->c:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    const-string/jumbo v1, "Host"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->c:Lcom/koushikdutta/async/http/Protocol;

    iget-object v6, p2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->g:Lcom/koushikdutta/async/http/Protocol;

    if-ne v1, v6, :cond_b7

    .line 267
    new-instance v1, Lcom/koushikdutta/async/http/spdy/Header;

    sget-object v6, Lcom/koushikdutta/async/http/spdy/Header;->g:Lcom/koushikdutta/async/http/spdy/ByteString;

    const-string/jumbo v7, "HTTP/1.1"

    invoke-direct {v1, v6, v7}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    new-instance v1, Lcom/koushikdutta/async/http/spdy/Header;

    sget-object v6, Lcom/koushikdutta/async/http/spdy/Header;->f:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-direct {v1, v6, v0}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :goto_5e
    new-instance v0, Lcom/koushikdutta/async/http/spdy/Header;

    sget-object v1, Lcom/koushikdutta/async/http/spdy/Header;->d:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->e()Lcom/koushikdutta/async/http/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/Headers;->a()Lcom/koushikdutta/async/http/Multimap;

    move-result-object v6

    .line 277
    invoke-virtual {v6}, Lcom/koushikdutta/async/http/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_80
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    iget-object v1, p2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->g:Lcom/koushikdutta/async/http/Protocol;

    invoke-static {v1, v0}, Lcom/koushikdutta/async/http/spdy/SpdyTransport;->a(Lcom/koushikdutta/async/http/Protocol;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 280
    invoke-virtual {v6, v0}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 281
    new-instance v9, Lcom/koushikdutta/async/http/spdy/Header;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v1}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    .line 269
    :cond_b7
    sget-object v1, Lcom/koushikdutta/async/http/Protocol;->d:Lcom/koushikdutta/async/http/Protocol;

    iget-object v6, p2, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->g:Lcom/koushikdutta/async/http/Protocol;

    if-ne v1, v6, :cond_c8

    .line 270
    new-instance v1, Lcom/koushikdutta/async/http/spdy/Header;

    sget-object v6, Lcom/koushikdutta/async/http/spdy/Header;->e:Lcom/koushikdutta/async/http/spdy/ByteString;

    invoke-direct {v1, v6, v0}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 272
    :cond_c8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 285
    :cond_ce
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 286
    if-eqz v4, :cond_f1

    move v0, v2

    :goto_e8
    invoke-virtual {p2, v5, v0, v2}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->a(Ljava/util/List;ZZ)Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    move-result-object v0

    .line 287
    const/4 v1, 0x0

    invoke-interface {p3, v1, v0}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 288
    return-void

    .line 286
    :cond_f1
    const/4 v0, 0x0

    goto :goto_e8
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;Lcom/koushikdutta/async/callback/ConnectCallback;)V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;Lcom/koushikdutta/async/callback/ConnectCallback;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    .registers 5

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->x:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;

    .line 173
    if-eqz v0, :cond_f

    .line 174
    sget-object v1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->z:Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->a(Ljava/lang/Exception;)Z

    .line 175
    :cond_f
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSSLSocket;)V
    .registers 6

    .prologue
    .line 178
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->x:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;

    .line 179
    if-eqz v0, :cond_12

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->c:Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-virtual {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;->f()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 180
    :cond_12
    invoke-interface {p2, p3, p4}, Lcom/koushikdutta/async/callback/ConnectCallback;->a(Ljava/lang/Exception;Lcom/koushikdutta/async/AsyncSocket;)V

    .line 181
    :cond_15
    return-void
.end method

.method private a(Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;I)V
    .registers 12

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 51
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->n:Z

    if-nez v0, :cond_10d

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->y:Z

    if-eqz v0, :cond_10d

    .line 52
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->n:Z

    .line 54
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "peerHost"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->o:Ljava/lang/reflect/Field;

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "peerPort"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->p:Ljava/lang/reflect/Field;

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "sslParameters"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->q:Ljava/lang/reflect/Field;

    .line 57
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "npnProtocols"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->r:Ljava/lang/reflect/Field;

    .line 58
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "alpnProtocols"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->s:Ljava/lang/reflect/Field;

    .line 59
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "useSni"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->u:Ljava/lang/reflect/Field;

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "sslNativePointer"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->t:Ljava/lang/reflect/Field;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".NativeCrypto"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "SSL_get_npn_negotiated_protocol"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->v:Ljava/lang/reflect/Method;

    .line 64
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "SSL_get0_alpn_selected"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->w:Ljava/lang/reflect/Method;

    .line 67
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->o:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->p:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 69
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->q:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->r:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 71
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->s:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->u:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 73
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->t:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->v:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 75
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->w:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10d} :catch_114

    .line 91
    :cond_10d
    :goto_10d
    invoke-direct {p0, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->b(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Z

    move-result v0

    if-nez v0, :cond_124

    .line 111
    :cond_113
    :goto_113
    return-void

    .line 77
    :catch_114
    move-exception v0

    .line 78
    iput-object v6, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->q:Ljava/lang/reflect/Field;

    .line 79
    iput-object v6, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->r:Ljava/lang/reflect/Field;

    .line 80
    iput-object v6, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->s:Ljava/lang/reflect/Field;

    .line 81
    iput-object v6, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->u:Ljava/lang/reflect/Field;

    .line 82
    iput-object v6, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->t:Ljava/lang/reflect/Field;

    .line 83
    iput-object v6, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->v:Ljava/lang/reflect/Method;

    .line 84
    iput-object v6, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->w:Ljava/lang/reflect/Method;

    goto :goto_10d

    .line 94
    :cond_124
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->q:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_113

    .line 96
    const/4 v0, 0x1

    :try_start_129
    new-array v0, v0, [Lcom/koushikdutta/async/http/Protocol;

    const/4 v1, 0x0

    sget-object v2, Lcom/koushikdutta/async/http/Protocol;->c:Lcom/koushikdutta/async/http/Protocol;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a([Lcom/koushikdutta/async/http/Protocol;)[B

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->o:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->p:Ljava/lang/reflect/Field;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->s:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->u:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_157} :catch_158

    goto :goto_113

    .line 107
    :catch_158
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_113
.end method

.method static varargs a([Lcom/koushikdutta/async/http/Protocol;)[B
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 145
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 146
    array-length v3, p0

    move v0, v1

    :goto_9
    if-ge v0, v3, :cond_2e

    aget-object v4, p0, v0

    .line 147
    sget-object v5, Lcom/koushikdutta/async/http/Protocol;->a:Lcom/koushikdutta/async/http/Protocol;

    if-ne v4, v5, :cond_14

    .line 146
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 148
    :cond_14
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/koushikdutta/async/util/Charsets;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_11

    .line 151
    :cond_2e
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 152
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/ByteBuffer;

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/koushikdutta/async/ByteBufferList;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->a()[B

    move-result-object v0

    .line 153
    return-object v0
.end method

.method private static b(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    .line 158
    if-nez v0, :cond_30

    .line 159
    const-string/jumbo v0, "/"

    .line 162
    :cond_9
    :goto_9
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :cond_2f
    return-object v0

    .line 160
    :cond_30
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private b(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Z
    .registers 3

    .prologue
    .line 294
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->g()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method protected a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;
    .registers 5

    .prologue
    .line 185
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->i:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string/jumbo v1, "spdykey"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/UntypedHashtable;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    if-nez v0, :cond_12

    .line 187
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/AsyncSSLSocketWrapper$HandshakeCallback;

    move-result-object v0

    .line 189
    :goto_11
    return-object v0

    :cond_12
    new-instance v1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$2;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;)V

    move-object v0, v1

    goto :goto_11
.end method

.method protected a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;
    .registers 9

    .prologue
    .line 299
    invoke-super/range {p0 .. p5}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Landroid/net/Uri;IZLcom/koushikdutta/async/callback/ConnectCallback;)Lcom/koushikdutta/async/callback/ConnectCallback;

    move-result-object v1

    .line 300
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->i:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string/jumbo v2, "spdykey"

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/util/UntypedHashtable;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    if-nez v0, :cond_13

    move-object v0, v1

    .line 305
    :goto_12
    return-object v0

    :cond_13
    new-instance v2, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$3;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Ljava/lang/String;Lcom/koushikdutta/async/callback/ConnectCallback;)V

    move-object v0, v2

    goto :goto_12
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v0

    .line 323
    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Landroid/net/Uri;)I

    move-result v1

    .line 324
    const/4 v3, -0x1

    if-ne v1, v3, :cond_16

    move-object v0, v2

    .line 385
    :cond_15
    :goto_15
    return-object v0

    .line 328
    :cond_16
    iget-boolean v3, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->y:Z

    if-nez v3, :cond_1f

    .line 329
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v0

    goto :goto_15

    .line 334
    :cond_1f
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->b(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 335
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v0

    goto :goto_15

    .line 338
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 339
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->x:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;

    .line 340
    if-eqz v0, :cond_ca

    .line 341
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->j()Ljava/lang/Exception;

    move-result-object v1

    instance-of v1, v1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$NoSpdyException;

    if-eqz v1, :cond_56

    .line 342
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v0

    goto :goto_15

    .line 345
    :cond_56
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->k()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_ca

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->k()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;

    iget-object v1, v1, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection;->a:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v1}, Lcom/koushikdutta/async/AsyncSocket;->i()Z

    move-result v1

    if-nez v1, :cond_ca

    .line 347
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->x:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 352
    :goto_70
    if-nez v1, :cond_98

    .line 354
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->i:Lcom/koushikdutta/async/util/UntypedHashtable;

    const-string/jumbo v1, "spdykey"

    invoke-virtual {v0, v1, v3}, Lcom/koushikdutta/async/util/UntypedHashtable;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 356
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;

    move-result-object v0

    .line 357
    invoke-interface {v0}, Lcom/koushikdutta/async/future/Cancellable;->isDone()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-interface {v0}, Lcom/koushikdutta/async/future/Cancellable;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_15

    .line 359
    new-instance v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;

    invoke-direct {v0, v2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$1;)V

    .line 360
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->x:Ljava/util/Hashtable;

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->c:Lcom/koushikdutta/async/future/SimpleCancellable;

    goto/16 :goto_15

    .line 364
    :cond_98
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waiting for potential spdy connection for host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;)V

    .line 365
    new-instance v0, Lcom/koushikdutta/async/future/SimpleCancellable;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    .line 366
    new-instance v2, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$4;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Lcom/koushikdutta/async/future/SimpleCancellable;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$SpdyConnectionWaiter;->c(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/MultiFuture;

    goto/16 :goto_15

    :cond_ca
    move-object v1, v0

    goto :goto_70
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;)V
    .registers 3

    .prologue
    .line 435
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;->e:Lcom/koushikdutta/async/AsyncSocket;

    instance-of v0, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    if-nez v0, :cond_7

    .line 440
    :cond_6
    :goto_6
    return-void

    .line 438
    :cond_7
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->g()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 439
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    invoke-interface {v0}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->c_()Lcom/koushikdutta/async/DataSink;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->a()V

    goto :goto_6
.end method

.method public a(Ljavax/net/ssl/SSLContext;)V
    .registers 3

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a(Ljavax/net/ssl/SSLContext;)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->n:Z

    .line 142
    return-void
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z
    .registers 5

    .prologue
    .line 390
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->e:Lcom/koushikdutta/async/AsyncSocket;

    instance-of v0, v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    if-nez v0, :cond_b

    .line 391
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z

    move-result v0

    .line 430
    :goto_a
    return v0

    .line 393
    :cond_b
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->j:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->g()Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_1a

    .line 395
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->f:Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    iget-object v1, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->e:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;->a(Lcom/koushikdutta/async/DataSink;)Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;

    .line 399
    :cond_1a
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->g:Lcom/koushikdutta/async/callback/CompletedCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    .line 401
    iget-object v0, p1, Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;->e:Lcom/koushikdutta/async/AsyncSocket;

    check-cast v0, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;

    .line 402
    invoke-virtual {v0}, Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;->c()Lcom/koushikdutta/async/future/SimpleFuture;

    move-result-object v1

    new-instance v2, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;

    invoke-direct {v2, p0, p1}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/FutureCallback;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;

    new-instance v2, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$5;-><init>(Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;Lcom/koushikdutta/async/http/spdy/AsyncSpdyConnection$SpdySocket;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware$6;->d(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 430
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->y:Z

    .line 136
    return-void
.end method
