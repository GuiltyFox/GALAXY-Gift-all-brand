.class public Lcom/koushikdutta/async/http/filter/ContentLengthFilter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "ContentLengthFilter.java"


# static fields
.field static final synthetic g:Z


# instance fields
.field d:J

.field e:J

.field f:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-class v0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->g:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(J)V
    .registers 4

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    .line 21
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->f:Lcom/koushikdutta/async/ByteBufferList;

    .line 9
    iput-wide p1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->d:J

    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .registers 9

    .prologue
    .line 24
    sget-boolean v0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->g:Z

    if-nez v0, :cond_12

    iget-wide v0, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->e:J

    iget-wide v2, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->d:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 26
    :cond_12
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    .line 27
    iget-wide v2, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->d:J

    iget-wide v4, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->e:J

    sub-long/2addr v2, v4

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 29
    iget-object v2, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->f:Lcom/koushikdutta/async/ByteBufferList;

    long-to-int v0, v0

    invoke-virtual {p2, v2, v0}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 31
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->f:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v0

    .line 33
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->f:Lcom/koushikdutta/async/ByteBufferList;

    invoke-super {p0, p1, v1}, Lcom/koushikdutta/async/FilteredDataEmitter;->a(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 35
    iget-wide v2, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->e:J

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->f:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v1}, Lcom/koushikdutta/async/ByteBufferList;->d()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->e:J

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->f:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/ByteBufferList;->a(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 38
    iget-wide v0, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->e:J

    iget-wide v2, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4f

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->b(Ljava/lang/Exception;)V

    .line 40
    :cond_4f
    return-void
.end method

.method protected b(Ljava/lang/Exception;)V
    .registers 6

    .prologue
    .line 14
    if-nez p1, :cond_41

    iget-wide v0, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->e:J

    iget-wide v2, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_41

    .line 15
    new-instance p1, Lcom/koushikdutta/async/http/filter/PrematureDataEndException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "End of data reached before content length was read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/filter/PrematureDataEndException;-><init>(Ljava/lang/String;)V

    .line 16
    :cond_41
    invoke-super {p0, p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->b(Ljava/lang/Exception;)V

    .line 17
    return-void
.end method
