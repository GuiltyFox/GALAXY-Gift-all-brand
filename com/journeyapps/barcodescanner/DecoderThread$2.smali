.class Lcom/journeyapps/barcodescanner/DecoderThread$2;
.super Ljava/lang/Object;
.source "DecoderThread.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/camera/PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/DecoderThread;
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/DecoderThread;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/DecoderThread;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->a:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/journeyapps/barcodescanner/SourceData;)V
    .registers 5

    .prologue
    .line 107
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->a:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->a(Lcom/journeyapps/barcodescanner/DecoderThread;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 108
    :try_start_7
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->a:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->b(Lcom/journeyapps/barcodescanner/DecoderThread;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 110
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/DecoderThread$2;->a:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->c(Lcom/journeyapps/barcodescanner/DecoderThread;)Landroid/os/Handler;

    move-result-object v0

    sget v2, Lcom/google/zxing/client/android/R$id;->zxing_decode:I

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 112
    :cond_1e
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v0
.end method
