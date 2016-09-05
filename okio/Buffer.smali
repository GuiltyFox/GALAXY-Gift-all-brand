.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokio/BufferedSink;
.implements Lokio/BufferedSource;


# static fields
.field private static final c:[B


# instance fields
.field a:Lokio/Segment;

.field b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lokio/Buffer;->c:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public a([BII)I
    .registers 10

    .prologue
    .line 775
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    .line 777
    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 778
    if-nez v1, :cond_d

    const/4 v0, -0x1

    .line 790
    :cond_c
    :goto_c
    return v0

    .line 779
    :cond_d
    iget v0, v1, Lokio/Segment;->c:I

    iget v2, v1, Lokio/Segment;->b:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 780
    iget-object v2, v1, Lokio/Segment;->a:[B

    iget v3, v1, Lokio/Segment;->b:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    iget v2, v1, Lokio/Segment;->b:I

    add-int/2addr v2, v0

    iput v2, v1, Lokio/Segment;->b:I

    .line 783
    iget-wide v2, p0, Lokio/Buffer;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->b:J

    .line 785
    iget v2, v1, Lokio/Segment;->b:I

    iget v3, v1, Lokio/Segment;->c:I

    if-ne v2, v3, :cond_c

    .line 786
    invoke-virtual {v1}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 787
    invoke-static {v1}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    goto :goto_c
.end method

.method public a(B)J
    .registers 4

    .prologue
    .line 1263
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJ)J
    .registers 14

    .prologue
    const-wide/16 v0, 0x0

    const-wide/16 v6, -0x1

    .line 1271
    cmp-long v2, p2, v0

    if-gez v2, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1279
    :cond_11
    iget-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 1280
    if-nez v2, :cond_17

    move-wide v0, v6

    .line 1315
    :goto_16
    return-wide v0

    .line 1283
    :cond_17
    iget-wide v4, p0, Lokio/Buffer;->b:J

    sub-long/2addr v4, p2

    cmp-long v3, v4, p2

    if-gez v3, :cond_2f

    .line 1285
    iget-wide v0, p0, Lokio/Buffer;->b:J

    move-object v4, v2

    .line 1286
    :goto_21
    cmp-long v2, v0, p2

    if-lez v2, :cond_4a

    .line 1287
    iget-object v4, v4, Lokio/Segment;->g:Lokio/Segment;

    .line 1288
    iget v2, v4, Lokio/Segment;->c:I

    iget v3, v4, Lokio/Segment;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_21

    :cond_2f
    move-object v4, v2

    .line 1293
    :goto_30
    iget v2, v4, Lokio/Segment;->c:I

    iget v3, v4, Lokio/Segment;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    cmp-long v5, v2, p2

    if-gez v5, :cond_4a

    .line 1294
    iget-object v0, v4, Lokio/Segment;->f:Lokio/Segment;

    move-object v4, v0

    move-wide v0, v2

    .line 1295
    goto :goto_30

    .line 1310
    :cond_40
    iget v2, v4, Lokio/Segment;->c:I

    iget v3, v4, Lokio/Segment;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1312
    iget-object v4, v4, Lokio/Segment;->f:Lokio/Segment;

    move-wide p2, v0

    .line 1301
    :cond_4a
    iget-wide v2, p0, Lokio/Buffer;->b:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_69

    .line 1302
    iget-object v3, v4, Lokio/Segment;->a:[B

    .line 1303
    iget v2, v4, Lokio/Segment;->b:I

    int-to-long v8, v2

    add-long/2addr v8, p2

    sub-long/2addr v8, v0

    long-to-int v2, v8

    iget v5, v4, Lokio/Segment;->c:I

    :goto_5a
    if-ge v2, v5, :cond_40

    .line 1304
    aget-byte v8, v3, v2

    if-ne v8, p1, :cond_66

    .line 1305
    iget v3, v4, Lokio/Segment;->b:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_16

    .line 1303
    :cond_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    :cond_69
    move-wide v0, v6

    .line 1315
    goto :goto_16
.end method

.method public a(Lokio/Buffer;J)J
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 1254
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :cond_d
    cmp-long v0, p2, v2

    if-gez v0, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1256
    :cond_2b
    iget-wide v0, p0, Lokio/Buffer;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const-wide/16 p2, -0x1

    .line 1259
    :goto_33
    return-wide p2

    .line 1257
    :cond_34
    iget-wide v0, p0, Lokio/Buffer;->b:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3c

    iget-wide p2, p0, Lokio/Buffer;->b:J

    .line 1258
    :cond_3c
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->a_(Lokio/Buffer;J)V

    goto :goto_33
.end method

.method public a(Lokio/Source;)J
    .registers 8

    .prologue
    .line 991
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_b
    const-wide/16 v0, 0x0

    .line 993
    :goto_d
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, Lokio/Source;->a(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1b

    .line 994
    add-long/2addr v0, v2

    goto :goto_d

    .line 996
    :cond_1b
    return-wide v0
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 11

    .prologue
    const-wide/16 v2, 0x0

    .line 606
    iget-wide v0, p0, Lokio/Buffer;->b:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    .line 607
    if-nez p3, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_13
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_34

    .line 609
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_34
    cmp-long v0, p1, v2

    if-nez v0, :cond_3c

    const-string/jumbo v0, ""

    .line 628
    :cond_3b
    :goto_3b
    return-object v0

    .line 613
    :cond_3c
    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 614
    iget v0, v1, Lokio/Segment;->b:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, Lokio/Segment;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_53

    .line 616
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->g(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_3b

    .line 619
    :cond_53
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lokio/Segment;->a:[B

    iget v3, v1, Lokio/Segment;->b:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 620
    iget v2, v1, Lokio/Segment;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, Lokio/Segment;->b:I

    .line 621
    iget-wide v2, p0, Lokio/Buffer;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lokio/Buffer;->b:J

    .line 623
    iget v2, v1, Lokio/Segment;->b:I

    iget v3, v1, Lokio/Segment;->c:I

    if-ne v2, v3, :cond_3b

    .line 624
    invoke-virtual {v1}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 625
    invoke-static {v1}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    goto :goto_3b
.end method

.method public a(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 599
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->b:J

    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 600
    :catch_7
    move-exception v0

    .line 601
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public a(I)Lokio/Buffer;
    .registers 5

    .prologue
    .line 910
    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    .line 912
    invoke-virtual {p0, p1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 942
    :goto_7
    return-object p0

    .line 914
    :cond_8
    const/16 v0, 0x800

    if-ge p1, v0, :cond_1b

    .line 916
    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 917
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    goto :goto_7

    .line 919
    :cond_1b
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_5f

    .line 920
    const v0, 0xd800

    if-lt p1, v0, :cond_47

    const v0, 0xdfff

    if-gt p1, v0, :cond_47

    .line 921
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 922
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 926
    :cond_47
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 927
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 928
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    goto :goto_7

    .line 930
    :cond_5f
    const v0, 0x10ffff

    if-gt p1, v0, :cond_85

    .line 932
    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 933
    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 934
    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 935
    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    goto :goto_7

    .line 938
    :cond_85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 939
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Lokio/Buffer;
    .registers 4

    .prologue
    .line 830
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->a(Ljava/lang/String;II)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;II)Lokio/Buffer;
    .registers 13

    .prologue
    const v8, 0xdfff

    const/16 v7, 0x80

    .line 834
    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 835
    :cond_10
    if-gez p2, :cond_2c

    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_2c
    if-ge p3, p2, :cond_53

    .line 837
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_96

    .line 840
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 841
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_82
    const/4 v0, 0x0

    .line 886
    :goto_83
    const v2, 0xdbff

    if-gt v1, v2, :cond_8f

    const v2, 0xdc00

    if-lt v0, v2, :cond_8f

    if-le v0, v8, :cond_11a

    .line 887
    :cond_8f
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 888
    add-int/lit8 p2, p2, 0x1

    .line 845
    :cond_96
    :goto_96
    if-ge p2, p3, :cond_14b

    .line 846
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 848
    if-ge v1, v7, :cond_d8

    .line 849
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->e(I)Lokio/Segment;

    move-result-object v2

    .line 850
    iget-object v3, v2, Lokio/Segment;->a:[B

    .line 851
    iget v0, v2, Lokio/Segment;->c:I

    sub-int v4, v0, p2

    .line 852
    rsub-int v0, v4, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 855
    add-int/lit8 v0, p2, 0x1

    add-int v6, v4, p2

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    .line 859
    :goto_b6
    if-ge v0, v5, :cond_be

    .line 860
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 861
    if-lt v6, v7, :cond_d0

    .line 865
    :cond_be
    add-int v1, v0, v4

    iget v3, v2, Lokio/Segment;->c:I

    sub-int/2addr v1, v3

    .line 866
    iget v3, v2, Lokio/Segment;->c:I

    add-int/2addr v3, v1

    iput v3, v2, Lokio/Segment;->c:I

    .line 867
    iget-wide v2, p0, Lokio/Buffer;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->b:J

    :goto_ce
    move p2, v0

    .line 904
    goto :goto_96

    .line 862
    :cond_d0
    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    goto :goto_b6

    .line 869
    :cond_d8
    const/16 v0, 0x800

    if-ge v1, v0, :cond_ed

    .line 871
    shr-int/lit8 v0, v1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 872
    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 873
    add-int/lit8 v0, p2, 0x1

    goto :goto_ce

    .line 875
    :cond_ed
    const v0, 0xd800

    if-lt v1, v0, :cond_f4

    if-le v1, v8, :cond_10e

    .line 877
    :cond_f4
    shr-int/lit8 v0, v1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 878
    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 879
    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 880
    add-int/lit8 v0, p2, 0x1

    goto :goto_ce

    .line 885
    :cond_10e
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_82

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_83

    .line 895
    :cond_11a
    const/high16 v2, 0x10000

    const v3, -0xd801

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0xa

    const v3, -0xdc01

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 898
    shr-int/lit8 v1, v0, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 899
    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 900
    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 901
    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    .line 902
    add-int/lit8 v0, p2, 0x2

    goto :goto_ce

    .line 906
    :cond_14b
    return-object p0
.end method

.method public a(Lokio/Buffer;JJ)Lokio/Buffer;
    .registers 14

    .prologue
    const-wide/16 v6, 0x0

    .line 167
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_d
    iget-wide v0, p0, Lokio/Buffer;->b:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    .line 169
    cmp-long v0, p4, v6

    if-nez v0, :cond_19

    .line 193
    :cond_18
    return-object p0

    .line 171
    :cond_19
    iget-wide v0, p1, Lokio/Buffer;->b:J

    add-long/2addr v0, p4

    iput-wide v0, p1, Lokio/Buffer;->b:J

    .line 174
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 175
    :goto_20
    iget v1, v0, Lokio/Segment;->c:I

    iget v2, v0, Lokio/Segment;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_34

    .line 176
    iget v1, v0, Lokio/Segment;->c:I

    iget v2, v0, Lokio/Segment;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    .line 175
    iget-object v0, v0, Lokio/Segment;->f:Lokio/Segment;

    goto :goto_20

    .line 180
    :cond_34
    :goto_34
    cmp-long v1, p4, v6

    if-lez v1, :cond_18

    .line 181
    new-instance v1, Lokio/Segment;

    invoke-direct {v1, v0}, Lokio/Segment;-><init>(Lokio/Segment;)V

    .line 182
    iget v2, v1, Lokio/Segment;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v1, Lokio/Segment;->b:I

    .line 183
    iget v2, v1, Lokio/Segment;->b:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, Lokio/Segment;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lokio/Segment;->c:I

    .line 184
    iget-object v2, p1, Lokio/Buffer;->a:Lokio/Segment;

    if-nez v2, :cond_66

    .line 185
    iput-object v1, v1, Lokio/Segment;->g:Lokio/Segment;

    iput-object v1, v1, Lokio/Segment;->f:Lokio/Segment;

    iput-object v1, p1, Lokio/Buffer;->a:Lokio/Segment;

    .line 189
    :goto_5a
    iget v2, v1, Lokio/Segment;->c:I

    iget v1, v1, Lokio/Segment;->b:I

    sub-int v1, v2, v1

    int-to-long v2, v1

    sub-long/2addr p4, v2

    .line 180
    iget-object v0, v0, Lokio/Segment;->f:Lokio/Segment;

    move-wide p2, v6

    goto :goto_34

    .line 187
    :cond_66
    iget-object v2, p1, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->g:Lokio/Segment;

    invoke-virtual {v2, v1}, Lokio/Segment;->a(Lokio/Segment;)Lokio/Segment;

    goto :goto_5a
.end method

.method public a(Lokio/ByteString;)Lokio/Buffer;
    .registers 4

    .prologue
    .line 824
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_b
    invoke-virtual {p1, p0}, Lokio/ByteString;->a(Lokio/Buffer;)V

    .line 826
    return-object p0
.end method

.method public a()Lokio/Timeout;
    .registers 2

    .prologue
    .line 1502
    sget-object v0, Lokio/Timeout;->b:Lokio/Timeout;

    return-object v0
.end method

.method public a(J)V
    .registers 6

    .prologue
    .line 102
    iget-wide v0, p0, Lokio/Buffer;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_c

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 103
    :cond_c
    return-void
.end method

.method public a([B)V
    .registers 5

    .prologue
    .line 766
    const/4 v0, 0x0

    .line 767
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 768
    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->a([BII)I

    move-result v1

    .line 769
    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 770
    :cond_13
    add-int/2addr v0, v1

    .line 771
    goto :goto_1

    .line 772
    :cond_15
    return-void
.end method

.method public a_(Lokio/Buffer;J)V
    .registers 12

    .prologue
    const-wide/16 v2, 0x0

    .line 1213
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1214
    :cond_d
    if-ne p1, p0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1215
    :cond_18
    iget-wide v0, p1, Lokio/Buffer;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    .line 1217
    :goto_1e
    cmp-long v0, p2, v2

    if-lez v0, :cond_60

    .line 1219
    iget-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->c:I

    iget-object v1, p1, Lokio/Buffer;->a:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_70

    .line 1220
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->g:Lokio/Segment;

    move-object v1, v0

    .line 1221
    :goto_39
    if-eqz v1, :cond_67

    iget-boolean v0, v1, Lokio/Segment;->e:Z

    if-eqz v0, :cond_67

    iget v0, v1, Lokio/Segment;->c:I

    int-to-long v4, v0

    add-long/2addr v4, p2

    iget-boolean v0, v1, Lokio/Segment;->d:Z

    if-eqz v0, :cond_64

    const/4 v0, 0x0

    :goto_48
    int-to-long v6, v0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2000

    cmp-long v0, v4, v6

    if-gtz v0, :cond_67

    .line 1224
    iget-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Lokio/Segment;->a(Lokio/Segment;I)V

    .line 1225
    iget-wide v0, p1, Lokio/Buffer;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, Lokio/Buffer;->b:J

    .line 1226
    iget-wide v0, p0, Lokio/Buffer;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lokio/Buffer;->b:J

    .line 1251
    :cond_60
    return-void

    .line 1220
    :cond_61
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_39

    .line 1221
    :cond_64
    iget v0, v1, Lokio/Segment;->b:I

    goto :goto_48

    .line 1231
    :cond_67
    iget-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lokio/Segment;->a(I)Lokio/Segment;

    move-result-object v0

    iput-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    .line 1236
    :cond_70
    iget-object v0, p1, Lokio/Buffer;->a:Lokio/Segment;

    .line 1237
    iget v1, v0, Lokio/Segment;->c:I

    iget v4, v0, Lokio/Segment;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    .line 1238
    invoke-virtual {v0}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v1

    iput-object v1, p1, Lokio/Buffer;->a:Lokio/Segment;

    .line 1239
    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    if-nez v1, :cond_9a

    .line 1240
    iput-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 1241
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v6, p0, Lokio/Buffer;->a:Lokio/Segment;

    iput-object v6, v1, Lokio/Segment;->g:Lokio/Segment;

    iput-object v6, v0, Lokio/Segment;->f:Lokio/Segment;

    .line 1247
    :goto_8e
    iget-wide v0, p1, Lokio/Buffer;->b:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lokio/Buffer;->b:J

    .line 1248
    iget-wide v0, p0, Lokio/Buffer;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lokio/Buffer;->b:J

    .line 1249
    sub-long/2addr p2, v4

    .line 1250
    goto :goto_1e

    .line 1243
    :cond_9a
    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v1, v1, Lokio/Segment;->g:Lokio/Segment;

    .line 1244
    invoke-virtual {v1, v0}, Lokio/Segment;->a(Lokio/Segment;)Lokio/Segment;

    move-result-object v0

    .line 1245
    invoke-virtual {v0}, Lokio/Segment;->b()V

    goto :goto_8e
.end method

.method public b()J
    .registers 3

    .prologue
    .line 60
    iget-wide v0, p0, Lokio/Buffer;->b:J

    return-wide v0
.end method

.method public b(I)Lokio/Buffer;
    .registers 6

    .prologue
    .line 1009
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lokio/Buffer;->e(I)Lokio/Segment;

    move-result-object v0

    .line 1010
    iget-object v1, v0, Lokio/Segment;->a:[B

    iget v2, v0, Lokio/Segment;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lokio/Segment;->c:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    .line 1011
    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->b:J

    .line 1012
    return-object p0
.end method

.method public b([B)Lokio/Buffer;
    .registers 4

    .prologue
    .line 967
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 968
    :cond_b
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->b([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public b([BII)Lokio/Buffer;
    .registers 10

    .prologue
    .line 972
    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_b
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    .line 975
    add-int v0, p2, p3

    .line 976
    :goto_14
    if-ge p2, v0, :cond_33

    .line 977
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lokio/Buffer;->e(I)Lokio/Segment;

    move-result-object v1

    .line 979
    sub-int v2, v0, p2

    iget v3, v1, Lokio/Segment;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 980
    iget-object v3, v1, Lokio/Segment;->a:[B

    iget v4, v1, Lokio/Segment;->c:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 982
    add-int/2addr p2, v2

    .line 983
    iget v3, v1, Lokio/Segment;->c:I

    add-int/2addr v2, v3

    iput v2, v1, Lokio/Segment;->c:I

    goto :goto_14

    .line 986
    :cond_33
    iget-wide v0, p0, Lokio/Buffer;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->b:J

    .line 987
    return-object p0
.end method

.method public synthetic b(Ljava/lang/String;)Lokio/BufferedSink;
    .registers 3

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lokio/Buffer;->a(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lokio/ByteString;)Lokio/BufferedSink;
    .registers 3

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lokio/Buffer;->a(Lokio/ByteString;)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Z
    .registers 6

    .prologue
    .line 106
    iget-wide v0, p0, Lokio/Buffer;->b:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c(J)B
    .registers 10

    .prologue
    .line 295
    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    .line 296
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 297
    :goto_a
    iget v1, v0, Lokio/Segment;->c:I

    iget v2, v0, Lokio/Segment;->b:I

    sub-int/2addr v1, v2

    .line 298
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_1d

    iget-object v1, v0, Lokio/Segment;->a:[B

    iget v0, v0, Lokio/Segment;->b:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    .line 299
    :cond_1d
    int-to-long v2, v1

    sub-long/2addr p1, v2

    .line 296
    iget-object v0, v0, Lokio/Segment;->f:Lokio/Segment;

    goto :goto_a
.end method

.method public c()Lokio/Buffer;
    .registers 1

    .prologue
    .line 64
    return-object p0
.end method

.method public c(I)Lokio/Buffer;
    .registers 7

    .prologue
    .line 1016
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lokio/Buffer;->e(I)Lokio/Segment;

    move-result-object v0

    .line 1017
    iget-object v1, v0, Lokio/Segment;->a:[B

    .line 1018
    iget v2, v0, Lokio/Segment;->c:I

    .line 1019
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1020
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1021
    iput v2, v0, Lokio/Segment;->c:I

    .line 1022
    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->b:J

    .line 1023
    return-object p0
.end method

.method public synthetic c([B)Lokio/BufferedSink;
    .registers 3

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lokio/Buffer;->b([B)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c([BII)Lokio/BufferedSink;
    .registers 5

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->b([BII)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lokio/Buffer;->t()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 1499
    return-void
.end method

.method public d()Lokio/Buffer;
    .registers 1

    .prologue
    .line 90
    return-object p0
.end method

.method public d(I)Lokio/Buffer;
    .registers 7

    .prologue
    .line 1031
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lokio/Buffer;->e(I)Lokio/Segment;

    move-result-object v0

    .line 1032
    iget-object v1, v0, Lokio/Segment;->a:[B

    .line 1033
    iget v2, v0, Lokio/Segment;->c:I

    .line 1034
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1035
    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1036
    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 1037
    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1038
    iput v2, v0, Lokio/Segment;->c:I

    .line 1039
    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->b:J

    .line 1040
    return-object p0
.end method

.method public d(J)Lokio/ByteString;
    .registers 6

    .prologue
    .line 529
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->g(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public e(J)Ljava/lang/String;
    .registers 4

    .prologue
    .line 594
    sget-object v0, Lokio/Util;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lokio/BufferedSink;
    .registers 1

    .prologue
    .line 94
    return-object p0
.end method

.method e(I)Lokio/Segment;
    .registers 5

    .prologue
    const/16 v2, 0x2000

    .line 1148
    const/4 v0, 0x1

    if-lt p1, v0, :cond_7

    if-le p1, v2, :cond_d

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1150
    :cond_d
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    if-nez v0, :cond_22

    .line 1151
    invoke-static {}, Lokio/SegmentPool;->a()Lokio/Segment;

    move-result-object v0

    iput-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 1152
    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iput-object v0, v2, Lokio/Segment;->g:Lokio/Segment;

    iput-object v0, v1, Lokio/Segment;->f:Lokio/Segment;

    .line 1159
    :cond_21
    :goto_21
    return-object v0

    .line 1155
    :cond_22
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->g:Lokio/Segment;

    .line 1156
    iget v1, v0, Lokio/Segment;->c:I

    add-int/2addr v1, p1

    if-gt v1, v2, :cond_2f

    iget-boolean v1, v0, Lokio/Segment;->e:Z

    if-nez v1, :cond_21

    .line 1157
    :cond_2f
    invoke-static {}, Lokio/SegmentPool;->a()Lokio/Segment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokio/Segment;->a(Lokio/Segment;)Lokio/Segment;

    move-result-object v0

    goto :goto_21
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 16

    .prologue
    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1545
    if-ne p0, p1, :cond_8

    move v0, v6

    .line 1574
    :goto_7
    return v0

    .line 1546
    :cond_8
    instance-of v2, p1, Lokio/Buffer;

    if-nez v2, :cond_e

    move v0, v7

    goto :goto_7

    .line 1547
    :cond_e
    check-cast p1, Lokio/Buffer;

    .line 1548
    iget-wide v2, p0, Lokio/Buffer;->b:J

    iget-wide v4, p1, Lokio/Buffer;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1a

    move v0, v7

    goto :goto_7

    .line 1549
    :cond_1a
    iget-wide v2, p0, Lokio/Buffer;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_22

    move v0, v6

    goto :goto_7

    .line 1551
    :cond_22
    iget-object v5, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 1552
    iget-object v4, p1, Lokio/Buffer;->a:Lokio/Segment;

    .line 1553
    iget v3, v5, Lokio/Segment;->b:I

    .line 1554
    iget v2, v4, Lokio/Segment;->b:I

    .line 1556
    :goto_2a
    iget-wide v8, p0, Lokio/Buffer;->b:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_69

    .line 1557
    iget v8, v5, Lokio/Segment;->c:I

    sub-int/2addr v8, v3

    iget v9, v4, Lokio/Segment;->c:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v10, v8

    move v8, v7

    .line 1559
    :goto_3c
    int-to-long v12, v8

    cmp-long v9, v12, v10

    if-gez v9, :cond_57

    .line 1560
    iget-object v12, v5, Lokio/Segment;->a:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v12, v12, v3

    iget-object v13, v4, Lokio/Segment;->a:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v13, v2

    if-eq v12, v2, :cond_51

    move v0, v7

    goto :goto_7

    .line 1559
    :cond_51
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v3

    move v3, v9

    goto :goto_3c

    .line 1563
    :cond_57
    iget v8, v5, Lokio/Segment;->c:I

    if-ne v3, v8, :cond_5f

    .line 1564
    iget-object v5, v5, Lokio/Segment;->f:Lokio/Segment;

    .line 1565
    iget v3, v5, Lokio/Segment;->b:I

    .line 1568
    :cond_5f
    iget v8, v4, Lokio/Segment;->c:I

    if-ne v2, v8, :cond_67

    .line 1569
    iget-object v4, v4, Lokio/Segment;->f:Lokio/Segment;

    .line 1570
    iget v2, v4, Lokio/Segment;->b:I

    .line 1556
    :cond_67
    add-long/2addr v0, v10

    goto :goto_2a

    :cond_69
    move v0, v6

    .line 1574
    goto :goto_7
.end method

.method f(J)Ljava/lang/String;
    .registers 8

    .prologue
    const-wide/16 v2, 0x1

    .line 653
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1e

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->c(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1e

    .line 655
    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->e(J)Ljava/lang/String;

    move-result-object v0

    .line 656
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->h(J)V

    .line 663
    :goto_1d
    return-object v0

    .line 661
    :cond_1e
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->e(J)Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->h(J)V

    goto :goto_1d
.end method

.method public f(I)Lokio/ByteString;
    .registers 3

    .prologue
    .line 1624
    if-nez p1, :cond_5

    sget-object v0, Lokio/ByteString;->b:Lokio/ByteString;

    .line 1625
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Lokio/SegmentedByteString;

    invoke-direct {v0, p0, p1}, Lokio/SegmentedByteString;-><init>(Lokio/Buffer;I)V

    goto :goto_4
.end method

.method public f()Z
    .registers 5

    .prologue
    .line 98
    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 1496
    return-void
.end method

.method public g()J
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 260
    iget-wide v0, p0, Lokio/Buffer;->b:J

    .line 261
    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    move-wide v0, v2

    .line 269
    :cond_9
    :goto_9
    return-wide v0

    .line 264
    :cond_a
    iget-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->g:Lokio/Segment;

    .line 265
    iget v3, v2, Lokio/Segment;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_9

    iget-boolean v3, v2, Lokio/Segment;->e:Z

    if-eqz v3, :cond_9

    .line 266
    iget v3, v2, Lokio/Segment;->c:I

    iget v2, v2, Lokio/Segment;->b:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_9
.end method

.method public synthetic g(I)Lokio/BufferedSink;
    .registers 3

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lokio/Buffer;->d(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public g(J)[B
    .registers 10

    .prologue
    .line 751
    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lokio/Util;->a(JJJ)V

    .line 752
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_29

    .line 753
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :cond_29
    long-to-int v0, p1

    new-array v0, v0, [B

    .line 757
    invoke-virtual {p0, v0}, Lokio/Buffer;->a([B)V

    .line 758
    return-object v0
.end method

.method public h()B
    .registers 11

    .prologue
    .line 273
    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_11
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 276
    iget v1, v0, Lokio/Segment;->b:I

    .line 277
    iget v2, v0, Lokio/Segment;->c:I

    .line 279
    iget-object v3, v0, Lokio/Segment;->a:[B

    .line 280
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    .line 281
    iget-wide v6, p0, Lokio/Buffer;->b:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->b:J

    .line 283
    if-ne v4, v2, :cond_30

    .line 284
    invoke-virtual {v0}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 285
    invoke-static {v0}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    .line 290
    :goto_2f
    return v1

    .line 287
    :cond_30
    iput v4, v0, Lokio/Segment;->b:I

    goto :goto_2f
.end method

.method public synthetic h(I)Lokio/BufferedSink;
    .registers 3

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lokio/Buffer;->c(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public h(J)V
    .registers 10

    .prologue
    .line 807
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_44

    .line 808
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    if-nez v0, :cond_10

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 810
    :cond_10
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->c:I

    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 811
    iget-wide v2, p0, Lokio/Buffer;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->b:J

    .line 812
    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 813
    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget v2, v1, Lokio/Segment;->b:I

    add-int/2addr v0, v2

    iput v0, v1, Lokio/Segment;->b:I

    .line 815
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget v0, v0, Lokio/Segment;->b:I

    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget v1, v1, Lokio/Segment;->c:I

    if-ne v0, v1, :cond_0

    .line 816
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 817
    invoke-virtual {v0}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v1

    iput-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 818
    invoke-static {v0}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    goto :goto_0

    .line 821
    :cond_44
    return-void
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 1578
    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 1579
    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 1587
    :goto_5
    return v0

    .line 1580
    :cond_6
    const/4 v0, 0x1

    .line 1582
    :cond_7
    iget v2, v1, Lokio/Segment;->b:I

    iget v4, v1, Lokio/Segment;->c:I

    :goto_b
    if-ge v2, v4, :cond_19

    .line 1583
    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, Lokio/Segment;->a:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    .line 1582
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_b

    .line 1585
    :cond_19
    iget-object v1, v1, Lokio/Segment;->f:Lokio/Segment;

    .line 1586
    iget-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    if-ne v1, v2, :cond_7

    goto :goto_5
.end method

.method public i(J)Lokio/Buffer;
    .registers 14

    .prologue
    .line 1069
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 1071
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    move-result-object p0

    .line 1121
    :goto_c
    return-object p0

    .line 1074
    :cond_d
    const/4 v0, 0x0

    .line 1075
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_122

    .line 1076
    neg-long v2, p1

    .line 1077
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_23

    .line 1078
    const-string/jumbo v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, Lokio/Buffer;->a(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p0

    goto :goto_c

    .line 1080
    :cond_23
    const/4 v0, 0x1

    move v4, v0

    .line 1084
    :goto_25
    const-wide/32 v0, 0x5f5e100

    cmp-long v0, v2, v0

    if-gez v0, :cond_8d

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-gez v0, :cond_6f

    const-wide/16 v0, 0x64

    cmp-long v0, v2, v0

    if-gez v0, :cond_65

    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-gez v0, :cond_63

    const/4 v0, 0x1

    .line 1103
    :goto_3f
    if-eqz v4, :cond_43

    .line 1104
    add-int/lit8 v0, v0, 0x1

    .line 1107
    :cond_43
    invoke-virtual {p0, v0}, Lokio/Buffer;->e(I)Lokio/Segment;

    move-result-object v5

    .line 1108
    iget-object v6, v5, Lokio/Segment;->a:[B

    .line 1109
    iget v1, v5, Lokio/Segment;->c:I

    add-int/2addr v1, v0

    .line 1110
    :goto_4c
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_10d

    .line 1111
    const-wide/16 v8, 0xa

    rem-long v8, v2, v8

    long-to-int v7, v8

    .line 1112
    add-int/lit8 v1, v1, -0x1

    sget-object v8, Lokio/Buffer;->c:[B

    aget-byte v7, v8, v7

    aput-byte v7, v6, v1

    .line 1113
    const-wide/16 v8, 0xa

    div-long/2addr v2, v8

    goto :goto_4c

    .line 1084
    :cond_63
    const/4 v0, 0x2

    goto :goto_3f

    :cond_65
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_6d

    const/4 v0, 0x3

    goto :goto_3f

    :cond_6d
    const/4 v0, 0x4

    goto :goto_3f

    :cond_6f
    const-wide/32 v0, 0xf4240

    cmp-long v0, v2, v0

    if-gez v0, :cond_81

    const-wide/32 v0, 0x186a0

    cmp-long v0, v2, v0

    if-gez v0, :cond_7f

    const/4 v0, 0x5

    goto :goto_3f

    :cond_7f
    const/4 v0, 0x6

    goto :goto_3f

    :cond_81
    const-wide/32 v0, 0x989680

    cmp-long v0, v2, v0

    if-gez v0, :cond_8a

    const/4 v0, 0x7

    goto :goto_3f

    :cond_8a
    const/16 v0, 0x8

    goto :goto_3f

    :cond_8d
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_bb

    const-wide v0, 0x2540be400L

    cmp-long v0, v2, v0

    if-gez v0, :cond_ac

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v2, v0

    if-gez v0, :cond_a9

    const/16 v0, 0x9

    goto :goto_3f

    :cond_a9
    const/16 v0, 0xa

    goto :goto_3f

    :cond_ac
    const-wide v0, 0x174876e800L

    cmp-long v0, v2, v0

    if-gez v0, :cond_b8

    const/16 v0, 0xb

    goto :goto_3f

    :cond_b8
    const/16 v0, 0xc

    goto :goto_3f

    :cond_bb
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_e2

    const-wide v0, 0x9184e72a000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_d1

    const/16 v0, 0xd

    goto/16 :goto_3f

    :cond_d1
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_de

    const/16 v0, 0xe

    goto/16 :goto_3f

    :cond_de
    const/16 v0, 0xf

    goto/16 :goto_3f

    :cond_e2
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_fc

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_f8

    const/16 v0, 0x10

    goto/16 :goto_3f

    :cond_f8
    const/16 v0, 0x11

    goto/16 :goto_3f

    :cond_fc
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_109

    const/16 v0, 0x12

    goto/16 :goto_3f

    :cond_109
    const/16 v0, 0x13

    goto/16 :goto_3f

    .line 1115
    :cond_10d
    if-eqz v4, :cond_115

    .line 1116
    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    aput-byte v2, v6, v1

    .line 1119
    :cond_115
    iget v1, v5, Lokio/Segment;->c:I

    add-int/2addr v1, v0

    iput v1, v5, Lokio/Segment;->c:I

    .line 1120
    iget-wide v2, p0, Lokio/Buffer;->b:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->b:J

    goto/16 :goto_c

    :cond_122
    move v4, v0

    move-wide v2, p1

    goto/16 :goto_25
.end method

.method public synthetic i(I)Lokio/BufferedSink;
    .registers 3

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lokio/Buffer;->b(I)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public i()S
    .registers 11

    .prologue
    const-wide/16 v8, 0x2

    .line 304
    iget-wide v0, p0, Lokio/Buffer;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_24

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_24
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 307
    iget v1, v0, Lokio/Segment;->b:I

    .line 308
    iget v2, v0, Lokio/Segment;->c:I

    .line 311
    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_40

    .line 312
    invoke-virtual {p0}, Lokio/Buffer;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 313
    invoke-virtual {p0}, Lokio/Buffer;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 314
    int-to-short v0, v0

    .line 329
    :goto_3f
    return v0

    .line 317
    :cond_40
    iget-object v3, v0, Lokio/Segment;->a:[B

    .line 318
    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 320
    iget-wide v6, p0, Lokio/Buffer;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->b:J

    .line 322
    if-ne v5, v2, :cond_63

    .line 323
    invoke-virtual {v0}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 324
    invoke-static {v0}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    .line 329
    :goto_61
    int-to-short v0, v1

    goto :goto_3f

    .line 326
    :cond_63
    iput v5, v0, Lokio/Segment;->b:I

    goto :goto_61
.end method

.method public j()I
    .registers 11

    .prologue
    const-wide/16 v8, 0x4

    .line 333
    iget-wide v0, p0, Lokio/Buffer;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_24

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_24
    iget-object v1, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 336
    iget v0, v1, Lokio/Segment;->b:I

    .line 337
    iget v2, v1, Lokio/Segment;->c:I

    .line 340
    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_51

    .line 341
    invoke-virtual {p0}, Lokio/Buffer;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 342
    invoke-virtual {p0}, Lokio/Buffer;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 343
    invoke-virtual {p0}, Lokio/Buffer;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 344
    invoke-virtual {p0}, Lokio/Buffer;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 361
    :goto_50
    return v0

    .line 347
    :cond_51
    iget-object v3, v1, Lokio/Segment;->a:[B

    .line 348
    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 352
    iget-wide v6, p0, Lokio/Buffer;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lokio/Buffer;->b:J

    .line 354
    if-ne v5, v2, :cond_85

    .line 355
    invoke-virtual {v1}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v2

    iput-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    .line 356
    invoke-static {v1}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    goto :goto_50

    .line 358
    :cond_85
    iput v5, v1, Lokio/Segment;->b:I

    goto :goto_50
.end method

.method public j(J)Lokio/Buffer;
    .registers 12

    .prologue
    .line 1125
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_d

    .line 1127
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lokio/Buffer;->b(I)Lokio/Buffer;

    move-result-object p0

    .line 1140
    :goto_c
    return-object p0

    .line 1130
    :cond_d
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    .line 1132
    invoke-virtual {p0, v1}, Lokio/Buffer;->e(I)Lokio/Segment;

    move-result-object v2

    .line 1133
    iget-object v3, v2, Lokio/Segment;->a:[B

    .line 1134
    iget v0, v2, Lokio/Segment;->c:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, Lokio/Segment;->c:I

    :goto_26
    if-lt v0, v4, :cond_37

    .line 1135
    sget-object v5, Lokio/Buffer;->c:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    .line 1136
    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    .line 1134
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 1138
    :cond_37
    iget v0, v2, Lokio/Segment;->c:I

    add-int/2addr v0, v1

    iput v0, v2, Lokio/Segment;->c:I

    .line 1139
    iget-wide v2, p0, Lokio/Buffer;->b:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokio/Buffer;->b:J

    goto :goto_c
.end method

.method public synthetic k(J)Lokio/BufferedSink;
    .registers 4

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->j(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public k()S
    .registers 2

    .prologue
    .line 399
    invoke-virtual {p0}, Lokio/Buffer;->i()S

    move-result v0

    invoke-static {v0}, Lokio/Util;->a(S)S

    move-result v0

    return v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 403
    invoke-virtual {p0}, Lokio/Buffer;->j()I

    move-result v0

    invoke-static {v0}, Lokio/Util;->a(I)I

    move-result v0

    return v0
.end method

.method public synthetic l(J)Lokio/BufferedSink;
    .registers 4

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->i(J)Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public m()J
    .registers 19

    .prologue
    .line 469
    move-object/from16 v0, p0

    iget-wide v2, v0, Lokio/Buffer;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 471
    :cond_13
    const-wide/16 v4, 0x0

    .line 472
    const/4 v3, 0x0

    .line 473
    const/4 v2, 0x0

    .line 476
    :cond_17
    move-object/from16 v0, p0

    iget-object v10, v0, Lokio/Buffer;->a:Lokio/Segment;

    .line 478
    iget-object v11, v10, Lokio/Segment;->a:[B

    .line 479
    iget v6, v10, Lokio/Segment;->b:I

    .line 480
    iget v12, v10, Lokio/Segment;->c:I

    move v7, v6

    .line 482
    :goto_22
    if-ge v7, v12, :cond_9f

    .line 485
    aget-byte v8, v11, v7

    .line 486
    const/16 v6, 0x30

    if-lt v8, v6, :cond_64

    const/16 v6, 0x39

    if-gt v8, v6, :cond_64

    .line 487
    add-int/lit8 v6, v8, -0x30

    .line 503
    :goto_30
    const-wide/high16 v14, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v14, v4

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_c0

    .line 504
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-virtual {v2, v4, v5}, Lokio/Buffer;->j(J)Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v2, v8}, Lokio/Buffer;->b(I)Lokio/Buffer;

    move-result-object v2

    .line 505
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Number too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lokio/Buffer;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 488
    :cond_64
    const/16 v6, 0x61

    if-lt v8, v6, :cond_71

    const/16 v6, 0x66

    if-gt v8, v6, :cond_71

    .line 489
    add-int/lit8 v6, v8, -0x61

    add-int/lit8 v6, v6, 0xa

    goto :goto_30

    .line 490
    :cond_71
    const/16 v6, 0x41

    if-lt v8, v6, :cond_7e

    const/16 v6, 0x46

    if-gt v8, v6, :cond_7e

    .line 491
    add-int/lit8 v6, v8, -0x41

    add-int/lit8 v6, v6, 0xa

    goto :goto_30

    .line 493
    :cond_7e
    if-nez v3, :cond_9e

    .line 494
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 495
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 498
    :cond_9e
    const/4 v2, 0x1

    .line 512
    :cond_9f
    if-ne v7, v12, :cond_cc

    .line 513
    invoke-virtual {v10}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lokio/Buffer;->a:Lokio/Segment;

    .line 514
    invoke-static {v10}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    .line 518
    :goto_ac
    if-nez v2, :cond_b4

    move-object/from16 v0, p0

    iget-object v6, v0, Lokio/Buffer;->a:Lokio/Segment;

    if-nez v6, :cond_17

    .line 520
    :cond_b4
    move-object/from16 v0, p0

    iget-wide v6, v0, Lokio/Buffer;->b:J

    int-to-long v2, v3

    sub-long v2, v6, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lokio/Buffer;->b:J

    .line 521
    return-wide v4

    .line 508
    :cond_c0
    const/4 v8, 0x4

    shl-long/2addr v4, v8

    .line 509
    int-to-long v8, v6

    or-long/2addr v8, v4

    .line 482
    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move-wide v4, v8

    goto/16 :goto_22

    .line 516
    :cond_cc
    iput v7, v10, Lokio/Segment;->b:I

    goto :goto_ac
.end method

.method public n()Lokio/ByteString;
    .registers 3

    .prologue
    .line 525
    new-instance v0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/Buffer;->r()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 4

    .prologue
    .line 587
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->b:J

    sget-object v2, Lokio/Util;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    return-object v0

    .line 588
    :catch_9
    move-exception v0

    .line 589
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public p()Ljava/lang/String;
    .registers 9

    .prologue
    .line 642
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lokio/Buffer;->a(B)J

    move-result-wide v0

    .line 643
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_57

    .line 644
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 645
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-wide v6, p0, Lokio/Buffer;->b:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->a(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 646
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lokio/Buffer;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 647
    invoke-virtual {v1}, Lokio/Buffer;->n()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_57
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->f(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()I
    .registers 14

    .prologue
    const-wide/16 v8, 0x0

    const/16 v1, 0x80

    const/4 v3, 0x1

    const v5, 0xfffd

    .line 668
    iget-wide v6, p0, Lokio/Buffer;->b:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_14

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 670
    :cond_14
    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->c(J)B

    move-result v6

    .line 675
    and-int/lit16 v0, v6, 0x80

    if-nez v0, :cond_65

    .line 677
    and-int/lit8 v2, v6, 0x7f

    .line 679
    const/4 v0, 0x0

    move v4, v2

    move v2, v3

    .line 705
    :goto_21
    iget-wide v8, p0, Lokio/Buffer;->b:J

    int-to-long v10, v2

    cmp-long v7, v8, v10

    if-gez v7, :cond_91

    .line 706
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size < "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (to read code point prefixed 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 707
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 681
    :cond_65
    and-int/lit16 v0, v6, 0xe0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_72

    .line 683
    and-int/lit8 v2, v6, 0x1f

    .line 684
    const/4 v0, 0x2

    move v4, v2

    move v2, v0

    move v0, v1

    .line 685
    goto :goto_21

    .line 687
    :cond_72
    and-int/lit16 v0, v6, 0xf0

    const/16 v2, 0xe0

    if-ne v0, v2, :cond_7e

    .line 689
    and-int/lit8 v4, v6, 0xf

    .line 690
    const/4 v2, 0x3

    .line 691
    const/16 v0, 0x800

    goto :goto_21

    .line 693
    :cond_7e
    and-int/lit16 v0, v6, 0xf8

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_8a

    .line 695
    and-int/lit8 v4, v6, 0x7

    .line 696
    const/4 v2, 0x4

    .line 697
    const/high16 v0, 0x10000

    goto :goto_21

    .line 701
    :cond_8a
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->h(J)V

    move v0, v5

    .line 739
    :goto_90
    return v0

    :cond_91
    move v12, v3

    move v3, v4

    move v4, v12

    .line 713
    :goto_94
    if-ge v4, v2, :cond_af

    .line 714
    int-to-long v6, v4

    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->c(J)B

    move-result v6

    .line 715
    and-int/lit16 v7, v6, 0xc0

    if-ne v7, v1, :cond_a9

    .line 717
    shl-int/lit8 v3, v3, 0x6

    .line 718
    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, v3

    .line 713
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v6

    goto :goto_94

    .line 720
    :cond_a9
    int-to-long v0, v4

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->h(J)V

    move v0, v5

    .line 721
    goto :goto_90

    .line 725
    :cond_af
    int-to-long v6, v2

    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->h(J)V

    .line 727
    const v1, 0x10ffff

    if-le v3, v1, :cond_ba

    move v0, v5

    .line 728
    goto :goto_90

    .line 731
    :cond_ba
    const v1, 0xd800

    if-lt v3, v1, :cond_c6

    const v1, 0xdfff

    if-gt v3, v1, :cond_c6

    move v0, v5

    .line 732
    goto :goto_90

    .line 735
    :cond_c6
    if-ge v3, v0, :cond_ca

    move v0, v5

    .line 736
    goto :goto_90

    :cond_ca
    move v0, v3

    .line 739
    goto :goto_90
.end method

.method public r()[B
    .registers 3

    .prologue
    .line 744
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->b:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->g(J)[B
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 745
    :catch_7
    move-exception v0

    .line 746
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public s()V
    .registers 3

    .prologue
    .line 799
    :try_start_0
    iget-wide v0, p0, Lokio/Buffer;->b:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->h(J)V
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_5} :catch_6

    .line 803
    return-void

    .line 800
    :catch_6
    move-exception v0

    .line 801
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public t()Lokio/Buffer;
    .registers 7

    .prologue
    .line 1600
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 1601
    iget-wide v2, p0, Lokio/Buffer;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_f

    move-object v0, v1

    .line 1609
    :goto_e
    return-object v0

    .line 1603
    :cond_f
    new-instance v0, Lokio/Segment;

    iget-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    invoke-direct {v0, v2}, Lokio/Segment;-><init>(Lokio/Segment;)V

    iput-object v0, v1, Lokio/Buffer;->a:Lokio/Segment;

    .line 1604
    iget-object v0, v1, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v2, v1, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v3, v1, Lokio/Buffer;->a:Lokio/Segment;

    iput-object v3, v2, Lokio/Segment;->g:Lokio/Segment;

    iput-object v3, v0, Lokio/Segment;->f:Lokio/Segment;

    .line 1605
    iget-object v0, p0, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v0, v0, Lokio/Segment;->f:Lokio/Segment;

    :goto_26
    iget-object v2, p0, Lokio/Buffer;->a:Lokio/Segment;

    if-eq v0, v2, :cond_39

    .line 1606
    iget-object v2, v1, Lokio/Buffer;->a:Lokio/Segment;

    iget-object v2, v2, Lokio/Segment;->g:Lokio/Segment;

    new-instance v3, Lokio/Segment;

    invoke-direct {v3, v0}, Lokio/Segment;-><init>(Lokio/Segment;)V

    invoke-virtual {v2, v3}, Lokio/Segment;->a(Lokio/Segment;)Lokio/Segment;

    .line 1605
    iget-object v0, v0, Lokio/Segment;->f:Lokio/Segment;

    goto :goto_26

    .line 1608
    :cond_39
    iget-wide v2, p0, Lokio/Buffer;->b:J

    iput-wide v2, v1, Lokio/Buffer;->b:J

    move-object v0, v1

    .line 1609
    goto :goto_e
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1595
    invoke-virtual {p0}, Lokio/Buffer;->u()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lokio/ByteString;
    .registers 5

    .prologue
    .line 1614
    iget-wide v0, p0, Lokio/Buffer;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 1615
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lokio/Buffer;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1617
    :cond_25
    iget-wide v0, p0, Lokio/Buffer;->b:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lokio/Buffer;->f(I)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public synthetic v()Lokio/BufferedSink;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lokio/Buffer;->d()Lokio/Buffer;

    move-result-object v0

    return-object v0
.end method
