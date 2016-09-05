.class final Lokhttp3/internal/DiskLruCache$4;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/DiskLruCache;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 823
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokio/Timeout;
    .registers 2

    .prologue
    .line 832
    sget-object v0, Lokio/Timeout;->b:Lokio/Timeout;

    return-object v0
.end method

.method public a_(Lokio/Buffer;J)V
    .registers 4

    .prologue
    .line 825
    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->h(J)V

    .line 826
    return-void
.end method

.method public close()V
    .registers 1

    .prologue
    .line 836
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 829
    return-void
.end method
