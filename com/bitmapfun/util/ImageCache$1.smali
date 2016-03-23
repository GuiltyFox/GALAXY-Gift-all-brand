.class Lcom/bitmapfun/util/ImageCache$1;
.super Landroid/util/LruCache;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bitmapfun/util/ImageCache;->init(Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bitmapfun/util/ImageCache;


# direct methods
.method constructor <init>(Lcom/bitmapfun/util/ImageCache;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/bitmapfun/util/ImageCache;
    .param p2, "x0"    # I

    .prologue
    .line 129
    iput-object p1, p0, Lcom/bitmapfun/util/ImageCache$1;->this$0:Lcom/bitmapfun/util/ImageCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 129
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bitmapfun/util/ImageCache$1;->sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 136
    invoke-static {p2}, Lcom/bitmapfun/util/ImageCache;->getBitmapSize(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
