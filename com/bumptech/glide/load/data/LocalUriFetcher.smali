.class public abstract Lcom/bumptech/glide/load/data/LocalUriFetcher;
.super Ljava/lang/Object;
.source "LocalUriFetcher.java"

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
.field private final a:Landroid/net/Uri;

.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->b:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->a:Landroid/net/Uri;

    .line 39
    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->a:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Lcom/bumptech/glide/load/data/LocalUriFetcher;->b(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->c:Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public a()V
    .registers 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->c:Ljava/lang/Object;

    if-eqz v0, :cond_9

    .line 52
    :try_start_4
    iget-object v0, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/data/LocalUriFetcher;->a(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_a

    .line 60
    :cond_9
    :goto_9
    return-void

    .line 53
    :catch_a
    move-exception v0

    .line 54
    const-string/jumbo v1, "LocalUriFetcher"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 55
    const-string/jumbo v1, "LocalUriFetcher"

    const-string/jumbo v2, "failed to close data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract b(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/content/ContentResolver;",
            ")TT;"
        }
    .end annotation
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/load/data/LocalUriFetcher;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 65
    return-void
.end method
