.class Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;
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
    .line 157
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    .line 161
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v3

    iput v3, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a:I

    .line 162
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v3

    iput v3, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->b:I

    .line 164
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a:I

    const/high16 v3, -0x80000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_73

    move v0, v1

    .line 165
    :goto_21
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v4, v4, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->b:I

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x18

    iput v4, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->c:I

    .line 166
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v4, v4, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->b:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    iput v4, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d:I

    .line 168
    if-nez v0, :cond_77

    .line 169
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a:I

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    iput v3, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->e:I

    .line 170
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->c:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_75

    :goto_52
    iput-boolean v1, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->f:Z

    .line 171
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 173
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d:I

    if-nez v0, :cond_72

    .line 176
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->a(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->b(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/koushikdutta/async/callback/DataCallback;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 182
    :cond_72
    :goto_72
    return-void

    :cond_73
    move v0, v2

    .line 164
    goto :goto_21

    :cond_75
    move v1, v2

    .line 170
    goto :goto_52

    .line 180
    :cond_77
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/DataEmitterReader;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->d:I

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->a:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->c(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/DataEmitterReader;->a(ILcom/koushikdutta/async/callback/DataCallback;)V

    goto :goto_72
.end method
