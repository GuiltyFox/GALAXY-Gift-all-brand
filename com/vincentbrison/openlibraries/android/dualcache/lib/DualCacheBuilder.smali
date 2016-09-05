.class public Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;
.super Ljava/lang/Object;
.source "DualCacheBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-direct {v0, p1, p2, p3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    iput-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    .line 19
    return-void
.end method


# virtual methods
.method public a(I)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;)V

    .line 28
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    new-instance v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/StringLRUCache;

    invoke-direct {v1, p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/StringLRUCache;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->a(Landroid/support/v4/util/LruCache;)V

    .line 29
    new-instance v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;

    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->a:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-direct {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;-><init>(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;)V

    return-object v0
.end method
