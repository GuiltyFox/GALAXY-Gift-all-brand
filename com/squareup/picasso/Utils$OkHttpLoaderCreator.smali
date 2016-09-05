.class Lcom/squareup/picasso/Utils$OkHttpLoaderCreator;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static a(Landroid/content/Context;)Lcom/squareup/picasso/Downloader;
    .registers 2

    .prologue
    .line 424
    new-instance v0, Lcom/squareup/picasso/OkHttpDownloader;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/OkHttpDownloader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
