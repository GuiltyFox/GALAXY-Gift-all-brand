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
.field private mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
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
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "appVersion"    # I
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
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder<TT;>;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-direct {v0, p1, p2, p3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    iput-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    .line 19
    return-void
.end method


# virtual methods
.method public noRam()Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder<TT;>;"
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->DISABLE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->setRAMMode(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;)V

    .line 63
    new-instance v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;

    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-direct {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;-><init>(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;)V

    return-object v0
.end method

.method public useCustomSerializerInRam(ILcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;
    .registers 5
    .param p1, "maxRamSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer",
            "<TT;>;)",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder<TT;>;"
    .local p2, "serializer":Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer<TT;>;"
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_CUSTOM_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->setRAMMode(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;)V

    .line 40
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    new-instance v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/StringLRUCache;

    invoke-direct {v1, p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/StringLRUCache;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->setRamCacheLru(Landroid/support/v4/util/LruCache;)V

    .line 41
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-virtual {v0, p2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->setRAMSerializer(Lcom/vincentbrison/openlibraries/android/dualcache/lib/Serializer;)V

    .line 42
    new-instance v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;

    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-direct {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;-><init>(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;)V

    return-object v0
.end method

.method public useDefaultSerializerInRam(I)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;
    .registers 4
    .param p1, "maxRamSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder<TT;>;"
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_DEFAULT_SERIALIZER:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->setRAMMode(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;)V

    .line 28
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    new-instance v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/StringLRUCache;

    invoke-direct {v1, p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/StringLRUCache;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->setRamCacheLru(Landroid/support/v4/util/LruCache;)V

    .line 29
    new-instance v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;

    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-direct {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;-><init>(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;)V

    return-object v0
.end method

.method public useReferenceInRam(ILcom/vincentbrison/openlibraries/android/dualcache/lib/SizeOf;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;
    .registers 5
    .param p1, "maxRamSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/SizeOf",
            "<TT;>;)",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder<TT;>;"
    .local p2, "handlerSizeOf":Lcom/vincentbrison/openlibraries/android/dualcache/lib/SizeOf;, "Lcom/vincentbrison/openlibraries/android/dualcache/lib/SizeOf<TT;>;"
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    sget-object v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;->ENABLE_WITH_REFERENCE:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->setRAMMode(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache$DualCacheRAMMode;)V

    .line 53
    iget-object v0, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    new-instance v1, Lcom/vincentbrison/openlibraries/android/dualcache/lib/ReferenceLRUCache;

    invoke-direct {v1, p1, p2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/ReferenceLRUCache;-><init>(ILcom/vincentbrison/openlibraries/android/dualcache/lib/SizeOf;)V

    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;->setRamCacheLru(Landroid/support/v4/util/LruCache;)V

    .line 54
    new-instance v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;

    iget-object v1, p0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->mDualCache:Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    invoke-direct {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;-><init>(Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;)V

    return-object v0
.end method
