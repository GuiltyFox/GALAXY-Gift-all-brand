.class public Lcom/journeyapps/barcodescanner/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"


# instance fields
.field private a:Lcom/journeyapps/barcodescanner/CaptureManager;

.field private b:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/journeyapps/barcodescanner/CompoundBarcodeView;
    .registers 2

    .prologue
    .line 35
    sget v0, Lcom/google/zxing/client/android/R$layout;->zxing_capture:I

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CaptureActivity;->setContentView(I)V

    .line 36
    sget v0, Lcom/google/zxing/client/android/R$id;->zxing_barcode_scanner:I

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CaptureActivity;->a()Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->b:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    .line 24
    new-instance v0, Lcom/journeyapps/barcodescanner/CaptureManager;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->b:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-direct {v0, p0, v1}, Lcom/journeyapps/barcodescanner/CaptureManager;-><init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/CompoundBarcodeView;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    .line 25
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 26
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->b()V

    .line 27
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 54
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->e()V

    .line 55
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->b:Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    invoke-virtual {v0, p1, p2}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 48
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->d()V

    .line 49
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/journeyapps/barcodescanner/CaptureManager;->a(I[Ljava/lang/String;[I)V

    .line 66
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 42
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->c()V

    .line 43
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureActivity;->a:Lcom/journeyapps/barcodescanner/CaptureManager;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->a(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method
