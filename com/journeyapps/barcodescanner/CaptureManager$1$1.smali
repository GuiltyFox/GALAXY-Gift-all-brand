.class Lcom/journeyapps/barcodescanner/CaptureManager$1$1;
.super Ljava/lang/Object;
.source "CaptureManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/CaptureManager$1;->a(Lcom/journeyapps/barcodescanner/BarcodeResult;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/BarcodeResult;

.field final synthetic b:Lcom/journeyapps/barcodescanner/CaptureManager$1;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CaptureManager$1;Lcom/journeyapps/barcodescanner/BarcodeResult;)V
    .registers 3

    .prologue
    .line 81
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager$1$1;->b:Lcom/journeyapps/barcodescanner/CaptureManager$1;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/CaptureManager$1$1;->a:Lcom/journeyapps/barcodescanner/BarcodeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager$1$1;->b:Lcom/journeyapps/barcodescanner/CaptureManager$1;

    iget-object v0, v0, Lcom/journeyapps/barcodescanner/CaptureManager$1;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureManager$1$1;->a:Lcom/journeyapps/barcodescanner/BarcodeResult;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/CaptureManager;->a(Lcom/journeyapps/barcodescanner/BarcodeResult;)V

    .line 85
    return-void
.end method
