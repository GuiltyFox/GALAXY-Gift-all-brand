.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CampaignDetailGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->goGetPoint(Ljava/lang/String;Lcom/bzbs/bean/Campaign;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;J)V
    .registers 4
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 2851
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-wide p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;->val$startTime:J

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
    .line 2890
    :try_start_0
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2891
    .local v0, "endTime":J
    const-string/jumbo v5, "Campaign"

    const-string/jumbo v6, "getPoints"

    const-string/jumbo v7, "Failure"

    iget-wide v8, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;->val$startTime:J

    sub-long v8, v0, v8

    invoke-static {v5, v6, v7, v8, v9}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsTiming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_77

    .line 2896
    .end local v0    # "endTime":J
    :goto_19
    const-string/jumbo v3, ""

    .line 2898
    .local v3, "response_text":Ljava/lang/String;
    :try_start_1c
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p3}, Ljava/lang/String;-><init>([B)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_21} :catch_57

    .line 2899
    .end local v3    # "response_text":Ljava/lang/String;
    .local v4, "response_text":Ljava/lang/String;
    :try_start_21
    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(goGetPoint|onFailure)response_code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",response="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_47} :catch_74

    move-object v3, v4

    .line 2904
    .end local v4    # "response_text":Ljava/lang/String;
    .restart local v3    # "response_text":Ljava/lang/String;
    :goto_48
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$100(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2906
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v5, p1, p2, p3, p4}, Lcom/bzbs/util/DialogUtil;->showDialogHttpFailure(Landroid/content/Context;I[Lcz/msebera/android/httpclient/Header;[BLjava/lang/Throwable;)V

    .line 2907
    return-void

    .line 2900
    :catch_57
    move-exception v2

    .line 2901
    .local v2, "ex":Ljava/lang/Exception;
    :goto_58
    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(goGetPoint|onFailure)response_code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bzbs/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    .line 2900
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "response_text":Ljava/lang/String;
    .restart local v4    # "response_text":Ljava/lang/String;
    :catch_74
    move-exception v2

    move-object v3, v4

    .end local v4    # "response_text":Ljava/lang/String;
    .restart local v3    # "response_text":Ljava/lang/String;
    goto :goto_58

    .line 2892
    .end local v3    # "response_text":Ljava/lang/String;
    :catch_77
    move-exception v5

    goto :goto_19
.end method

.method public onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
    .registers 12
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lcz/msebera/android/httpclient/Header;
    .param p3, "responseBody"    # [B

    .prologue
    .line 2855
    :try_start_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2856
    .local v0, "endTime":J
    const-string/jumbo v3, "Campaign"

    const-string/jumbo v4, "getPoints"

    const-string/jumbo v5, "Success"

    iget-wide v6, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;->val$startTime:J

    sub-long v6, v0, v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsTiming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_5c

    .line 2861
    .end local v0    # "endTime":J
    :goto_19
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    .line 2862
    .local v2, "response_text":Ljava/lang/String;
    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(goGetPoint|onComplete)response_code="

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

    .line 2864
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$100(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2867
    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1000(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28$1;

    invoke-direct {v4, p0, v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28$1;-><init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$28;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2885
    return-void

    .line 2857
    .end local v2    # "response_text":Ljava/lang/String;
    :catch_5c
    move-exception v3

    goto :goto_19
.end method
