.class Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->a()Lcom/google/zxing/common/BitArray;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/aztec/encoder/State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/zxing/aztec/encoder/HighLevelEncoder;


# direct methods
.method constructor <init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V
    .registers 2

    .prologue
    .line 192
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;->a:Lcom/google/zxing/aztec/encoder/HighLevelEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/aztec/encoder/State;Lcom/google/zxing/aztec/encoder/State;)I
    .registers 5

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/aztec/encoder/State;->c()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 192
    check-cast p1, Lcom/google/zxing/aztec/encoder/State;

    check-cast p2, Lcom/google/zxing/aztec/encoder/State;

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;->a(Lcom/google/zxing/aztec/encoder/State;Lcom/google/zxing/aztec/encoder/State;)I

    move-result v0

    return v0
.end method