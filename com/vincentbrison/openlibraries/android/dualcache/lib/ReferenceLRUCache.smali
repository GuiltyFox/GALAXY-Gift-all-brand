.class public Lcom/vincentbrison/openlibraries/android/dualcache/lib/ReferenceLRUCache;
.super Landroid/support/v4/util/LruCache;
.source "ReferenceLRUCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mHandlerSizeOf:Lcom/vincentbrison/openlibraries/android/dualcache/lib/SizeOf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/SizeOf",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/vincentbrison/openlibraries/android/dualcache/lib/SizeOf;)V
    .registers 3
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/SizeOf",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/ReferenceLRUCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/ReferenceLRUCache<TT;>;"
    .local p2, "handler":Lcom/vincentbrison/openlibraries/android/dualcache/lib/SizeOf;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/SizeOf<TT;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 22
    iput-object p2, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/ReferenceLRUCache;->mHandlerSizeOf:Lcom/vincentbrison/openlibraries/android/dualcache/lib/SizeOf;

    .line 23
    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 9
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/ReferenceLRUCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/ReferenceLRUCache<TT;>;"
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/ReferenceLRUCache;->sizeOf(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Ljava/lang/Object;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)I"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/ReferenceLRUCache;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/ReferenceLRUCache<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/ReferenceLRUCache;->mHandlerSizeOf:Lcom/vincentbrison/openlibraries/android/dualcache/lib/SizeOf;

    invoke-interface {v0, p2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/SizeOf;->sizeOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
