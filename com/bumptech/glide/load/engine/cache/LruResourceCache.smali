.class public Lcom/bumptech/glide/load/engine/cache/LruResourceCache;
.super Lcom/bumptech/glide/util/LruCache;
.source "LruResourceCache.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/MemoryCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/util/LruCache",
        "<",
        "Lcom/bumptech/glide/load/Key;",
        "Lcom/bumptech/glide/load/engine/Resource",
        "<*>;>;",
        "Lcom/bumptech/glide/load/engine/cache/MemoryCache;"
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/bumptech/glide/util/LruCache;-><init>(I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/engine/Resource;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 38
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->c()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 12
    check-cast p1, Lcom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->a(Lcom/bumptech/glide/load/engine/Resource;)I

    move-result v0

    return v0
.end method

.method public synthetic a(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 3

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/bumptech/glide/util/LruCache;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/Resource;

    return-object v0
.end method

.method public a(I)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 44
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_8

    .line 47
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->a()V

    .line 53
    :cond_7
    :goto_7
    return-void

    .line 48
    :cond_8
    const/16 v0, 0x28

    if-lt p1, v0, :cond_7

    .line 51
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->b(I)V

    goto :goto_7
.end method

.method protected a(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->a:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    if-eqz v0, :cond_9

    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->a:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    invoke-interface {v0, p2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;->b(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 34
    :cond_9
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->a:Lcom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    .line 27
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 12
    check-cast p1, Lcom/bumptech/glide/load/Key;

    check-cast p2, Lcom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/LruResourceCache;->a(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .registers 4

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/util/LruCache;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/Resource;

    return-object v0
.end method
