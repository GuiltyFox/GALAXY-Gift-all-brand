.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getCampaign(ILcom/bzbs/bean/NFCTag;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

.field final synthetic val$auto_like:Z

.field final synthetic val$auto_redeem:Z

.field final synthetic val$id:I

.field final synthetic val$pNFCTag:Lcom/bzbs/bean/NFCTag;

.field final synthetic val$pbLoading:Landroid/widget/ProgressBar;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;JLandroid/widget/ProgressBar;ZZILcom/bzbs/bean/NFCTag;)V
    .registers 9
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-wide p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->val$startTime:J

    iput-object p4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->val$pbLoading:Landroid/widget/ProgressBar;

    iput-boolean p5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->val$auto_redeem:Z

    iput-boolean p6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->val$auto_like:Z

    iput p7, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->val$id:I

    iput-object p8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->val$pNFCTag:Lcom/bzbs/bean/NFCTag;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V
    .registers 15
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B
    .param p4, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 892
    :try_start_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 893
    .local v2, "endTime":J
    const-string/jumbo v4, "Campaign"

    const-string/jumbo v5, "loadCampaign"

    const-string/jumbo v6, "Failure"

    iget-wide v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->val$startTime:J

    sub-long v8, v2, v8

    invoke-static {v4, v5, v6, v8, v9}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsTiming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_75

    .line 899
    .end local v2    # "endTime":J
    :goto_19
    :try_start_19
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    .line 900
    .local v1, "response_text":Ljava/lang/String;
    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(getCampaign|onFailure)response_code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",response="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_44} :catch_58

    .line 905
    .end local v1    # "response_text":Ljava/lang/String;
    :goto_44
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$2;

    invoke-direct {v5, p0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$2;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 912
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v4, p1, p2, p3, p4}, Lcom/bzbs/util/DialogUtil;->showDialogHttpFailure(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 913
    return-void

    .line 901
    :catch_58
    move-exception v0

    .line 902
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(getCampaign|onFailure)response_code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    .line 894
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_75
    move-exception v4

    goto :goto_19
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 12
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 854
    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 855
    .local v0, "endTime":J
    const-string/jumbo v3, "Campaign"

    const-string/jumbo v4, "loadCampaign"

    const-string/jumbo v5, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->val$startTime:J

    sub-long v6, v0, v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsTiming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_53

    .line 860
    .end local v0    # "endTime":J
    :goto_19
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    .line 861
    .local v2, "response_text":Ljava/lang/String;
    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(getCampaign|onComplete)response_code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",response="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bzbs/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;

    invoke-direct {v4, p0, v2, p1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$11;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 887
    return-void

    .line 856
    .end local v2    # "response_text":Ljava/lang/String;
    :catch_53
    move-exception v3

    goto :goto_19
.end method
