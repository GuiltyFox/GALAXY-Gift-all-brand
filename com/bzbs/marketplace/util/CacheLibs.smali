.class public Lcom/bzbs/marketplace/util/CacheLibs;
.super Ljava/lang/Object;
.source "CacheLibs.java"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:I

.field d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/bzbs/marketplace/util/CacheLibs;->d:I

    .line 26
    iput p2, p0, Lcom/bzbs/marketplace/util/CacheLibs;->c:I

    .line 27
    iput-object p1, p0, Lcom/bzbs/marketplace/util/CacheLibs;->a:Ljava/lang/String;

    .line 28
    iput p3, p0, Lcom/bzbs/marketplace/util/CacheLibs;->b:I

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheLogUtils;->a()V

    .line 40
    invoke-static {p1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheContextUtils;->a(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;

    iget-object v1, p0, Lcom/bzbs/marketplace/util/CacheLibs;->a:Ljava/lang/String;

    iget v2, p0, Lcom/bzbs/marketplace/util/CacheLibs;->d:I

    const-class v3, Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    iget v1, p0, Lcom/bzbs/marketplace/util/CacheLibs;->c:I

    .line 43
    invoke-virtual {v0, v1}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheBuilder;->a(I)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;

    move-result-object v0

    iget v1, p0, Lcom/bzbs/marketplace/util/CacheLibs;->b:I

    const/4 v2, 0x1

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCacheDiskBuilder;->a(IZ)Lcom/vincentbrison/openlibraries/android/dualcache/lib/DualCache;

    move-result-object v0

    return-object v0
.end method
