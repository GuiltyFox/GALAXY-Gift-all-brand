.class public Lcom/journeyapps/barcodescanner/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private a:Lcom/google/zxing/Reader;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->b:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/Decoder;->a:Lcom/google/zxing/Reader;

    .line 34
    return-void
.end method


# virtual methods
.method protected a(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    :try_start_5
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->a:Lcom/google/zxing/Reader;

    instance-of v0, v0, Lcom/google/zxing/MultiFormatReader;

    if-eqz v0, :cond_19

    .line 75
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->a:Lcom/google/zxing/Reader;

    check-cast v0, Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p1}, Lcom/google/zxing/MultiFormatReader;->b(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_25
    .catchall {:try_start_5 .. :try_end_12} :catchall_2d

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/Decoder;->a:Lcom/google/zxing/Reader;

    invoke-interface {v1}, Lcom/google/zxing/Reader;->a()V

    :goto_18
    return-object v0

    .line 77
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->a:Lcom/google/zxing/Reader;

    invoke-interface {v0, p1}, Lcom/google/zxing/Reader;->a(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1e} :catch_25
    .catchall {:try_start_19 .. :try_end_1e} :catchall_2d

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/Decoder;->a:Lcom/google/zxing/Reader;

    invoke-interface {v1}, Lcom/google/zxing/Reader;->a()V

    goto :goto_18

    .line 79
    :catch_25
    move-exception v0

    .line 81
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/Decoder;->a:Lcom/google/zxing/Reader;

    invoke-interface {v1}, Lcom/google/zxing/Reader;->a()V

    goto :goto_18

    :catchall_2d
    move-exception v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/Decoder;->a:Lcom/google/zxing/Reader;

    invoke-interface {v1}, Lcom/google/zxing/Reader;->a()V

    throw v0
.end method

.method public a(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;
    .registers 3

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/Decoder;->b(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/BinaryBitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/Decoder;->a(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/Decoder;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public a(Lcom/google/zxing/ResultPoint;)V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method protected b(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/BinaryBitmap;
    .registers 4

    .prologue
    .line 61
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v1, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v1, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v1}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    return-object v0
.end method
