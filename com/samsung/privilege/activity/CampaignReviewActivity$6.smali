.class Lcom/samsung/privilege/activity/CampaignReviewActivity$6;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CampaignReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignReviewActivity;->loadCampaignReview(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

.field final synthetic val$skip:I


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignReviewActivity;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignReviewActivity;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    iput p2, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->val$skip:I

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 9
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 409
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 410
    .local v0, "response_text":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$800(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(loadCampaignReview|onFailure)response_code="

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

    invoke-static {v1, v2}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    const-string/jumbo v2, "Load History Fail!!!"

    # invokes: Lcom/samsung/privilege/activity/CampaignReviewActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$1300(Lcom/samsung/privilege/activity/CampaignReviewActivity;Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$1100(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 416
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$1000(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$2;

    invoke-direct {v2, p0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$2;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$6;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    const/4 v2, 0x0

    # setter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->loading:Z
    invoke-static {v1, v2}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$402(Lcom/samsung/privilege/activity/CampaignReviewActivity;Z)Z

    .line 425
    return-void
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 8
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 371
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([B)V

    .line 372
    .local v0, "response_text":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$800(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(loadCampaignReview|onComplete)response_code="

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

    .line 374
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$1100(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 376
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignReviewActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignReviewActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignReviewActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignReviewActivity;->access$1000(Lcom/samsung/privilege/activity/CampaignReviewActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/privilege/activity/CampaignReviewActivity$6$1;-><init>(Lcom/samsung/privilege/activity/CampaignReviewActivity$6;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 405
    return-void
.end method
