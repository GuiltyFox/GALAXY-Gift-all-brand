.class public abstract Lcom/bumptech/glide/load/data/AssetPathFetcher;
.super Ljava/lang/Object;
.source "AssetPathFetcher.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/res/AssetManager;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->b:Landroid/content/res/AssetManager;

    .line 23
    iput-object p2, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->a:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->b:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/load/data/AssetPathFetcher;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->c:Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public a()V
    .registers 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->c:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 45
    :cond_4
    :goto_4
    return-void

    .line 38
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/data/AssetPathFetcher;->a(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 39
    :catch_b
    move-exception v0

    .line 40
    const-string/jumbo v1, "AssetUriFetcher"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    const-string/jumbo v1, "AssetUriFetcher"

    const-string/jumbo v2, "Failed to close data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/bumptech/glide/load/data/AssetPathFetcher;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 55
    return-void
.end method
