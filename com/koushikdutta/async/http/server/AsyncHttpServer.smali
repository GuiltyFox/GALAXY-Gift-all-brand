.class public Lcom/koushikdutta/async/http/server/AsyncHttpServer;
.super Ljava/lang/Object;
.source "AsyncHttpServer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# static fields
.field static e:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final synthetic f:Z

.field private static g:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/koushikdutta/async/callback/ListenCallback;

.field c:Lcom/koushikdutta/async/callback/CompletedCallback;

.field final d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/async/http/server/AsyncHttpServer$Pair;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const-class v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_6e

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->f:Z

    .line 360
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->e:Ljava/util/Hashtable;

    .line 496
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->g:Ljava/util/Hashtable;

    .line 498
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->g:Ljava/util/Hashtable;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "OK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->g:Ljava/util/Hashtable;

    const/16 v1, 0xce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Partial Content"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->g:Ljava/util/Hashtable;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Switching Protocols"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->g:Ljava/util/Hashtable;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Moved Permanently"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->g:Ljava/util/Hashtable;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Found"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->g:Ljava/util/Hashtable;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Not Found"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    return-void

    .line 45
    :cond_6e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->a:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1;-><init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->b:Lcom/koushikdutta/async/callback/ListenCallback;

    .line 285
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->d:Ljava/util/Hashtable;

    .line 362
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->e:Ljava/util/Hashtable;

    const-string/jumbo v1, "js"

    const-string/jumbo v2, "application/javascript"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->e:Ljava/util/Hashtable;

    const-string/jumbo v1, "json"

    const-string/jumbo v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->e:Ljava/util/Hashtable;

    const-string/jumbo v1, "png"

    const-string/jumbo v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->e:Ljava/util/Hashtable;

    const-string/jumbo v1, "jpg"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->e:Ljava/util/Hashtable;

    const-string/jumbo v1, "html"

    const-string/jumbo v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->e:Ljava/util/Hashtable;

    const-string/jumbo v1, "css"

    const-string/jumbo v2, "text/css"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->e:Ljava/util/Hashtable;

    const-string/jumbo v1, "mp4"

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->e:Ljava/util/Hashtable;

    const-string/jumbo v1, "mov"

    const-string/jumbo v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->e:Ljava/util/Hashtable;

    const-string/jumbo v1, "wmv"

    const-string/jumbo v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 507
    sget-object v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->g:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 508
    if-nez v0, :cond_11

    .line 509
    const-string/jumbo v0, "Unknown"

    .line 510
    :cond_11
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 381
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 382
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 383
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    sget-object v1, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->e:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 385
    if-eqz v0, :cond_1b

    .line 388
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/server/AsyncHttpServer;Ljava/lang/Exception;)V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->c:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_9

    .line 234
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer;->c:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    .line 235
    :cond_9
    return-void
.end method


# virtual methods
.method protected a(Lcom/koushikdutta/async/http/Headers;)Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;
    .registers 4

    .prologue
    .line 66
    new-instance v0, Lcom/koushikdutta/async/http/server/UnknownRequestBody;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/http/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/server/UnknownRequestBody;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected a(Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .registers 4

    .prologue
    .line 61
    if-eqz p1, :cond_5

    .line 62
    invoke-interface {p1, p2, p3}, Lcom/koushikdutta/async/http/server/HttpServerRequestCallback;->a(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V

    .line 63
    :cond_5
    return-void
.end method

.method protected a(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)Z
    .registers 4

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
