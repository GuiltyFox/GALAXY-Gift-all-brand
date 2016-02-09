.class public Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "CampaignDetailAdBuzzActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCampaignListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)V
    .registers 2

    .prologue
    .line 229
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;)Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 232
    const-string v3, "campaign.adbuzz"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(GetCampaignListener|onComplete)response={"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "}:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v4, "campaign.adbuzz"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, " !isFinishing() "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_a3

    const/4 v3, 0x0

    :goto_30
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-virtual {v3}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_a2

    .line 237
    const/16 v3, 0xc8

    if-ne p1, v3, :cond_ae

    .line 239
    :try_start_47
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    new-instance v0, Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {v0, v2}, Lic/buzzebeeslib/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    .line 242
    .local v0, "campaign":Lic/buzzebeeslib/bean/Campaign;
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    invoke-static {v3, v0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$0(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Lic/buzzebeeslib/bean/Campaign;)V

    .line 244
    const-string v3, "campaign.adbuzz"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "paramCampaign.ID="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string v3, "campaign.adbuzz"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "paramCampaign.Name="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    # getter for: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->paramCampaign:Lic/buzzebeeslib/bean/Campaign;
    invoke-static {v5}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$1(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;)Lic/buzzebeeslib/bean/Campaign;

    move-result-object v5

    iget-object v5, v5, Lic/buzzebeeslib/bean/Campaign;->Name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    new-instance v4, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener$1;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener$1;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;)V

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_98} :catch_a5

    .line 295
    .end local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    :goto_98
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    new-instance v4, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener$2;

    invoke-direct {v4, p0}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener$2;-><init>(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;)V

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 301
    :cond_a2
    return-void

    .line 234
    :cond_a3
    const/4 v3, 0x1

    goto :goto_30

    .line 263
    :catch_a5
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    const-string v4, "Invalid campaign data format!"

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Ljava/lang/String;)V

    goto :goto_98

    .line 292
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_ae
    iget-object v3, p0, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;

    const-string v4, "Can not get campaign data!"

    # invokes: Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;->access$3(Lic/buzzebeeslib/activity/CampaignDetailAdBuzzActivity;Ljava/lang/String;)V

    goto :goto_98
.end method
