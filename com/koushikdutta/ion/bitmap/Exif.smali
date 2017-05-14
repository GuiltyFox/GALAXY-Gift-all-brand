.class public Lcom/koushikdutta/ion/bitmap/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# direct methods
.method public static a([BII)I
    .registers 13

    .prologue
    const/16 v9, 0x8

    const/4 v0, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_9

    .line 119
    :cond_8
    :goto_8
    :pswitch_8
    return v1

    .line 31
    :cond_9
    add-int v4, p1, p2

    move v3, p1

    .line 34
    :goto_c
    add-int/lit8 v2, v3, 0x3

    if-ge v2, v4, :cond_f1

    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v5, 0xff

    if-ne v3, v5, :cond_ea

    .line 35
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 38
    const/16 v5, 0xff

    if-ne v3, v5, :cond_24

    move v3, v2

    .line 39
    goto :goto_c

    .line 41
    :cond_24
    add-int/lit8 v2, v2, 0x1

    .line 44
    const/16 v5, 0xd8

    if-eq v3, v5, :cond_ee

    if-ne v3, v0, :cond_2e

    move v3, v2

    .line 45
    goto :goto_c

    .line 48
    :cond_2e
    const/16 v5, 0xd9

    if-eq v3, v5, :cond_ea

    const/16 v5, 0xda

    if-ne v3, v5, :cond_52

    move v3, v2

    move v2, v1

    .line 74
    :goto_38
    if-le v2, v9, :cond_8

    .line 76
    invoke-static {p0, v3, v8, v1}, Lcom/koushikdutta/ion/bitmap/Exif;->a([BIIZ)I

    move-result v4

    .line 77
    const v5, 0x49492a00    # 823968.0f

    if-eq v4, v5, :cond_87

    const v5, 0x4d4d002a    # 2.14958752E8f

    if-eq v4, v5, :cond_87

    .line 78
    const-string/jumbo v0, "CameraExif"

    const-string/jumbo v2, "Invalid byte order"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 53
    :cond_52
    invoke-static {p0, v2, v7, v1}, Lcom/koushikdutta/ion/bitmap/Exif;->a([BIIZ)I

    move-result v5

    .line 54
    if-lt v5, v7, :cond_5c

    add-int v6, v2, v5

    if-le v6, v4, :cond_66

    .line 55
    :cond_5c
    const-string/jumbo v0, "CameraExif"

    const-string/jumbo v2, "Invalid length"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 60
    :cond_66
    const/16 v6, 0xe1

    if-ne v3, v6, :cond_84

    if-lt v5, v9, :cond_84

    add-int/lit8 v3, v2, 0x2

    invoke-static {p0, v3, v8, v1}, Lcom/koushikdutta/ion/bitmap/Exif;->a([BIIZ)I

    move-result v3

    const v6, 0x45786966

    if-ne v3, v6, :cond_84

    add-int/lit8 v3, v2, 0x6

    invoke-static {p0, v3, v7, v1}, Lcom/koushikdutta/ion/bitmap/Exif;->a([BIIZ)I

    move-result v3

    if-nez v3, :cond_84

    .line 63
    add-int/lit8 v3, v2, 0x8

    .line 64
    add-int/lit8 v2, v5, -0x8

    .line 65
    goto :goto_38

    .line 69
    :cond_84
    add-int/2addr v2, v5

    move v3, v2

    .line 71
    goto :goto_c

    .line 81
    :cond_87
    const v5, 0x49492a00    # 823968.0f

    if-ne v4, v5, :cond_a5

    .line 84
    :goto_8c
    add-int/lit8 v4, v3, 0x4

    invoke-static {p0, v4, v8, v0}, Lcom/koushikdutta/ion/bitmap/Exif;->a([BIIZ)I

    move-result v4

    add-int/lit8 v5, v4, 0x2

    .line 85
    const/16 v4, 0xa

    if-lt v5, v4, :cond_9a

    if-le v5, v2, :cond_a7

    .line 86
    :cond_9a
    const-string/jumbo v0, "CameraExif"

    const-string/jumbo v2, "Invalid offset"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_a5
    move v0, v1

    .line 81
    goto :goto_8c

    .line 89
    :cond_a7
    add-int v4, v3, v5

    .line 90
    sub-int v3, v2, v5

    .line 93
    add-int/lit8 v2, v4, -0x2

    invoke-static {p0, v2, v7, v0}, Lcom/koushikdutta/ion/bitmap/Exif;->a([BIIZ)I

    move-result v2

    move v5, v4

    move v4, v3

    .line 94
    :goto_b3
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_8

    const/16 v2, 0xc

    if-lt v4, v2, :cond_8

    .line 96
    invoke-static {p0, v5, v7, v0}, Lcom/koushikdutta/ion/bitmap/Exif;->a([BIIZ)I

    move-result v2

    .line 97
    const/16 v6, 0x112

    if-ne v2, v6, :cond_e3

    .line 99
    add-int/lit8 v2, v5, 0x8

    invoke-static {p0, v2, v7, v0}, Lcom/koushikdutta/ion/bitmap/Exif;->a([BIIZ)I

    move-result v0

    .line 100
    packed-switch v0, :pswitch_data_f4

    .line 110
    :pswitch_cc
    const-string/jumbo v0, "CameraExif"

    const-string/jumbo v2, "Unsupported orientation"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 104
    :pswitch_d7
    const/16 v1, 0xb4

    goto/16 :goto_8

    .line 106
    :pswitch_db
    const/16 v1, 0x5a

    goto/16 :goto_8

    .line 108
    :pswitch_df
    const/16 v1, 0x10e

    goto/16 :goto_8

    .line 113
    :cond_e3
    add-int/lit8 v5, v5, 0xc

    .line 114
    add-int/lit8 v2, v4, -0xc

    move v4, v2

    move v2, v3

    goto :goto_b3

    :cond_ea
    move v3, v2

    move v2, v1

    goto/16 :goto_38

    :cond_ee
    move v3, v2

    goto/16 :goto_c

    :cond_f1
    move v2, v1

    goto/16 :goto_38

    .line 100
    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_8
        :pswitch_cc
        :pswitch_d7
        :pswitch_cc
        :pswitch_cc
        :pswitch_db
        :pswitch_cc
        :pswitch_df
    .end packed-switch
.end method

.method private static a([BIIZ)I
    .registers 8

    .prologue
    .line 124
    const/4 v0, 0x1

    .line 125
    if-eqz p3, :cond_7

    .line 126
    add-int/lit8 v0, p2, -0x1

    add-int/2addr p1, v0

    .line 127
    const/4 v0, -0x1

    .line 130
    :cond_7
    const/4 v1, 0x0

    .line 131
    :goto_8
    add-int/lit8 v2, p2, -0x1

    if-lez p2, :cond_16

    .line 132
    shl-int/lit8 v1, v1, 0x8

    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 133
    add-int/2addr p1, v0

    move p2, v2

    goto :goto_8

    .line 135
    :cond_16
    return v1
.end method
