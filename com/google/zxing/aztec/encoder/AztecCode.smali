.class public final Lcom/google/zxing/aztec/encoder/AztecCode;
.super Ljava/lang/Object;
.source "AztecCode.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/zxing/common/BitMatrix;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->e:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 53
    iput p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->b:I

    .line 54
    return-void
.end method

.method public a(Lcom/google/zxing/common/BitMatrix;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->e:Lcom/google/zxing/common/BitMatrix;

    .line 87
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->a:Z

    .line 43
    return-void
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 64
    iput p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->c:I

    .line 65
    return-void
.end method

.method public c(I)V
    .registers 2

    .prologue
    .line 75
    iput p1, p0, Lcom/google/zxing/aztec/encoder/AztecCode;->d:I

    .line 76
    return-void
.end method
