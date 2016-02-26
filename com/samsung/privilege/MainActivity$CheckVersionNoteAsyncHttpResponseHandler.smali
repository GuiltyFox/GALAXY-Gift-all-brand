.class Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckVersionNoteAsyncHttpResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/MainActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/MainActivity;)V
    .registers 2

    .prologue
    .line 408
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 410
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;)Lcom/samsung/privilege/MainActivity;
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 465
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;->onSuccess(ILjava/lang/String;)V

    .line 466
    return-void
.end method

.method public onFinish()V
    .registers 1

    .prologue
    .line 471
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 415
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    # getter for: Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/MainActivity;->access$1(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(CheckVersionNoteAsyncHttpResponseHandler|onComplete)response={"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_40

    .line 421
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    # getter for: Lcom/samsung/privilege/MainActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/MainActivity;->access$2(Lcom/samsung/privilege/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 423
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    new-instance v1, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler$1;-><init>(Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 460
    :goto_39
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/MainActivity;->access$3(Lcom/samsung/privilege/MainActivity;Z)V

    .line 461
    return-void

    .line 440
    :cond_40
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    # getter for: Lcom/samsung/privilege/MainActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/MainActivity;->access$2(Lcom/samsung/privilege/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 442
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;->this$0:Lcom/samsung/privilege/MainActivity;

    new-instance v1, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler$2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler$2;-><init>(Lcom/samsung/privilege/MainActivity$CheckVersionNoteAsyncHttpResponseHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_39
.end method
