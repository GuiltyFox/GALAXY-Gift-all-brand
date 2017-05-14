.class Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;
.super Ljava/lang/Object;
.source "GZIPInputFilter.java"

# interfaces
.implements Lcom/koushikdutta/async/PushParser$ParseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/PushParser$ParseCallback",
        "<[B>;"
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field final synthetic c:Lcom/koushikdutta/async/DataEmitter;

.field final synthetic d:Lcom/koushikdutta/async/PushParser;

.field final synthetic e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter;Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/PushParser;)V
    .registers 4

    .prologue
    .line 51
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iput-object p2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->c:Lcom/koushikdutta/async/DataEmitter;

    iput-object p3, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->d:Lcom/koushikdutta/async/PushParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 90
    new-instance v0, Lcom/koushikdutta/async/PushParser;

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->c:Lcom/koushikdutta/async/DataEmitter;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/PushParser;-><init>(Lcom/koushikdutta/async/DataEmitter;)V

    .line 91
    new-instance v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$2;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    .line 105
    iget v2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->a:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_17

    .line 106
    invoke-virtual {v0, v3, v1}, Lcom/koushikdutta/async/PushParser;->a(BLcom/koushikdutta/async/callback/DataCallback;)Lcom/koushikdutta/async/PushParser;

    .line 115
    :goto_16
    return-void

    .line 109
    :cond_17
    iget v2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->a:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_21

    .line 110
    invoke-virtual {v0, v3, v1}, Lcom/koushikdutta/async/PushParser;->a(BLcom/koushikdutta/async/callback/DataCallback;)Lcom/koushikdutta/async/PushParser;

    goto :goto_16

    .line 114
    :cond_21
    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->b()V

    goto :goto_16
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->a()V

    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->b:Z

    if-eqz v0, :cond_10

    .line 119
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->d:Lcom/koushikdutta/async/PushParser;

    const/4 v1, 0x2

    new-instance v2, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$3;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/PushParser;->a(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    .line 136
    :goto_f
    return-void

    .line 133
    :cond_10
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->d:Z

    .line 134
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->c:Lcom/koushikdutta/async/DataEmitter;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->a(Lcom/koushikdutta/async/DataEmitter;)V

    goto :goto_f
.end method

.method static synthetic b(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->b()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 51
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->a([B)V

    return-void
.end method

.method public a([B)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v1, v2}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->a([BILjava/nio/ByteOrder;)S

    move-result v2

    .line 57
    const/16 v3, -0x74e1

    if-eq v2, v3, :cond_30

    .line 58
    iget-object v3, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "unknown format (magic number %x)"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->b(Ljava/lang/Exception;)V

    .line 59
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->c:Lcom/koushikdutta/async/DataEmitter;

    new-instance v1, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v1}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->a(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 87
    :goto_2f
    return-void

    .line 62
    :cond_30
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    iput v2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->a:I

    .line 63
    iget v2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->a:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5b

    :goto_3b
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->b:Z

    .line 64
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->b:Z

    if-eqz v0, :cond_49

    .line 65
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->e:Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->e:Ljava/util/zip/CRC32;

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 67
    :cond_49
    iget v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5d

    .line 68
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->d:Lcom/koushikdutta/async/PushParser;

    const/4 v1, 0x2

    new-instance v2, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/PushParser;->a(ILcom/koushikdutta/async/PushParser$ParseCallback;)Lcom/koushikdutta/async/PushParser;

    goto :goto_2f

    :cond_5b
    move v0, v1

    .line 63
    goto :goto_3b

    .line 85
    :cond_5d
    invoke-direct {p0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->a()V

    goto :goto_2f
.end method
