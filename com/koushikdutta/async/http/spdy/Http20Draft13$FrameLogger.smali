.class final Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;
.super Ljava/lang/Object;
.source "Http20Draft13.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x3

    const/4 v1, 0x0

    .line 708
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "DATA"

    aput-object v2, v0, v1

    const-string/jumbo v2, "HEADERS"

    aput-object v2, v0, v6

    const-string/jumbo v2, "PRIORITY"

    aput-object v2, v0, v7

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

    const/16 v2, 0x8

    const-string/jumbo v3, "WINDOW_UPDATE"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "CONTINUATION"

    aput-object v3, v0, v2

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->a:[Ljava/lang/String;

    .line 725
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    .line 726
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->c:[Ljava/lang/String;

    move v0, v1

    .line 729
    :goto_51
    sget-object v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->c:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_74

    .line 730
    sget-object v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->c:[Ljava/lang/String;

    const-string/jumbo v3, "%8s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/16 v5, 0x30

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 729
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 733
    :cond_74
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, v0, v1

    .line 734
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    const-string/jumbo v2, "END_STREAM"

    aput-object v2, v0, v6

    .line 735
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    const-string/jumbo v2, "END_SEGMENT"

    aput-object v2, v0, v7

    .line 736
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    const-string/jumbo v2, "END_STREAM|END_SEGMENT"

    aput-object v2, v0, v9

    .line 737
    new-array v3, v9, [I

    fill-array-data v3, :array_160

    .line 740
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    const/16 v2, 0x8

    const-string/jumbo v4, "PADDED"

    aput-object v4, v0, v2

    .line 741
    array-length v2, v3

    move v0, v1

    :goto_a0
    if-ge v0, v2, :cond_c5

    aget v4, v3, v0

    .line 742
    sget-object v5, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    or-int/lit8 v6, v4, 0x8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    aget-object v4, v8, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "|PADDED"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_a0

    .line 745
    :cond_c5
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    const-string/jumbo v2, "END_HEADERS"

    aput-object v2, v0, v10

    .line 746
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    const/16 v2, 0x20

    const-string/jumbo v4, "PRIORITY"

    aput-object v4, v0, v2

    .line 747
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    const/16 v2, 0x24

    const-string/jumbo v4, "END_HEADERS|PRIORITY"

    aput-object v4, v0, v2

    .line 748
    new-array v4, v9, [I

    fill-array-data v4, :array_16a

    .line 751
    array-length v5, v4

    move v2, v1

    :goto_e5
    if-ge v2, v5, :cond_149

    aget v6, v4, v2

    .line 752
    array-length v7, v3

    move v0, v1

    :goto_eb
    if-ge v0, v7, :cond_145

    aget v8, v3, v0

    .line 753
    sget-object v9, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    or-int v10, v8, v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    aget-object v12, v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x7c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    aget-object v12, v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 754
    sget-object v9, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    or-int v10, v8, v6

    or-int/lit8 v10, v10, 0x8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    aget-object v8, v12, v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v11, 0x7c

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v11, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "|PADDED"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v10

    .line 752
    add-int/lit8 v0, v0, 0x1

    goto :goto_eb

    .line 751
    :cond_145
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e5

    .line 759
    :cond_149
    :goto_149
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_15f

    .line 760
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-nez v0, :cond_15c

    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    sget-object v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    aput-object v2, v0, v1

    .line 759
    :cond_15c
    add-int/lit8 v1, v1, 0x1

    goto :goto_149

    .line 762
    :cond_15f
    return-void

    .line 737
    :array_160
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data

    .line 748
    :array_16a
    .array-data 4
        0x4
        0x20
        0x24
    .end array-data
.end method

.method static a(BB)Ljava/lang/String;
    .registers 5

    .prologue
    .line 684
    if-nez p1, :cond_6

    const-string/jumbo v0, ""

    .line 702
    :cond_5
    :goto_5
    return-object v0

    .line 685
    :cond_6
    packed-switch p0, :pswitch_data_4c

    .line 695
    :pswitch_9
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_35

    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 697
    :goto_12
    const/4 v1, 0x5

    if-ne p0, v1, :cond_3a

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3a

    .line 698
    const-string/jumbo v1, "HEADERS"

    const-string/jumbo v2, "PUSH_PROMISE"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 688
    :pswitch_24
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2b

    const-string/jumbo v0, "ACK"

    goto :goto_5

    :cond_2b
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_5

    .line 693
    :pswitch_30
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_5

    .line 695
    :cond_35
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_12

    .line 699
    :cond_3a
    if-nez p0, :cond_5

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    .line 700
    const-string/jumbo v1, "PRIORITY"

    const-string/jumbo v2, "COMPRESSED"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 685
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

    .line 672
    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge p3, v0, :cond_34

    sget-object v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->a:[Ljava/lang/String;

    aget-object v0, v0, p3

    .line 673
    :goto_b
    invoke-static {p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->a(BB)Ljava/lang/String;

    move-result-object v2

    .line 674
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

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 672
    :cond_34
    const-string/jumbo v0, "0x%02x"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 674
    :cond_44
    const-string/jumbo v1, ">>"

    goto :goto_1a
.end method
