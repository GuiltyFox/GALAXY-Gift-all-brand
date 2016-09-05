.class public Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;
.super Ljava/lang/Object;
.source "DecoderResultPointCallback.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private a:Lcom/journeyapps/barcodescanner/Decoder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/ResultPoint;)V
    .registers 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;->a:Lcom/journeyapps/barcodescanner/Decoder;

    if-eqz v0, :cond_9

    .line 30
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;->a:Lcom/journeyapps/barcodescanner/Decoder;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/Decoder;->a(Lcom/google/zxing/ResultPoint;)V

    .line 32
    :cond_9
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/Decoder;)V
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;->a:Lcom/journeyapps/barcodescanner/Decoder;

    .line 25
    return-void
.end method
