.class public Lcom/koushikdutta/ion/loader/PackageIconLoader;
.super Lcom/koushikdutta/ion/loader/SimpleLoader;
.source "PackageIconLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/koushikdutta/ion/loader/SimpleLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;
    .registers 15
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
    .line 24
    if-eqz p4, :cond_b

    const-string/jumbo v0, "package:"

    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 25
    :cond_b
    const/4 v5, 0x0

    .line 48
    :goto_c
    return-object v5

    .line 27
    :cond_d
    new-instance v5, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {v5}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    .line 28
    invoke-static {}, Lcom/koushikdutta/ion/Ion;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v0, Lcom/koushikdutta/ion/loader/PackageIconLoader$1;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/ion/loader/PackageIconLoader$1;-><init>(Lcom/koushikdutta/ion/loader/PackageIconLoader;Ljava/lang/String;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_c
.end method
