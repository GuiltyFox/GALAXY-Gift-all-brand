.class public Lcom/koushikdutta/async/stream/ByteBufferListInputStream;
.super Ljava/io/InputStream;
.source "ByteBufferListInputStream.java"


# instance fields
.field a:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->a:Lcom/koushikdutta/async/ByteBufferList;

    .line 15
    return-void
.end method


# virtual methods
.method public read()I
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-gtz v0, :cond_a

    .line 20
    const/4 v0, -0x1

    .line 21
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->i()B

    move-result v0

    goto :goto_9
.end method

.method public read([B)I
    .registers 4

    .prologue
    .line 26
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 6

    .prologue
    .line 31
    iget-object v0, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    if-gtz v0, :cond_a

    .line 32
    const/4 v0, -0x1

    .line 35
    :goto_9
    return v0

    .line 33
    :cond_a
    iget-object v0, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;->a:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1, p1, p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a([BII)V

    goto :goto_9
.end method
