.class Lcom/samsung/privilege/activity/ProfileActivity$19;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/ProfileActivity;->doUpdate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/ProfileActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/ProfileActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/ProfileActivity;

    .prologue
    .line 1606
    iput-object p1, p0, Lcom/samsung/privilege/activity/ProfileActivity$19;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

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
    .line 1674
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    .line 1675
    .local v1, "response_text":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileActivity$19;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    # getter for: Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/ProfileActivity;->access$100(Lcom/samsung/privilege/activity/ProfileActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(doUpdate|onFailure)response_code="

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_3c

    .line 1680
    .end local v1    # "response_text":Ljava/lang/String;
    :goto_2d
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileActivity$19;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    # getter for: Lcom/samsung/privilege/activity/ProfileActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/samsung/privilege/activity/ProfileActivity;->access$200(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1682
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileActivity$19;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/bzbs/util/DialogUtil;->showDialogHttpFailure(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 1683
    return-void

    .line 1676
    :catch_3c
    move-exception v0

    .line 1677
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/samsung/privilege/activity/ProfileActivity$19;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    # getter for: Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/privilege/activity/ProfileActivity;->access$100(Lcom/samsung/privilege/activity/ProfileActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(doUpdate|onFailure)response_code="

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
    .line 1609
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 1610
    .local v0, "response_text":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$19;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    # getter for: Lcom/samsung/privilege/activity/ProfileActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/privilege/activity/ProfileActivity;->access$100(Lcom/samsung/privilege/activity/ProfileActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(doUpdate|onComplete)response_code="

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

    .line 1612
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$19;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    # getter for: Lcom/samsung/privilege/activity/ProfileActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/samsung/privilege/activity/ProfileActivity;->access$200(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1614
    iget-object v1, p0, Lcom/samsung/privilege/activity/ProfileActivity$19;->this$0:Lcom/samsung/privilege/activity/ProfileActivity;

    # getter for: Lcom/samsung/privilege/activity/ProfileActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/privilege/activity/ProfileActivity;->access$400(Lcom/samsung/privilege/activity/ProfileActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/activity/ProfileActivity$19$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/ProfileActivity$19$1;-><init>(Lcom/samsung/privilege/activity/ProfileActivity$19;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1669
    return-void
.end method