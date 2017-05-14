.class Lcom/koushikdutta/ion/IonRequestBuilder;
.super Ljava/lang/Object;
.source "IonRequestBuilder.java"

# interfaces
.implements Lcom/koushikdutta/ion/builder/Builders$Any$B;
.implements Lcom/koushikdutta/ion/builder/Builders$Any$F;
.implements Lcom/koushikdutta/ion/builder/Builders$Any$M;
.implements Lcom/koushikdutta/ion/builder/Builders$Any$U;
.implements Lcom/koushikdutta/ion/builder/LoadBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/ion/builder/Builders$Any$B;",
        "Lcom/koushikdutta/ion/builder/Builders$Any$F;",
        "Lcom/koushikdutta/ion/builder/Builders$Any$M;",
        "Lcom/koushikdutta/ion/builder/Builders$Any$U;",
        "Lcom/koushikdutta/ion/builder/LoadBuilder",
        "<",
        "Lcom/koushikdutta/ion/builder/Builders$Any$B;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic C:Z


# instance fields
.field A:Lcom/koushikdutta/ion/ProgressCallback;

.field B:Lcom/koushikdutta/ion/HeadersCallback;

.field a:Lcom/koushikdutta/ion/Ion;

.field b:Lcom/koushikdutta/ion/ContextReference;

.field c:Landroid/os/Handler;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:Lcom/koushikdutta/async/http/Headers;

.field h:Z

.field i:Lcom/koushikdutta/async/http/Multimap;

.field j:I

.field k:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

.field l:Z

.field m:Lcom/koushikdutta/ion/IonRequestBuilder$LoadRequestCallback;

.field n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field p:Lcom/koushikdutta/ion/ProgressCallback;

.field q:Lcom/koushikdutta/ion/ProgressCallback;

.field r:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

.field s:Ljava/lang/String;

.field t:I

.field u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field v:Ljava/lang/String;

.field w:I

.field x:Lcom/koushikdutta/ion/ProgressCallback;

.field y:Landroid/widget/ProgressBar;

.field z:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    const-class v0, Lcom/koushikdutta/ion/IonRequestBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/ion/IonRequestBuilder;->C:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/koushikdutta/ion/ContextReference;Lcom/koushikdutta/ion/Ion;)V
    .registers 7

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lcom/koushikdutta/ion/Ion;->a:Landroid/os/Handler;

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->c:Landroid/os/Handler;

    .line 86
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->d:Ljava/lang/String;

    .line 186
    const/16 v0, 0x7530

    iput v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->j:I

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->l:Z

    .line 90
    invoke-virtual {p1}, Lcom/koushikdutta/ion/ContextReference;->a()Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_33

    .line 92
    const-string/jumbo v1, "Ion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Building request with dead context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_33
    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    .line 94
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->b:Lcom/koushikdutta/ion/ContextReference;

    .line 95
    return-void
.end method

.method private a(Landroid/net/Uri;)Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .registers 5

    .prologue
    .line 282
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v0}, Lcom/koushikdutta/ion/Ion;->g()Lcom/koushikdutta/ion/Ion$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/ion/Ion$Config;->a()Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->g:Lcom/koushikdutta/async/http/Headers;

    invoke-interface {v0, p1, v1, v2}, Lcom/koushikdutta/ion/loader/AsyncHttpRequestFactory;->a(Landroid/net/Uri;Ljava/lang/String;Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-result-object v0

    .line 283
    iget-boolean v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->l:Z

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Z)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 284
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->k:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)V

    .line 285
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    iget-object v1, v1, Lcom/koushikdutta/ion/Ion;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    iget v2, v2, Lcom/koushikdutta/ion/Ion;->s:I

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;I)V

    .line 286
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->s:Ljava/lang/String;

    if-eqz v1, :cond_32

    .line 287
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->s:Ljava/lang/String;

    iget v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->t:I

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->b(Ljava/lang/String;I)V

    .line 288
    :cond_32
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->v:Ljava/lang/String;

    iget v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->w:I

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Ljava/lang/String;I)V

    .line 289
    iget v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->j:I

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(I)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 290
    const-string/jumbo v1, "preparing request"

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->c(Ljava/lang/String;)V

    .line 291
    return-object v0
.end method

.method private a(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody",
            "<TT;>;)",
            "Lcom/koushikdutta/ion/IonRequestBuilder;"
        }
    .end annotation

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->f:Z

    if-nez v0, :cond_9

    .line 202
    const-string/jumbo v0, "POST"

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->d:Ljava/lang/String;

    .line 203
    :cond_9
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->k:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    .line 204
    return-object p0
.end method

.method private a(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->b()Landroid/net/Uri;

    move-result-object v0

    .line 302
    if-nez v0, :cond_12

    .line 303
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Invalid URI"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->a(Ljava/lang/Exception;)Z

    .line 311
    :goto_11
    return-void

    .line 307
    :cond_12
    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Landroid/net/Uri;)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-result-object v0

    .line 308
    iput-object v0, p1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->o:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 310
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V

    goto :goto_11
.end method

.method private a(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Lcom/koushikdutta/async/http/AsyncHttpRequest;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform",
            "<TT;>;",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->k:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->A:Lcom/koushikdutta/ion/ProgressCallback;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->y:Landroid/widget/ProgressBar;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->x:Lcom/koushikdutta/ion/ProgressCallback;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->z:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_23

    .line 315
    :cond_14
    new-instance v0, Lcom/koushikdutta/ion/RequestBodyUploadObserver;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->k:Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;

    new-instance v2, Lcom/koushikdutta/ion/IonRequestBuilder$2;

    invoke-direct {v2, p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$2;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/ion/RequestBodyUploadObserver;-><init>(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;Lcom/koushikdutta/ion/ProgressCallback;)V

    .line 344
    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)V

    .line 347
    :cond_23
    invoke-virtual {p0, p2, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    .line 348
    return-void
.end method

.method private a(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform",
            "<TT;>;",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/koushikdutta/ion/IonRequestBuilder$1;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 250
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->c:Landroid/os/Handler;

    if-nez v1, :cond_15

    .line 251
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    iget-object v1, v1, Lcom/koushikdutta/ion/Ion;->f:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->d()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/lang/Runnable;)Ljava/lang/Object;

    .line 254
    :goto_14
    return-void

    .line 253
    :cond_15
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->c:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/koushikdutta/async/AsyncServer;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_14
.end method

.method static synthetic a(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method

.method private b()Landroid/net/Uri;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 259
    :try_start_1
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->i:Lcom/koushikdutta/async/http/Multimap;

    if-eqz v0, :cond_51

    .line 260
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 261
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->i:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->i:Lcom/koushikdutta/async/http/Multimap;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/Multimap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 263
    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    move-object v3, v1

    goto :goto_31

    .line 266
    :cond_43
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_46} :catch_58

    move-result-object v0

    .line 275
    :goto_47
    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_50

    :cond_4f
    move-object v0, v2

    .line 278
    :cond_50
    return-object v0

    .line 269
    :cond_51
    :try_start_51
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_56} :catch_58

    move-result-object v0

    goto :goto_47

    .line 272
    :catch_58
    move-exception v0

    move-object v0, v2

    .line 273
    goto :goto_47
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .registers 4

    .prologue
    .line 103
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->d:Ljava/lang/String;

    .line 104
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 105
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    .line 106
    :cond_1e
    iput-object p2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->e:Ljava/lang/String;

    .line 107
    return-object p0
.end method


# virtual methods
.method a(Lcom/koushikdutta/async/DataSink;ZLjava/lang/Object;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/DataSink;",
            "ZTT;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 581
    new-instance v0, Lcom/koushikdutta/ion/IonRequestBuilder$5;

    move-object v1, p0

    move-object v2, p4

    move v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/ion/IonRequestBuilder$5;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;ZLcom/koushikdutta/async/DataSink;Ljava/lang/Object;)V

    .line 601
    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    .line 602
    return-object v0
.end method

.method public a(Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    new-instance v0, Lcom/koushikdutta/async/stream/FileDataSink;

    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->f()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/async/stream/FileDataSink;-><init>(Lcom/koushikdutta/async/AsyncServer;Ljava/io/File;)V

    const/4 v1, 0x1

    new-instance v2, Lcom/koushikdutta/ion/IonRequestBuilder$8;

    invoke-direct {v2, p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$8;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/io/File;)V

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/async/DataSink;ZLjava/lang/Object;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Handler;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .registers 2

    .prologue
    .line 195
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->c:Landroid/os/Handler;

    .line 196
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .registers 3

    .prologue
    .line 99
    const-string/jumbo v0, "GET"

    invoke-direct {p0, v0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .registers 4

    .prologue
    .line 788
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->r:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    if-nez v0, :cond_10

    .line 789
    new-instance v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->r:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    .line 790
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->r:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 792
    :cond_10
    if-eqz p2, :cond_17

    .line 793
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->r:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    :cond_17
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder;
    .registers 6

    .prologue
    .line 769
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->r:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    if-nez v0, :cond_10

    .line 770
    new-instance v0, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->r:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    .line 771
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->r:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-direct {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)Lcom/koushikdutta/ion/IonRequestBuilder;

    .line 774
    :cond_10
    new-instance v0, Lcom/koushikdutta/async/http/body/FilePart;

    invoke-direct {v0, p1, p3}, Lcom/koushikdutta/async/http/body/FilePart;-><init>(Ljava/lang/String;Ljava/io/File;)V

    .line 776
    if-nez p2, :cond_1f

    .line 777
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 779
    :cond_1f
    if-eqz p2, :cond_24

    .line 780
    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/http/body/FilePart;->a(Ljava/lang/String;)V

    .line 782
    :cond_24
    iget-object v1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->r:Lcom/koushikdutta/async/http/body/MultipartFormDataBody;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/http/body/MultipartFormDataBody;->a(Lcom/koushikdutta/async/http/body/Part;)V

    .line 783
    return-object p0
.end method

.method public a(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/builder/Builders$Any$B;
    .registers 2

    .prologue
    .line 939
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->y:Landroid/widget/ProgressBar;

    .line 940
    return-object p0
.end method

.method public a(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/Builders$Any$B;
    .registers 2

    .prologue
    .line 953
    iput-object p1, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->A:Lcom/koushikdutta/ion/ProgressCallback;

    .line 954
    return-object p0
.end method

.method public a()Lcom/koushikdutta/ion/future/ResponseFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/koushikdutta/ion/future/ResponseFuture",
            "<",
            "Lcom/google/gson/JsonArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 656
    new-instance v0, Lcom/koushikdutta/ion/gson/GsonArrayParser;

    invoke-direct {v0}, Lcom/koushikdutta/ion/gson/GsonArrayParser;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/koushikdutta/async/parser/AsyncParser;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/parser/AsyncParser",
            "<TT;>;)",
            "Lcom/koushikdutta/ion/future/ResponseFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 606
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/koushikdutta/async/parser/AsyncParser;Ljava/lang/Runnable;)Lcom/koushikdutta/ion/future/ResponseFuture;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/parser/AsyncParser",
            "<TT;>;",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/koushikdutta/ion/future/ResponseFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 610
    sget-boolean v0, Lcom/koushikdutta/ion/IonRequestBuilder;->C:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 612
    :cond_c
    invoke-direct {p0}, Lcom/koushikdutta/ion/IonRequestBuilder;->b()Landroid/net/Uri;

    move-result-object v2

    .line 613
    const/4 v0, 0x0

    .line 615
    if-eqz v2, :cond_39

    .line 616
    invoke-direct {p0, v2}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Landroid/net/Uri;)Lcom/koushikdutta/async/http/AsyncHttpRequest;

    move-result-object v1

    .line 617
    invoke-interface {p1}, Lcom/koushikdutta/async/parser/AsyncParser;->a()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 618
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/Loader;

    .line 619
    iget-object v5, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    invoke-interface {v0, v5, v1, v3}, Lcom/koushikdutta/ion/Loader;->a(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;Ljava/lang/reflect/Type;)Lcom/koushikdutta/ion/future/ResponseFuture;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_23

    .line 646
    :goto_37
    return-object v0

    :cond_38
    move-object v0, v1

    .line 625
    :cond_39
    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$6;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Ljava/lang/Runnable;Lcom/koushikdutta/async/parser/AsyncParser;)V

    .line 639
    if-nez v2, :cond_4d

    .line 640
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v2, "Invalid URI"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->a(Ljava/lang/Exception;)Z

    move-object v0, v1

    .line 641
    goto :goto_37

    .line 644
    :cond_4d
    iput-object v0, v1, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->o:Lcom/koushikdutta/async/http/AsyncHttpRequest;

    .line 645
    invoke-direct {p0, v1}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    move-object v0, v1

    .line 646
    goto :goto_37
.end method

.method a(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->d(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_f

    .line 353
    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$3;

    invoke-direct {v1, p0, p2}, Lcom/koushikdutta/ion/IonRequestBuilder$3;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/future/Future;->a(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    .line 376
    :goto_e
    return-void

    .line 366
    :cond_f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_28

    .line 367
    sget-object v0, Lcom/koushikdutta/ion/Ion;->a:Landroid/os/Handler;

    new-instance v1, Lcom/koushikdutta/ion/IonRequestBuilder$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder$4;-><init>(Lcom/koushikdutta/ion/IonRequestBuilder;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    invoke-static {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_e

    .line 375
    :cond_28
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->b(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    goto :goto_e
.end method

.method public synthetic b(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .registers 4

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/builder/MultipartBodyBuilder;
    .registers 5

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .registers 3

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Landroid/widget/ProgressBar;)Lcom/koushikdutta/ion/builder/Builders$Any$B;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/RequestBuilder;
    .registers 3

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Lcom/koushikdutta/ion/ProgressCallback;)Lcom/koushikdutta/ion/builder/Builders$Any$B;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder;->a(Ljava/lang/String;)Lcom/koushikdutta/ion/IonRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->m:Lcom/koushikdutta/ion/IonRequestBuilder$LoadRequestCallback;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->m:Lcom/koushikdutta/ion/IonRequestBuilder$LoadRequestCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/ion/IonRequestBuilder$LoadRequestCallback;->a(Lcom/koushikdutta/async/http/AsyncHttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 380
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/IonRequestBuilder;->c(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V

    .line 381
    :cond_f
    return-void
.end method

.method c(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/Loader;

    .line 386
    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    invoke-interface {v0, v2, p1, p2}, Lcom/koushikdutta/ion/Loader;->a(Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object v2

    .line 387
    if-eqz v2, :cond_8

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Using loader: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->a(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2, v2}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->c(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    .line 394
    :goto_36
    return-void

    .line 393
    :cond_37
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Unknown uri scheme"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;->a(Ljava/lang/Exception;)Z

    goto :goto_36
.end method

.method d(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform;)Lcom/koushikdutta/async/future/Future;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            "Lcom/koushikdutta/ion/IonRequestBuilder$EmitterTransform",
            "<TT;>;)",
            "Lcom/koushikdutta/async/future/Future",
            "<",
            "Lcom/koushikdutta/async/http/AsyncHttpRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    iget-object v0, v0, Lcom/koushikdutta/ion/Ion;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/ion/Loader;

    .line 399
    iget-object v2, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->b:Lcom/koushikdutta/ion/ContextReference;

    invoke-virtual {v2}, Lcom/koushikdutta/ion/ContextReference;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/koushikdutta/ion/IonRequestBuilder;->a:Lcom/koushikdutta/ion/Ion;

    invoke-interface {v0, v2, v3, p1}, Lcom/koushikdutta/ion/Loader;->a(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Lcom/koushikdutta/async/http/AsyncHttpRequest;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_8

    .line 404
    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method
