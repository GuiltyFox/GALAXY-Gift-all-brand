.class Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
.super Ljava/lang/Object;
.source "VideoBitmapDecoder.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/media/MediaMetadataRetriever;
    .registers 2

    .prologue
    .line 66
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    return-object v0
.end method
