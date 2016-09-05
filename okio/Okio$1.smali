.class final Lokio/Okio$1;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Okio;->a(Ljava/io/OutputStream;Lokio/Timeout;)Lokio/Sink;
.end annotation


# instance fields
.field final synthetic a:Lokio/Timeout;

.field final synthetic b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lokio/Timeout;Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 73
    iput-object p1, p0, Lokio/Okio$1;->a:Lokio/Timeout;

    iput-object p2, p0, Lokio/Okio$1;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokio/Timeout;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lokio/Okio$1;->a:Lokio/Timeout;

    return-object v0
.end method

.method public a_(Lokio/Buffer;J)V
    .registers 12

    .prologue
    const-wide/16 v2, 0x0

    .line 75
    iget-wide v0, p1, Lokio/Buffer;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    .line 76
    :cond_8
    :goto_8
    cmp-long v0, p2, v2

    if-lez v0, :cond_44

    .line 77
    iget-object v0, p0, Lokio/Okio$1;->a:Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->g()V

    .line 78
    iget-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    .line 79
    iget v1, v0, Lokio/Segment;->c:I

    iget v4, v0, Lokio/Segment;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 80
    iget-object v4, p0, Lokio/Okio$1;->b:Ljava/io/OutputStream;

    iget-object v5, v0, Lokio/Segment;->a:[B

    iget v6, v0, Lokio/Segment;->b:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 82
    iget v4, v0, Lokio/Segment;->b:I

    add-int/2addr v4, v1

    iput v4, v0, Lokio/Segment;->b:I

    .line 83
    int-to-long v4, v1

    sub-long/2addr p2, v4

    .line 84
    iget-wide v4, p1, Lokio/Buffer;->b:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lokio/Buffer;->b:J

    .line 86
    iget v1, v0, Lokio/Segment;->b:I

    iget v4, v0, Lokio/Segment;->c:I

    if-ne v1, v4, :cond_8

    .line 87
    invoke-virtual {v0}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->a:Lokio/Segment;

    .line 88
    invoke-static {v0}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    goto :goto_8

    .line 91
    :cond_44
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lokio/Okio$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 99
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lokio/Okio$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/Okio$1;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
