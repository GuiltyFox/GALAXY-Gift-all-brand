.class public Lcom/koushikdutta/ion/Ion;
.super Ljava/lang/Object;
.source "Ion.java"


# static fields
.field private static C:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/koushikdutta/ion/DeferredLoadBitmap;",
            ">;"
        }
    .end annotation
.end field

.field static final a:Landroid/os/Handler;

.field static b:I

.field static c:Ljava/util/concurrent/ExecutorService;

.field static d:Ljava/util/concurrent/ExecutorService;

.field static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/ion/Ion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field A:Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

.field B:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/koushikdutta/ion/Ion$FutureSet;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/lang/Runnable;

.field f:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field g:Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;

.field h:Lcom/koushikdutta/ion/cookie/CookieMiddleware;

.field i:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

.field j:Lcom/koushikdutta/async/util/FileCache;

.field k:Lcom/koushikdutta/ion/loader/HttpLoader;

.field l:Lcom/koushikdutta/ion/loader/ContentLoader;

.field m:Lcom/koushikdutta/ion/loader/ResourceLoader;

.field n:Lcom/koushikdutta/ion/loader/AssetLoader;

.field o:Lcom/koushikdutta/ion/loader/VideoLoader;

.field p:Lcom/koushikdutta/ion/loader/PackageIconLoader;

.field q:Lcom/koushikdutta/ion/loader/FileLoader;

.field r:Ljava/lang/String;

.field s:I

.field t:Ljava/lang/String;

.field u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/ion/Loader;",
            ">;"
        }
    .end annotation
.end field

.field v:Ljava/lang/String;

.field w:Lcom/koushikdutta/async/util/HashList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/util/HashList",
            "<",
            "Lcom/koushikdutta/async/future/FutureCallback",
            "<",
            "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field x:Lcom/koushikdutta/ion/Ion$Config;

.field y:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

.field z:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/koushikdutta/ion/Ion;->a:Landroid/os/Handler;

    .line 61
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/koushikdutta/ion/Ion;->b:I

    .line 62
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/ion/Ion;->c:Ljava/util/concurrent/ExecutorService;

    .line 63
    sget v0, Lcom/koushikdutta/ion/Ion;->b:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_3a

    sget v0, Lcom/koushikdutta/ion/Ion;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :goto_29
    sput-object v0, Lcom/koushikdutta/ion/Ion;->d:Ljava/util/concurrent/ExecutorService;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/koushikdutta/ion/Ion;->e:Ljava/util/HashMap;

    .line 256
    new-instance v0, Lcom/koushikdutta/ion/Ion$1;

    invoke-direct {v0}, Lcom/koushikdutta/ion/Ion$1;-><init>()V

    sput-object v0, Lcom/koushikdutta/ion/Ion;->C:Ljava/util/Comparator;

    return-void

    .line 63
    :cond_3a
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_29
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->u:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Lcom/koushikdutta/async/util/HashList;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/HashList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    .line 146
    new-instance v0, Lcom/koushikdutta/ion/Ion$Config;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/Ion$Config;-><init>(Lcom/koushikdutta/ion/Ion;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->x:Lcom/koushikdutta/ion/Ion$Config;

    .line 149
    new-instance v0, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/IonImageViewRequestBuilder;-><init>(Lcom/koushikdutta/ion/Ion;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->A:Lcom/koushikdutta/ion/IonImageViewRequestBuilder;

    .line 268
    new-instance v0, Lcom/koushikdutta/ion/Ion$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/Ion$2;-><init>(Lcom/koushikdutta/ion/Ion;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->D:Ljava/lang/Runnable;

    .line 396
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->B:Ljava/util/WeakHashMap;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/koushikdutta/ion/Ion;->z:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/koushikdutta/ion/Ion;->v:Ljava/lang/String;

    .line 155
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient;

    new-instance v2, Lcom/koushikdutta/async/AsyncServer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ion-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/koushikdutta/async/AsyncServer;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;-><init>(Lcom/koushikdutta/async/AsyncServer;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 156
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->c()Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    move-result-object v0

    new-instance v2, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v2}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Ljavax/net/ssl/HostnameVerifier;)V

    .line 157
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->c()Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->b(Z)V

    .line 158
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    new-instance v2, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;

    iget-object v3, p0, Lcom/koushikdutta/ion/Ion;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v3}, Lcom/koushikdutta/async/http/AsyncHttpClient;->c()Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;-><init>(Landroid/content/Context;Lcom/koushikdutta/async/http/AsyncSSLSocketMiddleware;)V

    iput-object v2, p0, Lcom/koushikdutta/ion/Ion;->g:Lcom/koushikdutta/ion/conscrypt/ConscryptMiddleware;

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 160
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 162
    :try_start_88
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    const-wide/32 v4, 0xa00000

    invoke-static {v0, v2, v4, v5}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/io/File;J)Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->i:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_93} :catch_11c

    .line 175
    :goto_93
    new-instance v0, Lcom/koushikdutta/async/util/FileCache;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v2, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide v4, 0x7fffffffffffffffL

    const/4 v1, 0x0

    invoke-direct {v0, v2, v4, v5, v1}, Lcom/koushikdutta/async/util/FileCache;-><init>(Ljava/io/File;JZ)V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->j:Lcom/koushikdutta/async/util/FileCache;

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_b2

    .line 179
    invoke-direct {p0}, Lcom/koushikdutta/ion/Ion;->j()V

    .line 181
    :cond_b2
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->b()Lcom/koushikdutta/async/http/AsyncSocketMiddleware;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/koushikdutta/async/http/AsyncSocketMiddleware;->a(Z)V

    .line 182
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->c()Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/koushikdutta/async/http/spdy/SpdyMiddleware;->a(Z)V

    .line 184
    new-instance v0, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    invoke-direct {v0, p0}, Lcom/koushikdutta/ion/bitmap/IonBitmapCache;-><init>(Lcom/koushikdutta/ion/Ion;)V

    iput-object v0, p0, Lcom/koushikdutta/ion/Ion;->y:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    .line 186
    invoke-virtual {p0}, Lcom/koushikdutta/ion/Ion;->g()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/ion/loader/VideoLoader;

    invoke-direct {v1}, Lcom/koushikdutta/ion/loader/VideoLoader;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/ion/Ion;->o:Lcom/koushikdutta/ion/loader/VideoLoader;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/ion/Ion$Config;->a(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/ion/loader/PackageIconLoader;

    invoke-direct {v1}, Lcom/koushikdutta/ion/loader/PackageIconLoader;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/ion/Ion;->p:Lcom/koushikdutta/ion/loader/PackageIconLoader;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/ion/Ion$Config;->a(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/ion/loader/HttpLoader;

    invoke-direct {v1}, Lcom/koushikdutta/ion/loader/HttpLoader;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/ion/Ion;->k:Lcom/koushikdutta/ion/loader/HttpLoader;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/ion/Ion$Config;->a(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/ion/loader/ContentLoader;

    invoke-direct {v1}, Lcom/koushikdutta/ion/loader/ContentLoader;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/ion/Ion;->l:Lcom/koushikdutta/ion/loader/ContentLoader;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/ion/Ion$Config;->a(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/ion/loader/ResourceLoader;

    invoke-direct {v1}, Lcom/koushikdutta/ion/loader/ResourceLoader;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/ion/Ion;->m:Lcom/koushikdutta/ion/loader/ResourceLoader;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/ion/Ion$Config;->a(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/ion/loader/AssetLoader;

    invoke-direct {v1}, Lcom/koushikdutta/ion/loader/AssetLoader;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/ion/Ion;->n:Lcom/koushikdutta/ion/loader/AssetLoader;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/ion/Ion$Config;->a(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/ion/loader/FileLoader;

    invoke-direct {v1}, Lcom/koushikdutta/ion/loader/FileLoader;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/ion/Ion;->q:Lcom/koushikdutta/ion/loader/FileLoader;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/ion/Ion$Config;->a(Lcom/koushikdutta/ion/Loader;)Lcom/koushikdutta/ion/Ion$Config;

    .line 194
    return-void

    .line 164
    :catch_11c
    move-exception v0

    .line 165
    const-string/jumbo v3, "unable to set up response cache, clearing"

    invoke-static {v3, v0}, Lcom/koushikdutta/ion/IonLog;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 166
    invoke-static {v2}, Lcom/koushikdutta/async/util/FileUtility;->a(Ljava/io/File;)Z

    .line 168
    :try_start_126
    iget-object v3, p0, Lcom/koushikdutta/ion/Ion;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    const-wide/32 v4, 0xa00000

    invoke-static {v3, v2, v4, v5}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->a(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/io/File;J)Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    move-result-object v2

    iput-object v2, p0, Lcom/koushikdutta/ion/Ion;->i:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;
    :try_end_131
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_131} :catch_133

    goto/16 :goto_93

    .line 170
    :catch_133
    move-exception v2

    .line 171
    const-string/jumbo v2, "unable to set up response cache, failing"

    invoke-static {v2, v0}, Lcom/koushikdutta/ion/IonLog;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_93
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/koushikdutta/ion/Ion;
    .registers 4

    .prologue
    .line 110
    if-nez p0, :cond_b

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Can not pass null context in to retrieve ion instance"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_b
    sget-object v0, Lcom/koushikdutta/ion/Ion;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/Ion;

    .line 113
    if-nez v0, :cond_1f

    .line 114
    sget-object v1, Lcom/koushikdutta/ion/Ion;->e:Ljava/util/HashMap;

    new-instance v0, Lcom/koushikdutta/ion/Ion;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/ion/Ion;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_1f
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/koushikdutta/ion/builder/LoadBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/koushikdutta/ion/builder/LoadBuilder",
            "<",
            "Lcom/koushikdutta/ion/builder/Builders$Any$B;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p0}, Lcom/koushikdutta/ion/Ion;->b(Landroid/content/Context;)Lcom/koushikdutta/ion/Ion;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/koushikdutta/ion/Ion;->c(Landroid/content/Context;)Lcom/koushikdutta/ion/builder/LoadBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .prologue
    .line 197
    sget-object v0, Lcom/koushikdutta/ion/Ion;->d:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/koushikdutta/ion/Ion;
    .registers 2

    .prologue
    .line 100
    const-string/jumbo v0, "ion"

    invoke-static {p0, v0}, Lcom/koushikdutta/ion/Ion;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/koushikdutta/ion/Ion;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i()Ljava/util/Comparator;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/koushikdutta/ion/Ion;->C:Ljava/util/Comparator;

    return-object v0
.end method

.method private j()V
    .registers 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    new-instance v1, Lcom/koushikdutta/ion/cookie/CookieMiddleware;

    invoke-direct {v1, p0}, Lcom/koushikdutta/ion/cookie/CookieMiddleware;-><init>(Lcom/koushikdutta/ion/Ion;)V

    iput-object v1, p0, Lcom/koushikdutta/ion/Ion;->h:Lcom/koushikdutta/ion/cookie/CookieMiddleware;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->a(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;)V

    .line 400
    return-void
.end method


# virtual methods
.method a(Lcom/koushikdutta/async/future/Future;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 325
    if-eqz p2, :cond_10

    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/koushikdutta/async/future/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-interface {p1}, Lcom/koushikdutta/async/future/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 338
    :cond_10
    :goto_10
    return-void

    .line 329
    :cond_11
    monitor-enter p0

    .line 330
    :try_start_12
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->B:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/Ion$FutureSet;

    .line 331
    if-nez v0, :cond_26

    .line 332
    new-instance v0, Lcom/koushikdutta/ion/Ion$FutureSet;

    invoke-direct {v0}, Lcom/koushikdutta/ion/Ion$FutureSet;-><init>()V

    .line 333
    iget-object v1, p0, Lcom/koushikdutta/ion/Ion;->B:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_30

    .line 337
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/koushikdutta/ion/Ion$FutureSet;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    .line 335
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method b()V
    .registers 3

    .prologue
    .line 301
    sget-object v0, Lcom/koushikdutta/ion/Ion;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/koushikdutta/ion/Ion;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 302
    sget-object v0, Lcom/koushikdutta/ion/Ion;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/koushikdutta/ion/Ion;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 303
    return-void
.end method

.method public c()Landroid/content/Context;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->z:Landroid/content/Context;

    return-object v0
.end method

.method public c(Landroid/content/Context;)Lcom/koushikdutta/ion/builder/LoadBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/koushikdutta/ion/builder/LoadBuilder",
            "<",
            "Lcom/koushikdutta/ion/builder/Builders$Any$B;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder;

    invoke-static {p1}, Lcom/koushikdutta/ion/ContextReference;->a(Landroid/content/Context;)Lcom/koushikdutta/ion/ContextReference;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/koushikdutta/ion/IonRequestBuilder;-><init>(Lcom/koushikdutta/ion/ContextReference;Lcom/koushikdutta/ion/Ion;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->v:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/koushikdutta/async/http/AsyncHttpClient;
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    return-object v0
.end method

.method public f()Lcom/koushikdutta/async/AsyncServer;
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->d()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/koushikdutta/ion/Ion$Config;
    .registers 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->x:Lcom/koushikdutta/ion/Ion$Config;

    return-object v0
.end method

.method public h()Lcom/koushikdutta/ion/bitmap/IonBitmapCache;
    .registers 2

    .prologue
    .line 610
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->y:Lcom/koushikdutta/ion/bitmap/IonBitmapCache;

    return-object v0
.end method
