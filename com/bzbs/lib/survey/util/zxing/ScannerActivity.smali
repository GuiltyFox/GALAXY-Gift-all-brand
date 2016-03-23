.class public Lcom/bzbs/lib/survey/util/zxing/ScannerActivity;
.super Landroid/app/Activity;
.source "ScannerActivity.java"

# interfaces
.implements Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;


# instance fields
.field private mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResult(Lcom/google/zxing/Result;)V
    .registers 5
    .param p1, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/zxing/ScannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 43
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "SCAN_RESULT"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/bzbs/lib/survey/util/zxing/ScannerActivity;->setResult(ILandroid/content/Intent;)V

    .line 45
    invoke-virtual {p0}, Lcom/bzbs/lib/survey/util/zxing/ScannerActivity;->finish()V

    .line 46
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bzbs/lib/survey/util/zxing/ScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    .line 20
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/zxing/ScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {p0, v0}, Lcom/bzbs/lib/survey/util/zxing/ScannerActivity;->setContentView(Landroid/view/View;)V

    .line 21
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 33
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/zxing/ScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->stopCamera()V

    .line 34
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 26
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/zxing/ScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0, p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->setResultHandler(Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;)V

    .line 27
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/zxing/ScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->startCamera()V

    .line 28
    return-void
.end method
