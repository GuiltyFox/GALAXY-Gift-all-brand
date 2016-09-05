.class public Lcom/journeyapps/barcodescanner/BarcodeResult;
.super Ljava/lang/Object;
.source "BarcodeResult.java"


# instance fields
.field protected a:Lcom/google/zxing/Result;

.field protected b:Lcom/journeyapps/barcodescanner/SourceData;

.field private final c:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/Result;Lcom/journeyapps/barcodescanner/SourceData;)V
    .registers 4

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->c:I

    .line 31
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->a:Lcom/google/zxing/Result;

    .line 32
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->b:Lcom/journeyapps/barcodescanner/SourceData;

    .line 33
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->b:Lcom/journeyapps/barcodescanner/SourceData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/SourceData;->a(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public b()[B
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->a:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/zxing/BarcodeFormat;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->a:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->d()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->a:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeResult;->a:Lcom/google/zxing/Result;

    invoke-virtual {v0}, Lcom/google/zxing/Result;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
