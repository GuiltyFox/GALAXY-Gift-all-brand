.class Lcom/koushikdutta/ion/BitmapFetcher;
.super Ljava/lang/Object;
.source "BitmapFetcher.java"

# interfaces
.implements Lcom/koushikdutta/ion/IonRequestBuilder$LoadRequestCallback;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/ion/bitmap/Transform;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/koushikdutta/ion/IonRequestBuilder;

.field f:I

.field g:I

.field h:Z

.field i:Z

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/ion/bitmap/PostProcess;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a(Lcom/koushikdutta/ion/Ion;)Z
    .registers 7

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/HashList;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gt v0, v5, :cond_f

    .line 89
    :cond_e
    :goto_e
    return v2

    .line 81
    :cond_f
    iget-object v0, p0, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/HashList;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    iget-object v4, p0, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    invoke-virtual {v4, v0}, Lcom/koushikdutta/async/util/HashList;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    instance-of v0, v0, Lcom/koushikdutta/ion/LoadBitmapBase;

    if-eqz v0, :cond_36

    .line 84
    add-int/lit8 v0, v1, 0x1

    .line 85
    if-le v0, v5, :cond_37

    .line 86
    const/4 v2, 0x1

    goto :goto_e

    :cond_36
    move v0, v1

    :cond_37
    move v1, v0

    .line 88
    goto :goto_1a
.end method

.method private a(Ljava/lang/String;)Z
    .registers 14

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapFetcher;->e:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v2, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    .line 40
    iget-boolean v0, p0, Lcom/koushikdutta/ion/BitmapFetcher;->i:Z

    if-eqz v0, :cond_4f

    .line 41
    if-eqz p1, :cond_16

    const-string/jumbo v0, "file:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 72
    :cond_16
    :goto_16
    return v10

    .line 43
    :cond_17
    new-instance v5, Ljava/io/File;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 44
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 46
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/ion/loader/MediaFile;->a(Ljava/lang/String;)Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_38

    iget v0, v0, Lcom/koushikdutta/ion/loader/MediaFile$MediaFileType;->a:I

    invoke-static {v0}, Lcom/koushikdutta/ion/loader/MediaFile;->a(I)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 48
    :cond_38
    new-instance v6, Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapFetcher;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/koushikdutta/ion/BitmapFetcher;->h:Z

    invoke-direct {v6, v2, v0, v3, v1}, Lcom/koushikdutta/ion/LoadDeepZoom;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;ZLcom/koushikdutta/async/util/FileCache;)V

    .line 49
    new-instance v0, Lcom/koushikdutta/ion/Response;

    sget-object v2, Lcom/koushikdutta/ion/ResponseServedFrom;->b:Lcom/koushikdutta/ion/ResponseServedFrom;

    move-object v3, v1

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/ion/Response;-><init>(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/ResponseServedFrom;Lcom/koushikdutta/ion/HeadersResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    invoke-virtual {v6, v1, v0}, Lcom/koushikdutta/ion/LoadDeepZoom;->a(Ljava/lang/Exception;Lcom/koushikdutta/ion/Response;)V

    move v10, v9

    .line 51
    goto :goto_16

    .line 56
    :cond_4f
    iget-boolean v0, p0, Lcom/koushikdutta/ion/BitmapFetcher;->c:Z

    if-nez v0, :cond_94

    move v8, v9

    .line 58
    :goto_54
    invoke-virtual {v2}, Lcom/koushikdutta/ion/Ion;->g()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/ion/Ion$Config;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_60
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/Loader;

    .line 59
    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapFetcher;->e:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v1, Lcom/koushikdutta/ion/IonRequestBuilder;->b:Lcom/koushikdutta/ion/ContextReference;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/ContextReference;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/koushikdutta/ion/BitmapFetcher;->a:Ljava/lang/String;

    iget v5, p0, Lcom/koushikdutta/ion/BitmapFetcher;->f:I

    iget v6, p0, Lcom/koushikdutta/ion/BitmapFetcher;->g:I

    iget-boolean v7, p0, Lcom/koushikdutta/ion/BitmapFetcher;->h:Z

    move-object v4, p1

    invoke-interface/range {v0 .. v7}, Lcom/koushikdutta/ion/Loader;->a(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_60

    .line 61
    new-instance v1, Lcom/koushikdutta/ion/LoadBitmapBase;

    iget-object v3, p0, Lcom/koushikdutta/ion/BitmapFetcher;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v8}, Lcom/koushikdutta/ion/LoadBitmapBase;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Z)V

    .line 62
    new-instance v2, Lcom/koushikdutta/ion/BitmapFetcher$1;

    invoke-direct {v2, p0, v1}, Lcom/koushikdutta/ion/BitmapFetcher$1;-><init>(Lcom/koushikdutta/ion/BitmapFetcher;Lcom/koushikdutta/ion/BitmapCallback;)V

    invoke-interface {v0, v2}, Lcom/koushikdutta/async/future/Future;->a(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    move v10, v9

    .line 69
    goto :goto_16

    :cond_94
    move v8, v10

    .line 56
    goto :goto_54
.end method

.method private b(Lcom/koushikdutta/ion/Ion;)V
    .registers 10

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/koushikdutta/ion/BitmapFetcher;->c:Z

    if-nez v0, :cond_5

    .line 109
    :cond_4
    :goto_4
    return-void

    .line 106
    :cond_5
    iget-object v0, p1, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    iget-object v1, p0, Lcom/koushikdutta/ion/BitmapFetcher;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/util/HashList;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 107
    iget-object v6, p1, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    iget-object v7, p0, Lcom/koushikdutta/ion/BitmapFetcher;->a:Ljava/lang/String;

    new-instance v0, Lcom/koushikdutta/ion/TransformBitmap;

    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/koushikdutta/ion/BitmapFetcher;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/koushikdutta/ion/BitmapFetcher;->d:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/koushikdutta/ion/BitmapFetcher;->j:Ljava/util/ArrayList;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/ion/TransformBitmap;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7, v0}, Lcom/koushikdutta/async/util/HashList;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4
.end method


# virtual methods
.method public a()V
    .registers 9

    .prologue
    .line 117
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapFetcher;->e:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v1, v0, Lcom/koushikdutta/ion/IonRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    .line 122
    iget-object v0, v1, Lcom/koushikdutta/ion/Ion;->i:Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/cache/ResponseCacheMiddleware;->a()Lcom/koushikdutta/async/util/FileCache;

    move-result-object v0

    .line 123
    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->e:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-boolean v2, v2, Lcom/koushikdutta/ion/IonRequestBuilder;->h:Z

    if-nez v2, :cond_24

    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/koushikdutta/async/util/FileCache;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-boolean v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->i:Z

    if-nez v2, :cond_24

    .line 124
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapFetcher;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->j:Ljava/util/ArrayList;

    invoke-static {v1, v0, v2}, Lcom/koushikdutta/ion/BitmapCallback;->a(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 158
    :goto_23
    return-void

    .line 129
    :cond_24
    iget-object v2, v1, Lcom/koushikdutta/ion/Ion;->w:Lcom/koushikdutta/async/util/HashList;

    iget-object v3, p0, Lcom/koushikdutta/ion/BitmapFetcher;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/util/HashList;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6f

    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->e:Lcom/koushikdutta/ion/IonRequestBuilder;

    iget-object v2, v2, Lcom/koushikdutta/ion/IonRequestBuilder;->e:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/koushikdutta/ion/BitmapFetcher;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 130
    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->e:Lcom/koushikdutta/ion/IonRequestBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Landroid/os/Handler;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 131
    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->e:Lcom/koushikdutta/ion/IonRequestBuilder;

    iput-object p0, v2, Lcom/koushikdutta/ion/IonRequestBuilder;->m:Lcom/koushikdutta/ion/IonRequestBuilder$LoadRequestCallback;

    .line 133
    iget-boolean v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->i:Z

    if-nez v2, :cond_75

    .line 134
    iget-object v0, p0, Lcom/koushikdutta/ion/BitmapFetcher;->e:Lcom/koushikdutta/ion/IonRequestBuilder;

    new-instance v2, Lcom/koushikdutta/async/parser/ByteBufferListParser;

    invoke-direct {v2}, Lcom/koushikdutta/async/parser/ByteBufferListParser;-><init>()V

    new-instance v3, Lcom/koushikdutta/ion/BitmapFetcher$2;

    invoke-direct {v3, p0, v1}, Lcom/koushikdutta/ion/BitmapFetcher$2;-><init>(Lcom/koushikdutta/ion/BitmapFetcher;Lcom/koushikdutta/ion/Ion;)V

    invoke-virtual {v0, v2, v3}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/koushikdutta/ion/future/ResponseFuture;->l()Lcom/koushikdutta/async/future/Future;

    move-result-object v7

    .line 146
    new-instance v0, Lcom/koushikdutta/ion/LoadBitmap;

    iget-object v2, p0, Lcom/koushikdutta/ion/BitmapFetcher;->a:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/koushikdutta/ion/BitmapFetcher;->c:Z

    if-nez v3, :cond_73

    const/4 v3, 0x1

    :goto_63
    iget v4, p0, Lcom/koushikdutta/ion/BitmapFetcher;->f:I

    iget v5, p0, Lcom/koushikdutta/ion/BitmapFetcher;->g:I

    iget-boolean v6, p0, Lcom/koushikdutta/ion/BitmapFetcher;->h:Z

    invoke-direct/range {v0 .. v6}, Lcom/koushikdutta/ion/LoadBitmap;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;ZIIZ)V

    invoke-interface {v7, v0}, Lcom/koushikdutta/async/future/Future;->a(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    .line 157
    :cond_6f
    :goto_6f
    invoke-direct {p0, v1}, Lcom/koushikdutta/ion/BitmapFetcher;->b(Lcom/koushikdutta/ion/Ion;)V

    goto :goto_23

    .line 146
    :cond_73
    const/4 v3, 0x0

    goto :goto_63

    .line 150
    :cond_75
    invoke-virtual {v0}, Lcom/koushikdutta/async/util/FileCache;->a()Ljava/io/File;

    move-result-object v2

    .line 151
    iget-object v3, p0, Lcom/koushikdutta/ion/BitmapFetcher;->e:Lcom/koushikdutta/ion/IonRequestBuilder;

    invoke-virtual {v3, v2}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->l()Lcom/koushikdutta/async/future/Future;

    move-result-object v2

    .line 152
    new-instance v3, Lcom/koushikdutta/ion/LoadDeepZoom;

    iget-object v4, p0, Lcom/koushikdutta/ion/BitmapFetcher;->a:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/koushikdutta/ion/BitmapFetcher;->h:Z

    invoke-direct {v3, v1, v4, v5, v0}, Lcom/koushikdutta/ion/LoadDeepZoom;-><init>(Lcom/koushikdutta/ion/Ion;Ljava/lang/String;ZLcom/koushikdutta/async/util/FileCache;)V

    .line 153
    invoke-interface {v2, v3}, Lcom/koushikdutta/async/future/Future;->a(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    goto :goto_6f
.end method

.method public a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Z
    .registers 3

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/BitmapFetcher;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
