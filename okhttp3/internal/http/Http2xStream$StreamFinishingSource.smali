.class Lokhttp3/internal/http/Http2xStream$StreamFinishingSource;
.super Lokio/ForwardingSource;
.source "Http2xStream.java"


# instance fields
.field final synthetic a:Lokhttp3/internal/http/Http2xStream;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http/Http2xStream;Lokio/Source;)V
    .registers 3

    .prologue
    .line 287
    iput-object p1, p0, Lokhttp3/internal/http/Http2xStream$StreamFinishingSource;->a:Lokhttp3/internal/http/Http2xStream;

    .line 288
    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 289
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 292
    iget-object v0, p0, Lokhttp3/internal/http/Http2xStream$StreamFinishingSource;->a:Lokhttp3/internal/http/Http2xStream;

    invoke-static {v0}, Lokhttp3/internal/http/Http2xStream;->a(Lokhttp3/internal/http/Http2xStream;)Lokhttp3/internal/http/StreamAllocation;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/http/Http2xStream$StreamFinishingSource;->a:Lokhttp3/internal/http/Http2xStream;

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/http/StreamAllocation;->a(ZLokhttp3/internal/http/HttpStream;)V

    .line 293
    invoke-super {p0}, Lokio/ForwardingSource;->close()V

    .line 294
    return-void
.end method
