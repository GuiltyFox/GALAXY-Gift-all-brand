.class public final Lokio/DeflaterSink;
.super Ljava/lang/Object;
.source "DeflaterSink.java"

# interfaces
.implements Lokio/Sink;


# instance fields
.field private final a:Lokio/BufferedSink;

.field private final b:Ljava/util/zip/Deflater;

.field private c:Z


# direct methods
.method constructor <init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V
    .registers 5

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_e
    if-nez p2, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inflater == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_19
    iput-object p1, p0, Lokio/DeflaterSink;->a:Lokio/BufferedSink;

    .line 56
    iput-object p2, p0, Lokio/DeflaterSink;->b:Ljava/util/zip/Deflater;

    .line 57
    return-void
.end method

.method public constructor <init>(Lokio/Sink;Ljava/util/zip/Deflater;)V
    .registers 4

    .prologue
    .line 44
    invoke-static {p1}, Lokio/Okio;->a(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lokio/DeflaterSink;-><init>(Lokio/BufferedSink;Ljava/util/zip/Deflater;)V

    .line 45
    return-void
.end method

.method private a(Z)V
    .registers 9
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lokio/DeflaterSink;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->c()Lokio/Buffer;

    move-result-object v1

    .line 86
    :cond_6
    :goto_6
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lokio/Buffer;->e(I)Lokio/Segment;

    move-result-object v2

    .line 92
    if-eqz p1, :cond_2f

    iget-object v0, p0, Lokio/DeflaterSink;->b:Ljava/util/zip/Deflater;

    iget-object v3, v2, Lokio/Segment;->a:[B

    iget v4, v2, Lokio/Segment;->c:I

    iget v5, v2, Lokio/Segment;->c:I

    rsub-int v5, v5, 0x2000

    const/4 v6, 0x2

    .line 93
    invoke-virtual {v0, v3, v4, v5, v6}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    .line 96
    :goto_1c
    if-lez v0, :cond_3e

    .line 97
    iget v3, v2, Lokio/Segment;->c:I

    add-int/2addr v3, v0

    iput v3, v2, Lokio/Segment;->c:I

    .line 98
    iget-wide v2, v1, Lokio/Buffer;->b:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, v1, Lokio/Buffer;->b:J

    .line 99
    iget-object v0, p0, Lokio/DeflaterSink;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->v()Lokio/BufferedSink;

    goto :goto_6

    .line 93
    :cond_2f
    iget-object v0, p0, Lokio/DeflaterSink;->b:Ljava/util/zip/Deflater;

    iget-object v3, v2, Lokio/Segment;->a:[B

    iget v4, v2, Lokio/Segment;->c:I

    iget v5, v2, Lokio/Segment;->c:I

    rsub-int v5, v5, 0x2000

    .line 94
    invoke-virtual {v0, v3, v4, v5}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    goto :goto_1c

    .line 100
    :cond_3e
    iget-object v0, p0, Lokio/DeflaterSink;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101
    iget v0, v2, Lokio/Segment;->b:I

    iget v3, v2, Lokio/Segment;->c:I

    if-ne v0, v3, :cond_55

    .line 103
    invoke-virtual {v2}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v0

    iput-object v0, v1, Lokio/Buffer;->a:Lokio/Segment;

    .line 104
    invoke-static {v2}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    .line 106
    :cond_55
    return-void
.end method


# virtual methods
.method public a()Lokio/Timeout;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lokio/DeflaterSink;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->a()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public a_(Lokio/Buffer;J)V
    .registers 12

    .prologue
    const-wide/16 v2, 0x0

    .line 60
    iget-wide v0, p1, Lokio/Buffer;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    .line 61
    :goto_8
    cmp-long v0, p2, v2

    if-lez v0, :cond_43

    .line 63
    iget-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    .line 64
    iget v1, v0, Lokio/Segment;->c:I

    iget v4, v0, Lokio/Segment;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 65
    iget-object v4, p0, Lokio/DeflaterSink;->b:Ljava/util/zip/Deflater;

    iget-object v5, v0, Lokio/Segment;->a:[B

    iget v6, v0, Lokio/Segment;->b:I

    invoke-virtual {v4, v5, v6, v1}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 68
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lokio/DeflaterSink;->a(Z)V

    .line 71
    iget-wide v4, p1, Lokio/Buffer;->b:J

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lokio/Buffer;->b:J

    .line 72
    iget v4, v0, Lokio/Segment;->b:I

    add-int/2addr v4, v1

    iput v4, v0, Lokio/Segment;->b:I

    .line 73
    iget v4, v0, Lokio/Segment;->b:I

    iget v5, v0, Lokio/Segment;->c:I

    if-ne v4, v5, :cond_40

    .line 74
    invoke-virtual {v0}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v4

    iput-object v4, p1, Lokio/Buffer;->a:Lokio/Segment;

    .line 75
    invoke-static {v0}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    .line 78
    :cond_40
    int-to-long v0, v1

    sub-long/2addr p2, v0

    .line 79
    goto :goto_8

    .line 80
    :cond_43
    return-void
.end method

.method b()V
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lokio/DeflaterSink;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokio/DeflaterSink;->a(Z)V

    .line 119
    return-void
.end method

.method public close()V
    .registers 3

    .prologue
    .line 122
    iget-boolean v0, p0, Lokio/DeflaterSink;->c:Z

    if-eqz v0, :cond_5

    .line 147
    :cond_4
    :goto_4
    return-void

    .line 126
    :cond_5
    const/4 v1, 0x0

    .line 128
    :try_start_6
    invoke-virtual {p0}, Lokio/DeflaterSink;->b()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_27

    .line 134
    :goto_9
    :try_start_9
    iget-object v0, p0, Lokio/DeflaterSink;->b:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_e} :catch_1d

    move-object v0, v1

    .line 140
    :cond_f
    :goto_f
    :try_start_f
    iget-object v1, p0, Lokio/DeflaterSink;->a:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_14} :catch_22

    .line 144
    :cond_14
    :goto_14
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokio/DeflaterSink;->c:Z

    .line 146
    if-eqz v0, :cond_4

    invoke-static {v0}, Lokio/Util;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 135
    :catch_1d
    move-exception v0

    .line 136
    if-eqz v1, :cond_f

    move-object v0, v1

    goto :goto_f

    .line 141
    :catch_22
    move-exception v1

    .line 142
    if-nez v0, :cond_14

    move-object v0, v1

    goto :goto_14

    .line 129
    :catch_27
    move-exception v1

    goto :goto_9
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lokio/DeflaterSink;->a(Z)V

    .line 113
    iget-object v0, p0, Lokio/DeflaterSink;->a:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DeflaterSink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokio/DeflaterSink;->a:Lokio/BufferedSink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
