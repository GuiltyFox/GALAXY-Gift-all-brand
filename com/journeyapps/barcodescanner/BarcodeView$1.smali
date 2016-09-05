.class Lcom/journeyapps/barcodescanner/BarcodeView$1;
.super Ljava/lang/Object;
.source "BarcodeView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/BarcodeView;
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/BarcodeView;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 49
    iget v0, p1, Landroid/os/Message;->what:I

    sget v2, Lcom/google/zxing/client/android/R$id;->zxing_decode_succeeded:I

    if-ne v0, v2, :cond_39

    .line 50
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/journeyapps/barcodescanner/BarcodeResult;

    .line 52
    if-eqz v0, :cond_37

    .line 53
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeCallback;

    move-result-object v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->b(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    move-result-object v2

    sget-object v3, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    if-eq v2, v3, :cond_37

    .line 54
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/journeyapps/barcodescanner/BarcodeCallback;->a(Lcom/journeyapps/barcodescanner/BarcodeResult;)V

    .line 55
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->b(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    move-result-object v0

    sget-object v2, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->b:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    if-ne v0, v2, :cond_37

    .line 56
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->a()V

    :cond_37
    move v0, v1

    .line 71
    :goto_38
    return v0

    .line 61
    :cond_39
    iget v0, p1, Landroid/os/Message;->what:I

    sget v2, Lcom/google/zxing/client/android/R$id;->zxing_decode_failed:I

    if-ne v0, v2, :cond_41

    move v0, v1

    .line 63
    goto :goto_38

    .line 64
    :cond_41
    iget v0, p1, Landroid/os/Message;->what:I

    sget v2, Lcom/google/zxing/client/android/R$id;->zxing_possible_result_points:I

    if-ne v0, v2, :cond_68

    .line 65
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 66
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeCallback;

    move-result-object v2

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->b(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    move-result-object v2

    sget-object v3, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    if-eq v2, v3, :cond_66

    .line 67
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/journeyapps/barcodescanner/BarcodeCallback;->a(Ljava/util/List;)V

    :cond_66
    move v0, v1

    .line 69
    goto :goto_38

    .line 71
    :cond_68
    const/4 v0, 0x0

    goto :goto_38
.end method
