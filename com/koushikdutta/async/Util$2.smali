.class final Lcom/koushikdutta/async/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/WritableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/Util;->a(Ljava/io/InputStream;JLcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
.end annotation


# instance fields
.field a:I

.field b:Lcom/koushikdutta/async/ByteBufferList;

.field c:Lcom/koushikdutta/async/util/Allocator;

.field final synthetic d:Lcom/koushikdutta/async/DataSink;

.field final synthetic e:Ljava/io/InputStream;

.field final synthetic f:J

.field final synthetic g:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/DataSink;Ljava/io/InputStream;JLcom/koushikdutta/async/callback/CompletedCallback;)V
    .registers 7

    .prologue
    .line 74
    iput-object p1, p0, Lcom/koushikdutta/async/Util$2;->d:Lcom/koushikdutta/async/DataSink;

    iput-object p2, p0, Lcom/koushikdutta/async/Util$2;->e:Ljava/io/InputStream;

    iput-wide p3, p0, Lcom/koushikdutta/async/Util$2;->f:J

    iput-object p5, p0, Lcom/koushikdutta/async/Util$2;->g:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/Util$2;->a:I

    .line 82
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/Util$2;->b:Lcom/koushikdutta/async/ByteBufferList;

    .line 83
    new-instance v0, Lcom/koushikdutta/async/util/Allocator;

    invoke-direct {v0}, Lcom/koushikdutta/async/util/Allocator;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/Util$2;->c:Lcom/koushikdutta/async/util/Allocator;

    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->d:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->d:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/callback/WritableCallback;)V

    .line 79
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->m()V

    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/koushikdutta/async/Util$2;->e:Ljava/io/InputStream;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/koushikdutta/async/util/StreamUtility;->a([Ljava/io/Closeable;)V

    .line 81
    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .prologue
    .line 89
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->e()Z

    move-result v0

    if-nez v0, :cond_56

    .line 90
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->c:Lcom/koushikdutta/async/util/Allocator;

    invoke-virtual {v0}, Lcom/koushikdutta/async/util/Allocator;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    iget-wide v2, p0, Lcom/koushikdutta/async/Util$2;->f:J

    iget v1, p0, Lcom/koushikdutta/async/Util$2;->a:I

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 93
    iget-object v1, p0, Lcom/koushikdutta/async/Util$2;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x0

    long-to-int v2, v2

    invoke-virtual {v1, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 94
    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    iget v2, p0, Lcom/koushikdutta/async/Util$2;->a:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/koushikdutta/async/Util$2;->f:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3f

    .line 95
    :cond_35
    invoke-direct {p0}, Lcom/koushikdutta/async/Util$2;->b()V

    .line 96
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->g:Lcom/koushikdutta/async/callback/CompletedCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    .line 114
    :goto_3e
    return-void

    .line 99
    :cond_3f
    iget-object v2, p0, Lcom/koushikdutta/async/Util$2;->c:Lcom/koushikdutta/async/util/Allocator;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lcom/koushikdutta/async/util/Allocator;->a(J)V

    .line 100
    iget v2, p0, Lcom/koushikdutta/async/Util$2;->a:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/koushikdutta/async/Util$2;->a:I

    .line 101
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 103
    iget-object v1, p0, Lcom/koushikdutta/async/Util$2;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 106
    :cond_56
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->d:Lcom/koushikdutta/async/DataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/Util$2;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 108
    iget-object v0, p0, Lcom/koushikdutta/async/Util$2;->b:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->e()Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_62} :catch_66

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3e

    .line 110
    :catch_66
    move-exception v0

    .line 111
    invoke-direct {p0}, Lcom/koushikdutta/async/Util$2;->b()V

    .line 112
    iget-object v1, p0, Lcom/koushikdutta/async/Util$2;->g:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/callback/CompletedCallback;->a(Ljava/lang/Exception;)V

    goto :goto_3e
.end method
