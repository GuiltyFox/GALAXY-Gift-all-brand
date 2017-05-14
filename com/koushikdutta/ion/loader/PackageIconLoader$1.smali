.class Lcom/koushikdutta/ion/loader/PackageIconLoader$1;
.super Ljava/lang/Object;
.source "PackageIconLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/ion/loader/PackageIconLoader;->a(Landroid/content/Context;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/koushikdutta/async/future/Future;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/koushikdutta/ion/Ion;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/koushikdutta/async/future/SimpleFuture;

.field final synthetic e:Lcom/koushikdutta/ion/loader/PackageIconLoader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/ion/loader/PackageIconLoader;Ljava/lang/String;Lcom/koushikdutta/ion/Ion;Ljava/lang/String;Lcom/koushikdutta/async/future/SimpleFuture;)V
    .registers 6

    .prologue
    .line 28
    iput-object p1, p0, Lcom/koushikdutta/ion/loader/PackageIconLoader$1;->e:Lcom/koushikdutta/ion/loader/PackageIconLoader;

    iput-object p2, p0, Lcom/koushikdutta/ion/loader/PackageIconLoader$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/ion/loader/PackageIconLoader$1;->b:Lcom/koushikdutta/ion/Ion;

    iput-object p4, p0, Lcom/koushikdutta/ion/loader/PackageIconLoader$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/koushikdutta/ion/loader/PackageIconLoader$1;->d:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/PackageIconLoader$1;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/PackageIconLoader$1;->b:Lcom/koushikdutta/ion/Ion;

    invoke-virtual {v1}, Lcom/koushikdutta/ion/Ion;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 35
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    if-nez v0, :cond_37

    .line 37
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "package icon failed to load"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_30

    .line 42
    :catch_30
    move-exception v0

    .line 43
    iget-object v1, p0, Lcom/koushikdutta/ion/loader/PackageIconLoader$1;->d:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->a(Ljava/lang/Exception;)Z

    .line 45
    :goto_36
    return-void

    .line 38
    :cond_37
    :try_start_37
    new-instance v1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    iget-object v2, p0, Lcom/koushikdutta/ion/loader/PackageIconLoader$1;->c:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Point;)V

    .line 39
    sget-object v0, Lcom/koushikdutta/ion/ResponseServedFrom;->b:Lcom/koushikdutta/ion/ResponseServedFrom;

    iput-object v0, v1, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->d:Lcom/koushikdutta/ion/ResponseServedFrom;

    .line 40
    iget-object v0, p0, Lcom/koushikdutta/ion/loader/PackageIconLoader$1;->d:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->b(Ljava/lang/Object;)Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_55} :catch_30

    goto :goto_36
.end method
