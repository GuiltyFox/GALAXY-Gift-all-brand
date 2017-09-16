.class Lcom/samsung/privilege/activity/AddMoneyQRActivity$1;
.super Ljava/lang/Object;
.source "AddMoneyQRActivity.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/BarcodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/AddMoneyQRActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/AddMoneyQRActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AddMoneyQRActivity;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity$1;->a:Lcom/samsung/privilege/activity/AddMoneyQRActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/journeyapps/barcodescanner/BarcodeResult;)V
    .registers 4

    .prologue
    .line 84
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 85
    iget-object v0, p0, Lcom/samsung/privilege/activity/AddMoneyQRActivity$1;->a:Lcom/samsung/privilege/activity/AddMoneyQRActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/AddMoneyQRActivity;->a(Lcom/samsung/privilege/activity/AddMoneyQRActivity;)Lcom/journeyapps/barcodescanner/CompoundBarcodeView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a(Ljava/lang/String;)V

    .line 89
    :cond_13
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
