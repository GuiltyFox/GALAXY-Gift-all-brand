.class Lcom/koushikdutta/ion/bitmap/LruBitmapCache;
.super Lcom/koushikdutta/async/util/LruCache;
.source "LruBitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/koushikdutta/ion/bitmap/BitmapInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .prologue
    .line 13
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/koushikdutta/async/util/LruCache;-><init>(J)V

    .line 6
    new-instance v0, Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;

    invoke-direct {v0}, Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->a:Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;

    .line 14
    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/Object;Ljava/lang/Object;)J
    .registers 5

    .prologue
    .line 5
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->b(Ljava/lang/String;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .registers 4

    .prologue
    .line 9
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->a:Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    return-void
.end method

.method protected bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 5
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    check-cast p4, Lcom/koushikdutta/ion/bitmap/BitmapInfo;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->a(ZLjava/lang/String;Lcom/koushikdutta/ion/bitmap/BitmapInfo;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V

    return-void
.end method

.method protected a(ZLjava/lang/String;Lcom/koushikdutta/ion/bitmap/BitmapInfo;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)V
    .registers 6

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/koushikdutta/async/util/LruCache;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    if-eqz p1, :cond_a

    .line 52
    iget-object v0, p0, Lcom/koushikdutta/ion/bitmap/LruBitmapCache;->a:Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;

    invoke-virtual {v0, p2, p3}, Lcom/koushikdutta/ion/bitmap/SoftReferenceHashtable;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_a
    return-void
.end method

.method protected b(Ljava/lang/String;Lcom/koushikdutta/ion/bitmap/BitmapInfo;)J
    .registers 5

    .prologue
    .line 18
    invoke-virtual {p2}, Lcom/koushikdutta/ion/bitmap/BitmapInfo;->a()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
