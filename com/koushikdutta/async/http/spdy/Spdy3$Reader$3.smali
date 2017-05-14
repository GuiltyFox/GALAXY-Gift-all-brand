.class Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 6

    .prologue
    .line 189
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 190
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 191
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->g:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 192
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object p2, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->g:Lcom/koushikdutta/async/ByteBufferList;

    .line 195
    :cond_1d
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d:I

    sub-int v0, v2, v0

    iput v0, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d:I

    .line 196
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->e(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    move-result-object v1

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d:I

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->f:Z

    if-eqz v0, :cond_4b

    const/4 v0, 0x1

    :goto_38
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->e:I

    invoke-interface {v1, v0, v2, p2}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->a(ZILcom/koushikdutta/async/ByteBufferList;)V

    .line 198
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d:I

    if-nez v0, :cond_4a

    .line 199
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->f(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V

    .line 200
    :cond_4a
    return-void

    .line 196
    :cond_4b
    const/4 v0, 0x0

    goto :goto_38
.end method
