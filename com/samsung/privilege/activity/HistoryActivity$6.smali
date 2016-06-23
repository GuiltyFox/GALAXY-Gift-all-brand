.class Lcom/samsung/privilege/activity/HistoryActivity$6;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "HistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/HistoryActivity;->loadHistory(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/HistoryActivity;

.field final synthetic val$skip:I


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/HistoryActivity;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/HistoryActivity;

    .prologue
    .line 753
    iput-object p1, p0, Lcom/samsung/privilege/activity/HistoryActivity$6;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    iput p2, p0, Lcom/samsung/privilege/activity/HistoryActivity$6;->val$skip:I

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 10
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 795
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    .line 796
    .local v1, "response_text":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$6;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1000(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(loadHistory|onFailure)response_code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",response="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_50

    .line 801
    .end local v1    # "response_text":Ljava/lang/String;
    :goto_2d
    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$6;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/bzbs/util/DialogUtil;->showDialogHttpFailure(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 803
    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$6;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1200(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 805
    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$6;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1300(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/privilege/activity/HistoryActivity$6$2;

    invoke-direct {v3, p0}, Lcom/samsung/privilege/activity/HistoryActivity$6$2;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$6;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 813
    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$6;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/privilege/activity/HistoryActivity;->loading:Z
    invoke-static {v2, v3}, Lcom/samsung/privilege/activity/HistoryActivity;->access$402(Lcom/samsung/privilege/activity/HistoryActivity;Z)Z

    .line 814
    return-void

    .line 797
    :catch_50
    move-exception v0

    .line 798
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/HistoryActivity$6;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1000(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(loadHistory|onFailure)response_code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 756
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 757
    .local v0, "response_text":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$6;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1000(Lcom/samsung/privilege/activity/HistoryActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(loadHistory|onComplete)response_code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$6;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1200(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 761
    iget-object v1, p0, Lcom/samsung/privilege/activity/HistoryActivity$6;->this$0:Lcom/samsung/privilege/activity/HistoryActivity;

    # getter for: Lcom/samsung/privilege/activity/HistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/privilege/activity/HistoryActivity;->access$1300(Lcom/samsung/privilege/activity/HistoryActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/activity/HistoryActivity$6$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/HistoryActivity$6$1;-><init>(Lcom/samsung/privilege/activity/HistoryActivity$6;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 790
    return-void
.end method
