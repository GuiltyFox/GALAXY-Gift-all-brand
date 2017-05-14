.class public Lcom/koushikdutta/ion/loader/ResourceLoader;
.super Lcom/koushikdutta/ion/loader/StreamLoader;
.source "ResourceLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/koushikdutta/ion/loader/StreamLoader;-><init>()V

    .line 30
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;
    .registers 3

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/koushikdutta/ion/loader/ResourceLoader;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 36
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_15

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri is not a valid resource uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_15
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 43
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_48

    .line 44
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 55
    :cond_3d
    new-instance v1, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;-><init>(Lcom/koushikdutta/ion/loader/ResourceLoader$1;)V

    .line 56
    iput-object v3, v1, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;->a:Landroid/content/res/Resources;

    .line 57
    iput v0, v1, Lcom/koushikdutta/ion/loader/ResourceLoader$Resource;->b:I

    .line 58
    return-object v1

    .line 45
    :cond_48
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_76

    .line 46
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    invoke-virtual {v3, v1, v0, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 49
    if-nez v0, :cond_3d

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resource not found in given package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "uri is not a valid resource uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/koushikdutta/ion/Ion;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    if-eqz p4, :cond_b

    const-string/jumbo v0, "android.resource:/"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 64
    :cond_b
    const/4 v9, 0x0

    .line 104
    :goto_c
    return-object v9

    .line 66
    :cond_d
    new-instance v9, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v9}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 69
    invoke-static {}, Lcom/koushikdutta/ion/Ion;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v10

    new-instance v0, Lcom/koushikdutta/ion/loader/ResourceLoader$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/koushikdutta/ion/loader/ResourceLoader$1;-><init>(Lcom/koushikdutta/ion/loader/ResourceLoader;Landroid/content/Context;Ljava/lang/String;Lcom/koushikdutta/ion/Ion;IIZLjava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_c
.end method

.method public a(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/ion/Ion;",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/async/future/FutureCallback",
            "<",
            "Lcom/koushikdutta/ion/Loader$LoaderEmitter;",
            ">;)",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/async/DataEmitter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.resource:/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 110
    const/4 v4, 0x0

    .line 132
    :goto_12
    return-object v4

    .line 112
    :cond_13
    new-instance v4, Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;

    invoke-direct {v4}, Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;-><init>()V

    .line 113
    invoke-virtual {p1}, Lcom/koushikdutta/ion/Ion;->e()Lcom/koushikdutta/async/http/AsyncHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->d()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v6

    new-instance v0, Lcom/koushikdutta/ion/loader/ResourceLoader$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/ion/loader/ResourceLoader$2;-><init>(Lcom/koushikdutta/ion/loader/ResourceLoader;Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/loader/InputStreamDataEmitterFuture;Lcom/koushikdutta/async/future/FutureCallback;)V

    invoke-virtual {v6, v0}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    goto :goto_12
.end method
