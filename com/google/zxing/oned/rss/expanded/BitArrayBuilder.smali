.class final Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;
.super Ljava/lang/Object;
.source "BitArrayBuilder.java"


# direct methods
.method static a(Ljava/util/List;)Lcom/google/zxing/common/BitArray;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/common/BitArray;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0xb

    const/4 v2, 0x1

    .line 43
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, -0x1

    .line 44
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->b()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    if-nez v0, :cond_93

    .line 45
    add-int/lit8 v0, v1, -0x1

    .line 48
    :goto_20
    mul-int/lit8 v0, v0, 0xc

    .line 50
    new-instance v7, Lcom/google/zxing/common/BitArray;

    invoke-direct {v7, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 53
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 54
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->b()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->a()I

    move-result v5

    move v1, v4

    move v0, v3

    .line 55
    :goto_37
    if-ltz v1, :cond_48

    .line 56
    shl-int v3, v2, v1

    and-int/2addr v3, v5

    if-eqz v3, :cond_41

    .line 57
    invoke-virtual {v7, v0}, Lcom/google/zxing/common/BitArray;->b(I)V

    .line 59
    :cond_41
    add-int/lit8 v3, v0, 0x1

    .line 55
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v3

    goto :goto_37

    :cond_48
    move v1, v2

    move v3, v0

    .line 62
    :goto_4a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_92

    .line 63
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 65
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->a()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->a()I

    move-result v8

    move v5, v4

    .line 66
    :goto_5f
    if-ltz v5, :cond_70

    .line 67
    shl-int v6, v2, v5

    and-int/2addr v6, v8

    if-eqz v6, :cond_69

    .line 68
    invoke-virtual {v7, v3}, Lcom/google/zxing/common/BitArray;->b(I)V

    .line 70
    :cond_69
    add-int/lit8 v6, v3, 0x1

    .line 66
    add-int/lit8 v3, v5, -0x1

    move v5, v3

    move v3, v6

    goto :goto_5f

    .line 73
    :cond_70
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->b()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    if-eqz v5, :cond_8e

    .line 74
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->b()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->a()I

    move-result v5

    move v0, v4

    .line 75
    :goto_7f
    if-ltz v0, :cond_8e

    .line 76
    shl-int v6, v2, v0

    and-int/2addr v6, v5

    if-eqz v6, :cond_89

    .line 77
    invoke-virtual {v7, v3}, Lcom/google/zxing/common/BitArray;->b(I)V

    .line 79
    :cond_89
    add-int/lit8 v3, v3, 0x1

    .line 75
    add-int/lit8 v0, v0, -0x1

    goto :goto_7f

    .line 62
    :cond_8e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4a

    .line 83
    :cond_92
    return-object v7

    :cond_93
    move v0, v1

    goto :goto_20
.end method
