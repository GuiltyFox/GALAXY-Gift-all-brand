.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.source "AI01393xDecoder.java"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 43
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x30

    .line 47
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;->b()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->a()I

    move-result v0

    if-ge v0, v4, :cond_11

    .line 48
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 51
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;->b(Ljava/lang/StringBuilder;I)V

    .line 56
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;->c()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v4, v2}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->a(II)I

    move-result v1

    .line 58
    const-string/jumbo v2, "(393"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;->c()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v1

    const/16 v2, 0x32

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->a(II)I

    move-result v1

    .line 64
    div-int/lit8 v2, v1, 0x64

    if-nez v2, :cond_45

    .line 65
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    :cond_45
    div-int/lit8 v2, v1, 0xa

    if-nez v2, :cond_4c

    .line 68
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    :cond_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;->c()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v1

    const/16 v2, 0x3c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->a(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
