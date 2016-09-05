.class public Lcom/journeyapps/barcodescanner/DecoderThread;
.super Ljava/lang/Object;
.source "DecoderThread.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:Lcom/journeyapps/barcodescanner/Decoder;

.field private f:Landroid/os/Handler;

.field private g:Landroid/graphics/Rect;

.field private h:Z

.field private final i:Ljava/lang/Object;

.field private final j:Landroid/os/Handler$Callback;

.field private final k:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/DecoderThread;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/Decoder;Landroid/os/Handler;)V
    .registers 5

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->h:Z

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->i:Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/journeyapps/barcodescanner/DecoderThread$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/DecoderThread$1;-><init>(Lcom/journeyapps/barcodescanner/DecoderThread;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->j:Landroid/os/Handler$Callback;

    .line 100
    new-instance v0, Lcom/journeyapps/barcodescanner/DecoderThread$2;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/DecoderThread$2;-><init>(Lcom/journeyapps/barcodescanner/DecoderThread;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->k:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    .line 45
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->a()V

    .line 47
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    .line 48
    iput-object p2, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->e:Lcom/journeyapps/barcodescanner/Decoder;

    .line 49
    iput-object p3, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->f:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/DecoderThread;)Ljava/lang/Object;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->i:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/journeyapps/barcodescanner/DecoderThread;Lcom/journeyapps/barcodescanner/SourceData;)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/DecoderThread;->b(Lcom/journeyapps/barcodescanner/SourceData;)V

    return-void
.end method

.method private b(Lcom/journeyapps/barcodescanner/SourceData;)V
    .registers 10

    .prologue
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 132
    const/4 v0, 0x0

    .line 133
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->g:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Lcom/journeyapps/barcodescanner/SourceData;->a(Landroid/graphics/Rect;)V

    .line 134
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/DecoderThread;->a(Lcom/journeyapps/barcodescanner/SourceData;)Lcom/google/zxing/LuminanceSource;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_16

    .line 137
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->e:Lcom/journeyapps/barcodescanner/Decoder;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/Decoder;->a(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;

    move-result-object v0

    .line 140
    :cond_16
    if-eqz v0, :cond_73

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 143
    sget-object v1, Lcom/journeyapps/barcodescanner/DecoderThread;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found barcode in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->f:Landroid/os/Handler;

    if-eqz v1, :cond_5a

    .line 145
    new-instance v1, Lcom/journeyapps/barcodescanner/BarcodeResult;

    invoke-direct {v1, v0, p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;-><init>(Lcom/google/zxing/Result;Lcom/journeyapps/barcodescanner/SourceData;)V

    .line 146
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->f:Landroid/os/Handler;

    sget v2, Lcom/google/zxing/client/android/R$id;->zxing_decode_succeeded:I

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 147
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 148
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 157
    :cond_5a
    :goto_5a
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->f:Landroid/os/Handler;

    if-eqz v0, :cond_6f

    .line 158
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->e:Lcom/journeyapps/barcodescanner/Decoder;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/Decoder;->a()Ljava/util/List;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->f:Landroid/os/Handler;

    sget v2, Lcom/google/zxing/client/android/R$id;->zxing_possible_result_points:I

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 162
    :cond_6f
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->c()V

    .line 163
    return-void

    .line 152
    :cond_73
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->f:Landroid/os/Handler;

    if-eqz v0, :cond_5a

    .line 153
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->f:Landroid/os/Handler;

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_decode_failed:I

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_5a
.end method

.method static synthetic b(Lcom/journeyapps/barcodescanner/DecoderThread;)Z
    .registers 2

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/journeyapps/barcodescanner/DecoderThread;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 118
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->b:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->k:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->a(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    .line 120
    :cond_f
    return-void
.end method


# virtual methods
.method protected a(Lcom/journeyapps/barcodescanner/SourceData;)Lcom/google/zxing/LuminanceSource;
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->g:Landroid/graphics/Rect;

    if-nez v0, :cond_6

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/SourceData;->b()Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v0

    goto :goto_5
.end method

.method public a()V
    .registers 4

    .prologue
    .line 74
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->a()V

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/journeyapps/barcodescanner/DecoderThread;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->c:Landroid/os/HandlerThread;

    .line 77
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->j:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->d:Landroid/os/Handler;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->h:Z

    .line 80
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/DecoderThread;->c()V

    .line 81
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->g:Landroid/graphics/Rect;

    .line 66
    return-void
.end method

.method public a(Lcom/journeyapps/barcodescanner/Decoder;)V
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->e:Lcom/journeyapps/barcodescanner/Decoder;

    .line 58
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 90
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->a()V

    .line 92
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->h:Z

    .line 94
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->d:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v0
.end method
