.class public Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "AdminCampaignActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/AdminCampaignActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCampaignListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/AdminCampaignActivity;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;)Lcom/samsung/privilege/activity/AdminCampaignActivity;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 12
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 135
    const-string v5, "AdminCampaignActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "response_code="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",response_text="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, "blnIsAdmin":Z
    :try_start_1f
    iget-object v5, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    invoke-virtual {v5}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/privilege/UserLogin;->IS_ADMIN(Landroid/content/Context;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_4e

    move-result v5

    if-eqz v5, :cond_2c

    .line 140
    const/4 v0, 0x1

    .line 146
    :cond_2c
    :goto_2c
    const/16 v5, 0xc8

    if-ne p1, v5, :cond_90

    .line 148
    :try_start_30
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    .local v4, "jsonRoot":Lorg/json/JSONObject;
    new-instance v1, Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {v1, v4}, Lcom/samsung/privilege/bean/CampaignView;-><init>(Lorg/json/JSONObject;)V

    .line 150
    .local v1, "campaign":Lcom/samsung/privilege/bean/CampaignView;
    iget-object v5, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity;->gCampaignViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->access$1(Lcom/samsung/privilege/activity/AdminCampaignActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v5, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    new-instance v6, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener$1;

    invoke-direct {v6, p0}, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener$1;-><init>(Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;)V

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4d} :catch_6c

    .line 177
    .end local v1    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .end local v4    # "jsonRoot":Lorg/json/JSONObject;
    :goto_4d
    return-void

    .line 142
    :catch_4e
    move-exception v3

    .line 143
    .local v3, "e2":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminCampaignActivity;->TAG:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->access$0(Lcom/samsung/privilege/activity/AdminCampaignActivity;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception := "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 163
    .end local v3    # "e2":Ljava/lang/Exception;
    :catch_6c
    move-exception v2

    .line 164
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_88

    .line 165
    iget-object v5, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid campaign data format!\r\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/samsung/privilege/activity/AdminCampaignActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->access$4(Lcom/samsung/privilege/activity/AdminCampaignActivity;Ljava/lang/String;)V

    goto :goto_4d

    .line 167
    :cond_88
    iget-object v5, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    const-string v6, "Invalid campaign data format!"

    # invokes: Lcom/samsung/privilege/activity/AdminCampaignActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->access$4(Lcom/samsung/privilege/activity/AdminCampaignActivity;Ljava/lang/String;)V

    goto :goto_4d

    .line 171
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_90
    if-eqz v0, :cond_b1

    .line 172
    iget-object v5, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Can not get campaign data!\r\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/samsung/privilege/activity/AdminCampaignActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->access$4(Lcom/samsung/privilege/activity/AdminCampaignActivity;Ljava/lang/String;)V

    goto :goto_4d

    .line 174
    :cond_b1
    iget-object v5, p0, Lcom/samsung/privilege/activity/AdminCampaignActivity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/AdminCampaignActivity;

    const-string v6, "Can not get campaign data!"

    # invokes: Lcom/samsung/privilege/activity/AdminCampaignActivity;->showToast(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/samsung/privilege/activity/AdminCampaignActivity;->access$4(Lcom/samsung/privilege/activity/AdminCampaignActivity;Ljava/lang/String;)V

    goto :goto_4d
.end method
