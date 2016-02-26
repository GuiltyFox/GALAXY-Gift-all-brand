.class public Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "MainMenuFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MainMenuFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VerifySubmitListener"
.end annotation


# instance fields
.field isLoop:Z

.field final synthetic this$0:Lcom/samsung/privilege/activity/MainMenuFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V
    .registers 4
    .param p2, "isLoop"    # Z

    .prologue
    .line 2317
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 2315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->isLoop:Z

    .line 2318
    iput-boolean p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->isLoop:Z

    .line 2319
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;)Lcom/samsung/privilege/activity/MainMenuFragment;
    .registers 2

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 2364
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2365
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->onSuccess(ILjava/lang/String;)V

    .line 2366
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 2323
    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->LOGCAT:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(PostSubmitListener|onComplete)response={"

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

    .line 2324
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_29

    .line 2360
    :cond_28
    :goto_28
    return-void

    .line 2328
    :cond_29
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_28

    .line 2330
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->isLoop:Z

    if-nez v0, :cond_4a

    .line 2331
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$1(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2334
    :cond_4a
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener$1;-><init>(Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2357
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;

    const/4 v1, 0x1

    # invokes: Lcom/samsung/privilege/activity/MainMenuFragment;->getHistory(Z)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$3(Lcom/samsung/privilege/activity/MainMenuFragment;Z)V

    goto :goto_28
.end method
