.class public final Lcom/google/zxing/BinaryBitmap;
.super Ljava/lang/Object;
.source "BinaryBitmap.java"


# instance fields
.field private final a:Lcom/google/zxing/Binarizer;

.field private b:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Binarizer;)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_e

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Binarizer must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_e
    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->a:Lcom/google/zxing/Binarizer;

    .line 38
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->a:Lcom/google/zxing/Binarizer;

    invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->c()I

    move-result v0

    return v0
.end method

.method public a(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .registers 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->a:Lcom/google/zxing/Binarizer;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/Binarizer;->a(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->a:Lcom/google/zxing/Binarizer;

    invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->d()I

    move-result v0

    return v0
.end method

.method public c()Lcom/google/zxing/common/BitMatrix;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->b:Lcom/google/zxing/common/BitMatrix;

    if-nez v0, :cond_c

    .line 85
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->a:Lcom/google/zxing/Binarizer;

    invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->b()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/BinaryBitmap;->b:Lcom/google/zxing/common/BitMatrix;

    .line 87
    :cond_c
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->b:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->a:Lcom/google/zxing/Binarizer;

    invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->a()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->d()Z

    move-result v0

    return v0
.end method

.method public e()Lcom/google/zxing/BinaryBitmap;
    .registers 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->a:Lcom/google/zxing/Binarizer;

    invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->a()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->e()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    iget-object v2, p0, Lcom/google/zxing/BinaryBitmap;->a:Lcom/google/zxing/Binarizer;

    invoke-virtual {v2, v0}, Lcom/google/zxing/Binarizer;->a(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->c()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->toString()Ljava/lang/String;
    :try_end_7
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 146
    :goto_8
    return-object v0

    .line 145
    :catch_9
    move-exception v0

    .line 146
    const-string/jumbo v0, ""

    goto :goto_8
.end method
