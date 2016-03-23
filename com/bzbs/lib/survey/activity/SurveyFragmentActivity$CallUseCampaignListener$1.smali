.class Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener$1;
.super Ljava/lang/Object;
.source "SurveyFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener;->onSuccess(I[Lcz/msebera/android/httpclient/Header;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener;

.field final synthetic val$response_text:Ljava/lang/String;

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener;ILjava/lang/String;)V
    .registers 4
    .param p1, "this$1"    # Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener;

    .prologue
    .line 4903
    iput-object p1, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener;

    iput p2, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener$1;->val$statusCode:I

    iput-object p3, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x0

    .line 4905
    iget v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener$1;->val$statusCode:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_35

    .line 4906
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    iget-object v5, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener$1;->val$response_text:Ljava/lang/String;

    const-class v6, Lcom/bzbs/lib/survey/bean/Campaign;

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/lib/survey/bean/Campaign;

    .line 4907
    .local v0, "campaign":Lcom/bzbs/lib/survey/bean/Campaign;
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    # getter for: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->paramCampaign:Lcom/bzbs/lib/survey/bean/Campaign;
    invoke-static {v4}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$000(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;)Lcom/bzbs/lib/survey/bean/Campaign;

    move-result-object v4

    iget-wide v6, v0, Lcom/bzbs/lib/survey/bean/Campaign;->ExpireIn:J

    iput-wide v6, v4, Lcom/bzbs/lib/survey/bean/Campaign;->ExpireIn:J

    .line 4909
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 4910
    .local v1, "dateNow":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long v2, v4, v8

    .line 4911
    .local v2, "server_time":J
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v8

    .line 4924
    .end local v0    # "campaign":Lcom/bzbs/lib/survey/bean/Campaign;
    .end local v1    # "dateNow":Ljava/util/Date;
    .end local v2    # "server_time":J
    :goto_34
    return-void

    .line 4921
    :cond_35
    iget-object v4, p0, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener$1;->this$1:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener;

    iget-object v4, v4, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity$CallUseCampaignListener;->this$0:Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;

    const/4 v5, 0x1

    # invokes: Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->stepEnd(ZZZ)V
    invoke-static {v4, v6, v6, v5}, Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;->access$5600(Lcom/bzbs/lib/survey/activity/SurveyFragmentActivity;ZZZ)V

    goto :goto_34
.end method
