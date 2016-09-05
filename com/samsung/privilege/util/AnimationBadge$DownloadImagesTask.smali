.class public Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;
.super Landroid/os/AsyncTask;
.source "AnimationBadge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 229
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 232
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 233
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 234
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 236
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_20} :catch_21

    .line 240
    :goto_20
    return-object v0

    .line 237
    :catch_21
    move-exception v1

    goto :goto_20
.end method


# virtual methods
.method protected varargs a([Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 221
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->a:Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bzbs/data/AppSetting;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/badge/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->a:Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;

    iget-object v1, v1, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;->a:Lcom/bzbs/bean/BadgeAlert;

    iget-object v1, v1, Lcom/bzbs/bean/BadgeAlert;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/picture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-direct {p0, v0}, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->a:Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;

    iget-object v0, v0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;->a:Lcom/bzbs/bean/BadgeAlert;

    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->a:Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;

    iget-object v1, v1, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->a:Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;

    iget-object v2, v2, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/privilege/util/AnimationBadge;->a(Lcom/bzbs/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 247
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 216
    check-cast p1, [Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->a([Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 216
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
