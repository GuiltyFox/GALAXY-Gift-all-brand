.class Lcom/journeyapps/barcodescanner/DecoderThread$1;
.super Ljava/lang/Object;
.source "DecoderThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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
    .line 34
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$1;->a:Lcom/journeyapps/barcodescanner/DecoderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .prologue
    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_decode:I

    if-ne v0, v1, :cond_f

    .line 38
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DecoderThread$1;->a:Lcom/journeyapps/barcodescanner/DecoderThread;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/journeyapps/barcodescanner/SourceData;

    invoke-static {v1, v0}, Lcom/journeyapps/barcodescanner/DecoderThread;->a(Lcom/journeyapps/barcodescanner/DecoderThread;Lcom/journeyapps/barcodescanner/SourceData;)V

    .line 40
    :cond_f
    const/4 v0, 0x1

    return v0
.end method
