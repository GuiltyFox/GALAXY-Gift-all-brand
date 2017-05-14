.class Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;
.super Ljava/lang/Object;
.source "Http20Draft13.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)V
    .registers 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 9

    .prologue
    .line 126
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    .line 127
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v1

    iput v1, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->b:I

    .line 128
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v1

    iput v1, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->c:I

    .line 131
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->b:I

    const/high16 v2, 0x3fff0000    # 1.9921875f

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    iput-short v1, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->f:S

    .line 132
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->b:I

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->e:B

    .line 133
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->b:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->d:B

    .line 135
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->c:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->g:I

    .line 136
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 137
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->a()Ljava/util/logging/Logger;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->g:I

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->f:S

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v4, v4, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->e:B

    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v5, v5, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->d:B

    invoke-static {v1, v2, v3, v4, v5}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->a(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 139
    :cond_71
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->b(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/DataEmitterReader;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->f:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->a:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-static {v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->a(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/DataEmitterReader;->a(ILcom/koushikdutta/async/callback/DataCallback;)V

    .line 140
    return-void
.end method
