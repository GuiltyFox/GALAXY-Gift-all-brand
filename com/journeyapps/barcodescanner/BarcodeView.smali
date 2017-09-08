.class public Lcom/journeyapps/barcodescanner/BarcodeView;
.super Lcom/journeyapps/barcodescanner/CameraPreview;
.source "BarcodeView.java"


# instance fields
.field private a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

.field private b:Lcom/journeyapps/barcodescanner/BarcodeCallback;

.field private c:Lcom/journeyapps/barcodescanner/DecoderThread;

.field private d:Lcom/journeyapps/barcodescanner/DecoderFactory;

.field private e:Landroid/os/Handler;

.field private final f:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;)V

    .line 37
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 38
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->b:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 46
    new-instance v0, Lcom/journeyapps/barcodescanner/BarcodeView$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/BarcodeView$1;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->f:Landroid/os/Handler$Callback;

    .line 78
    invoke-direct {p0, p1, v1}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->b:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 46
    new-instance v0, Lcom/journeyapps/barcodescanner/BarcodeView$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/BarcodeView$1;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->f:Landroid/os/Handler$Callback;

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/journeyapps/barcodescanner/CameraPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->b:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 46
    new-instance v0, Lcom/journeyapps/barcodescanner/BarcodeView$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/BarcodeView$1;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->f:Landroid/os/Handler$Callback;

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/BarcodeView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeCallback;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->b:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    .line 93
    new-instance v0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->d:Lcom/journeyapps/barcodescanner/DecoderFactory;

    .line 94
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->f:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->e:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method static synthetic b(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    return-object v0
.end method

.method private l()Lcom/journeyapps/barcodescanner/Decoder;
    .registers 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->d:Lcom/journeyapps/barcodescanner/DecoderFactory;

    if-nez v0, :cond_a

    .line 117
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->b()Lcom/journeyapps/barcodescanner/DecoderFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->d:Lcom/journeyapps/barcodescanner/DecoderFactory;

    .line 119
    :cond_a
    new-instance v0, Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;-><init>()V

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 121
    sget-object v2, Lcom/google/zxing/DecodeHintType;->j:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->d:Lcom/journeyapps/barcodescanner/DecoderFactory;

    invoke-interface {v2, v1}, Lcom/journeyapps/barcodescanner/DecoderFactory;->a(Ljava/util/Map;)Lcom/journeyapps/barcodescanner/Decoder;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/DecoderResultPointCallback;->a(Lcom/journeyapps/barcodescanner/Decoder;)V

    .line 124
    return-object v1
.end method

.method private m()V
    .registers 5

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->n()V

    .line 178
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    sget-object v1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    if-eq v0, v1, :cond_2e

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->j()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 182
    new-instance v0, Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->i()Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    move-result-object v1

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->l()Lcom/journeyapps/barcodescanner/Decoder;

    move-result-object v2

    iget-object v3, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->e:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3}, Lcom/journeyapps/barcodescanner/DecoderThread;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/Decoder;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->c:Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 183
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->c:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->f()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/DecoderThread;->a(Landroid/graphics/Rect;)V

    .line 184
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->c:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->a()V

    .line 186
    :cond_2e
    return-void
.end method

.method private n()V
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->c:Lcom/journeyapps/barcodescanner/DecoderThread;

    if-eqz v0, :cond_c

    .line 197
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->c:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->b()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->c:Lcom/journeyapps/barcodescanner/DecoderThread;

    .line 200
    :cond_c
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 166
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->b:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 168
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->n()V

    .line 169
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V
    .registers 3

    .prologue
    .line 143
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->b:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 144
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->b:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 145
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->m()V

    .line 146
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/DecoderFactory;)V
    .registers 4

    .prologue
    .line 107
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->a()V

    .line 109
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->d:Lcom/journeyapps/barcodescanner/DecoderFactory;

    .line 110
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->c:Lcom/journeyapps/barcodescanner/DecoderThread;

    if-eqz v0, :cond_12

    .line 111
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->c:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->l()Lcom/journeyapps/barcodescanner/Decoder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/DecoderThread;->a(Lcom/journeyapps/barcodescanner/Decoder;)V

    .line 113
    :cond_12
    return-void
.end method

.method protected b()Lcom/journeyapps/barcodescanner/DecoderFactory;
    .registers 2

    .prologue
    .line 172
    new-instance v0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;-><init>()V

    return-object v0
.end method

.method public b(Lcom/journeyapps/barcodescanner/BarcodeCallback;)V
    .registers 3

    .prologue
    .line 157
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->c:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->a:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    .line 158
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->b:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 159
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->m()V

    .line 160
    return-void
.end method

.method protected c()V
    .registers 1

    .prologue
    .line 190
    invoke-super {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->c()V

    .line 192
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->m()V

    .line 193
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->n()V

    .line 210
    invoke-super {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->d()V

    .line 211
    return-void
.end method
