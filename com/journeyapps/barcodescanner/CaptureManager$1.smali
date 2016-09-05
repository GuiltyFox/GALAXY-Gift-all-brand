.class Lcom/journeyapps/barcodescanner/CaptureManager$1;
.super Ljava/lang/Object;
.source "CaptureManager.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/BarcodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/CaptureManager;
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/CaptureManager;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager$1;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/journeyapps/barcodescanner/BarcodeResult;)V
    .registers 6

    .prologue
    .line 78
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager$1;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->a(Lcom/journeyapps/barcodescanner/CaptureManager;)Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a()V

    .line 79
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager$1;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->b(Lcom/journeyapps/barcodescanner/CaptureManager;)Lcom/google/zxing/client/android/BeepManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/client/android/BeepManager;->b()V

    .line 81
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager$1;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->c(Lcom/journeyapps/barcodescanner/CaptureManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/journeyapps/barcodescanner/CaptureManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/CaptureManager$1$1;-><init>(Lcom/journeyapps/barcodescanner/CaptureManager$1;Lcom/journeyapps/barcodescanner/BarcodeResult;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    return-void
.end method
