.class public Lcom/koushikdutta/async/http/filter/InflaterInputFilter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "InflaterInputFilter.java"


# static fields
.field static final synthetic g:Z


# instance fields
.field private d:Ljava/util/zip/Inflater;

.field f:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->g:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;-><init>(Ljava/util/zip/Inflater;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/Inflater;)V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 24
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->f:Lcom/koushikdutta/async/ByteBufferList;

    .line 65
    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->d:Ljava/util/zip/Inflater;

    .line 66
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 10

    .prologue
    .line 28
    :try_start_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 30
    :goto_a
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->o()I

    move-result v1

    if-lez v1, :cond_91

    .line 31
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->n()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 33
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 34
    iget-object v3, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 36
    :cond_34
    iget-object v3, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3

    .line 37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 38
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_7c

    .line 39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 40
    iget-object v3, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->f:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v3, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 41
    sget-boolean v3, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->g:Z

    if-nez v3, :cond_72

    if-nez v2, :cond_72

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6d

    .line 55
    :catch_6d
    move-exception v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->b(Ljava/lang/Exception;)V

    .line 58
    :goto_71
    return-void

    .line 42
    :cond_72
    :try_start_72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 43
    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->c(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 46
    :cond_7c
    iget-object v3, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v3

    if-nez v3, :cond_8c

    iget-object v3, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->finished()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 48
    :cond_8c
    invoke-static {v1}, Lcom/koushikdutta/async/ByteBufferList;->c(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_a

    .line 50
    :cond_91
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 51
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->f:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 53
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->f:Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {p0, v0}, Lcom/koushikdutta/async/Util;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_9e} :catch_6d

    goto :goto_71
.end method

.method protected b(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 17
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 18
    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-lez v0, :cond_18

    .line 19
    new-instance v0, Lcom/koushikdutta/async/http/filter/DataRemainingException;

    const-string/jumbo v1, "data still remaining in inflater"

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/async/http/filter/DataRemainingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v0

    .line 21
    :cond_18
    invoke-super {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->b(Ljava/lang/Exception;)V

    .line 22
    return-void
.end method
