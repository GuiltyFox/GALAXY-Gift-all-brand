.class public Lcom/journeyapps/barcodescanner/CompoundBarcodeView;
.super Landroid/widget/FrameLayout;
.source "CompoundBarcodeView.java"


# instance fields
.field private a:Lcom/journeyapps/barcodescanner/BarcodeView;

.field private b:Lcom/journeyapps/barcodescanner/ViewfinderView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/journeyapps/barcodescanner/CompoundBarcodeView$TorchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->f()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    invoke-direct {p0, p2}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a(Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-direct {p0, p2}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a(Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/CompoundBarcodeView;)Lcom/journeyapps/barcodescanner/ViewfinderView;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->b:Lcom/journeyapps/barcodescanner/ViewfinderView;

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/client/android/R$styleable;->zxing_view:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    sget v1, Lcom/google/zxing/client/android/R$styleable;->zxing_view_zxing_scanner_layout:I

    sget v2, Lcom/google/zxing/client/android/R$layout;->zxing_barcode_scanner:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    sget v0, Lcom/google/zxing/client/android/R$id;->zxing_barcode_surface:I

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/BarcodeView;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 94
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    if-nez v0, :cond_33

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "There is no a com.journeyapps.barcodescanner.BarcodeView on provided layout with the id \"zxing_barcode_surface\"."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_33
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Landroid/util/AttributeSet;)V

    .line 104
    sget v0, Lcom/google/zxing/client/android/R$id;->zxing_viewfinder_view:I

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/ViewfinderView;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->b:Lcom/journeyapps/barcodescanner/ViewfinderView;

    .line 106
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->b:Lcom/journeyapps/barcodescanner/ViewfinderView;

    if-nez v0, :cond_4f

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "There is no a com.journeyapps.barcodescanner.ViewfinderView on provided layout with the id \"zxing_viewfinder_view\"."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_4f
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->b:Lcom/journeyapps/barcodescanner/ViewfinderView;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/ViewfinderView;->a(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    .line 115
    sget v0, Lcom/google/zxing/client/android/R$id;->zxing_status_view:I

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->c:Landroid/widget/TextView;

    .line 116
    return-void
.end method

.method private f()V
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a(Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->d()V

    .line 171
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 132
    invoke-static {p1}, Lcom/google/zxing/client/android/DecodeFormatManager;->a(Landroid/content/Intent;)Ljava/util/Set;

    move-result-object v0

    .line 133
    invoke-static {p1}, Lcom/google/zxing/client/android/DecodeHintManager;->a(Landroid/content/Intent;)Ljava/util/Map;

    move-result-object v1

    .line 135
    new-instance v2, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v2}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    .line 137
    const-string/jumbo v3, "SCAN_CAMERA_ID"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 138
    const-string/jumbo v3, "SCAN_CAMERA_ID"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 139
    if-ltz v3, :cond_23

    .line 140
    invoke-virtual {v2, v3}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->a(I)V

    .line 144
    :cond_23
    const-string/jumbo v3, "PROMPT_MESSAGE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    if-eqz v3, :cond_2f

    .line 146
    invoke-virtual {p0, v3}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a(Ljava/lang/String;)V

    .line 149
    :cond_2f
    const-string/jumbo v3, "CHARACTER_SET"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    new-instance v4, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v4}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 152
    invoke-virtual {v4, v1}, Lcom/google/zxing/MultiFormatReader;->a(Ljava/util/Map;)V

    .line 154
    iget-object v4, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {v4, v2}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    .line 155
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    new-instance v4, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;

    invoke-direct {v4, v0, v1, v3}, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;-><init>(Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Lcom/journeyapps/barcodescanner/DecoderFactory;)V

    .line 156
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V
    .registers 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    new-instance v1, Lcom/journeyapps/barcodescanner/CompoundBarcodeView$WrappedCallback;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView$WrappedCallback;-><init>(Lcom/journeyapps/barcodescanner/CompoundBarcodeView;Lcom/journeyapps/barcodescanner/BarcodeCallback;)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V

    .line 199
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 161
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_9
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->g()V

    .line 178
    return-void
.end method

.method public c()Lcom/journeyapps/barcodescanner/BarcodeView;
    .registers 2

    .prologue
    .line 181
    sget v0, Lcom/google/zxing/client/android/R$id;->zxing_barcode_surface:I

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/BarcodeView;

    return-object v0
.end method

.method public d()V
    .registers 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/BarcodeView;->setTorch(Z)V

    .line 214
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->d:Lcom/journeyapps/barcodescanner/CompoundBarcodeView$TorchListener;

    if-eqz v0, :cond_f

    .line 215
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->d:Lcom/journeyapps/barcodescanner/CompoundBarcodeView$TorchListener;

    invoke-interface {v0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView$TorchListener;->a()V

    .line 217
    :cond_f
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/BarcodeView;->setTorch(Z)V

    .line 225
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->d:Lcom/journeyapps/barcodescanner/CompoundBarcodeView$TorchListener;

    if-eqz v0, :cond_f

    .line 226
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->d:Lcom/journeyapps/barcodescanner/CompoundBarcodeView$TorchListener;

    invoke-interface {v0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView$TorchListener;->b()V

    .line 228
    :cond_f
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 237
    sparse-switch p1, :sswitch_data_12

    .line 250
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    :sswitch_8
    return v0

    .line 244
    :sswitch_9
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->e()V

    goto :goto_8

    .line 247
    :sswitch_d
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CompoundBarcodeView;->d()V

    goto :goto_8

    .line 237
    nop

    :sswitch_data_12
    .sparse-switch
        0x18 -> :sswitch_d
        0x19 -> :sswitch_9
        0x1b -> :sswitch_8
        0x50 -> :sswitch_8
    .end sparse-switch
.end method
