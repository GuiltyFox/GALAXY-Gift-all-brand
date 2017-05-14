.class Lcom/koushikdutta/async/http/spdy/HeaderReader;
.super Ljava/lang/Object;
.source "HeaderReader.java"


# instance fields
.field a:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/koushikdutta/async/http/spdy/HeaderReader$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/spdy/HeaderReader$1;-><init>(Lcom/koushikdutta/async/http/spdy/HeaderReader;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/HeaderReader;->a:Ljava/util/zip/Inflater;

    .line 30
    return-void
.end method

.method private static a(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/http/spdy/ByteString;
    .registers 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/ByteString;->a([B)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/ByteBufferList;I)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/ByteBufferList;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-array v0, p2, [B

    .line 34
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->a([B)V

    .line 36
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/HeaderReader;->a:Ljava/util/zip/Inflater;

    invoke-virtual {v1, v0}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 38
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v1

    .line 39
    :goto_15
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/HeaderReader;->a:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 40
    const/16 v0, 0x2000

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 42
    :try_start_23
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/HeaderReader;->a:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 44
    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;
    :try_end_33
    .catch Ljava/util/zip/DataFormatException; {:try_start_23 .. :try_end_33} :catch_34

    goto :goto_15

    .line 46
    :catch_34
    move-exception v0

    .line 47
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 51
    :cond_3b
    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->f()I

    move-result v2

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    const/4 v0, 0x0

    :goto_45
    if-ge v0, v2, :cond_6d

    .line 54
    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/HeaderReader;->a(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lcom/koushikdutta/async/http/spdy/ByteString;->c()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v4

    .line 55
    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/HeaderReader;->a(Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v5

    .line 56
    invoke-virtual {v4}, Lcom/koushikdutta/async/http/spdy/ByteString;->d()I

    move-result v6

    if-nez v6, :cond_62

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "name.size == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_62
    new-instance v6, Lcom/koushikdutta/async/http/spdy/Header;

    invoke-direct {v6, v4, v5}, Lcom/koushikdutta/async/http/spdy/Header;-><init>(Lcom/koushikdutta/async/http/spdy/ByteString;Lcom/koushikdutta/async/http/spdy/ByteString;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 59
    :cond_6d
    return-object v3
.end method
