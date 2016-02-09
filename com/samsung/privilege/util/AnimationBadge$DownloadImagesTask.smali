.class public Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;
.super Landroid/os/AsyncTask;
.source "AnimationBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/util/AnimationBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadImagesTask"
.end annotation

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
.field gObjDownloadImagesParam:Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 214
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private download_Image(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 225
    const/4 v2, 0x0

    .line 227
    .local v2, "bm":Landroid/graphics/Bitmap;
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "aURL":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 229
    .local v3, "conn":Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 230
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 231
    .local v5, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 232
    .local v1, "bis":Ljava/io/BufferedInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 233
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 234
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_20} :catch_21

    .line 238
    .end local v0    # "aURL":Ljava/net/URL;
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "conn":Ljava/net/URLConnection;
    .end local v5    # "is":Ljava/io/InputStream;
    :goto_20
    return-object v2

    .line 235
    :catch_21
    move-exception v4

    .line 236
    .local v4, "e":Ljava/io/IOException;
    const-string v6, "Hub"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error getting the image from server : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "params"    # [Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;

    .prologue
    .line 219
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->gObjDownloadImagesParam:Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/badge/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->gObjDownloadImagesParam:Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;

    iget-object v2, v2, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;->gBadge:Lcom/samsung/privilege/bean/BadgeAlert;

    iget-object v2, v2, Lcom/samsung/privilege/bean/BadgeAlert;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "image_url":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->download_Image(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->doInBackground([Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->gObjDownloadImagesParam:Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;

    iget-object v0, v0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;->gBadge:Lcom/samsung/privilege/bean/BadgeAlert;

    iget-object v1, p0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->gObjDownloadImagesParam:Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;

    iget-object v1, v1, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;->gHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->gObjDownloadImagesParam:Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;

    iget-object v2, v2, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesParam;->gContext:Landroid/content/Context;

    # invokes: Lcom/samsung/privilege/util/AnimationBadge;->showToastBadge(Lcom/samsung/privilege/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, v2, p1}, Lcom/samsung/privilege/util/AnimationBadge;->access$0(Lcom/samsung/privilege/bean/BadgeAlert;Landroid/os/Handler;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 245
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/samsung/privilege/util/AnimationBadge$DownloadImagesTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
