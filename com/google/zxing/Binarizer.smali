.class public abstract Lcom/google/zxing/Binarizer;
.super Ljava/lang/Object;
.source "Binarizer.java"


# instance fields
.field private final a:Lcom/google/zxing/LuminanceSource;


# direct methods
.method protected constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/zxing/Binarizer;->a:Lcom/google/zxing/LuminanceSource;

    .line 36
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
.end method

.method public final a()Lcom/google/zxing/LuminanceSource;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/zxing/Binarizer;->a:Lcom/google/zxing/LuminanceSource;

    return-object v0
.end method

.method public abstract a(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
.end method

.method public abstract b()Lcom/google/zxing/common/BitMatrix;
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/zxing/Binarizer;->a:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->b()I

    move-result v0

    return v0
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/zxing/Binarizer;->a:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->c()I

    move-result v0

    return v0
.end method
