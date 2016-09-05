.class final Lokhttp3/internal/framed/Http2$FrameLogger;
.super Ljava/lang/Object;
.source "Http2.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/16 v7, 0x8

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 704
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "DATA"

    aput-object v2, v0, v1

    const-string/jumbo v2, "HEADERS"

    aput-object v2, v0, v6

    const/4 v2, 0x2

    const-string/jumbo v3, "PRIORITY"

    aput-object v3, v0, v2

    const-string/jumbo v2, "RST_STREAM"

    aput-object v2, v0, v9

    const-string/jumbo v2, "SETTINGS"

    aput-object v2, v0, v10

    const/4 v2, 0x5

    const-string/jumbo v3, "PUSH_PROMISE"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "PING"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "GOAWAY"

    aput-object v3, v0, v2

    const-string/jumbo v2, "WINDOW_UPDATE"

    aput-object v2, v0, v7

    const/16 v2, 0x9

    const-string/jumbo v3, "CONTINUATION"

    aput-object v3, v0, v2

    sput-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->a:[Ljava/lang/String;

    .line 721
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    .line 722
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->c:[Ljava/lang/String;

    move v0, v1

    .line 725
    :goto_51
    sget-object v2, Lokhttp3/internal/framed/Http2$FrameLogger;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_74

    .line 726
    sget-object v2, Lokhttp3/internal/framed/Http2$FrameLogger;->c:[Ljava/lang/String;

    const-string/jumbo v3, "%8s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lokhttp3/internal/Util;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/16 v5, 0x30

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 725
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 729
    :cond_74
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    .line 730
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    const-string/jumbo v2, "END_STREAM"

    aput-object v2, v0, v6

    .line 732
    new-array v3, v6, [I

    aput v6, v3, v1

    .line 734
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    const-string/jumbo v2, "PADDED"

    aput-object v2, v0, v7

    .line 735
    array-length v2, v3

    move v0, v1

    :goto_8f
    if-ge v0, v2, :cond_b4

    aget v4, v3, v0

    .line 736
    sget-object v5, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    or-int/lit8 v6, v4, 0x8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    aget-object v4, v8, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "|PADDED"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 739
    :cond_b4
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    const-string/jumbo v2, "END_HEADERS"

    aput-object v2, v0, v10

    .line 740
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    const/16 v2, 0x20

    const-string/jumbo v4, "PRIORITY"

    aput-object v4, v0, v2

    .line 741
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    const/16 v2, 0x24

    const-string/jumbo v4, "END_HEADERS|PRIORITY"

    aput-object v4, v0, v2

    .line 742
    new-array v4, v9, [I

    fill-array-data v4, :array_150

    .line 745
    array-length v5, v4

    move v2, v1

    :goto_d4
    if-ge v2, v5, :cond_138

    aget v6, v4, v2

    .line 746
    array-length v7, v3

    move v0, v1

    :goto_da
    if-ge v0, v7, :cond_134

    aget v8, v3, v0

    .line 747
    sget-object v9, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    or-int v10, v8, v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    aget-object v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x7c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    aget-object v12, v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 748
    sget-object v9, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    or-int v10, v8, v6

    or-int/lit8 v10, v10, 0x8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    aget-object v8, v12, v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v11, 0x7c

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "|PADDED"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v10

    .line 746
    add-int/lit8 v0, v0, 0x1

    goto :goto_da

    .line 745
    :cond_134
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d4

    .line 753
    :cond_138
    :goto_138
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_14e

    .line 754
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-nez v0, :cond_14b

    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    sget-object v2, Lokhttp3/internal/framed/Http2$FrameLogger;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    .line 753
    :cond_14b
    add-int/lit8 v1, v1, 0x1

    goto :goto_138

    .line 756
    :cond_14e
    return-void

    .line 742
    nop

    :array_150
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(BB)Ljava/lang/String;
    .registers 5

    .prologue
    .line 682
    if-nez p1, :cond_6

    const-string/jumbo v0, ""

    .line 700
    :cond_5
    :goto_5
    return-object v0

    .line 683
    :cond_6
    packed-switch p0, :pswitch_data_4c

    .line 693
    :pswitch_9
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_35

    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 695
    :goto_12
    const/4 v1, 0x5

    if-ne p0, v1, :cond_3a

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3a

    .line 696
    const-string/jumbo v1, "HEADERS"

    const-string/jumbo v2, "PUSH_PROMISE"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 686
    :pswitch_24
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2b

    const-string/jumbo v0, "ACK"

    goto :goto_5

    :cond_2b
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_5

    .line 691
    :pswitch_30
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_5

    .line 693
    :cond_35
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_12

    .line 697
    :cond_3a
    if-nez p0, :cond_5

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    .line 698
    const-string/jumbo v1, "PRIORITY"

    const-string/jumbo v2, "COMPRESSED"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 683
    nop

    :pswitch_data_4c
    .packed-switch 0x2
        :pswitch_30
        :pswitch_30
        :pswitch_24
        :pswitch_9
        :pswitch_24
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method

.method static a(ZIIBB)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 670
    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge p3, v0, :cond_34

    sget-object v0, Lokhttp3/internal/framed/Http2$FrameLogger;->a:[Ljava/lang/String;

    aget-object v0, v0, p3

    .line 671
    :goto_b
    invoke-static {p3, p4}, Lokhttp3/internal/framed/Http2$FrameLogger;->a(BB)Ljava/lang/String;

    move-result-object v2

    .line 672
    const-string/jumbo v3, "%s 0x%08x %5d %-13s %s"

    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/Object;

    if-eqz p0, :cond_44

    const-string/jumbo v1, "<<"

    :goto_1a
    aput-object v1, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const/4 v0, 0x4

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lokhttp3/internal/Util;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 670
    :cond_34
    const-string/jumbo v0, "0x%02x"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 672
    :cond_44
    const-string/jumbo v1, ">>"

    goto :goto_1a
.end method
