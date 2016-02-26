.class Lcom/samsung/privilege/activity/CampaignDetailActivity$13$2;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$13;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$13;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailActivity$13;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$13$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$13;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$13$2;->val$response_text:Ljava/lang/String;

    .line 2005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 2009
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$13$2;->val$response_text:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2010
    .local v3, "json_result":Lorg/json/JSONObject;
    const-string v5, "error"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2011
    .local v2, "json_error":Lorg/json/JSONObject;
    const-string v5, "id"

    invoke-static {v2, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2012
    .local v1, "id":Ljava/lang/String;
    const-string v5, "message"

    invoke-static {v2, v5}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2013
    .local v4, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$13$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$13;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$13;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity$13;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$13;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    .line 2018
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "json_error":Lorg/json/JSONObject;
    .end local v3    # "json_result":Lorg/json/JSONObject;
    :goto_22
    return-void

    .line 2014
    .end local v4    # "message":Ljava/lang/String;
    :catch_23
    move-exception v0

    .line 2015
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$13$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$13;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$13;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity$13;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$13;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v5

    const v6, 0x7f0902a4

    invoke-virtual {v5, v6}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2016
    .restart local v4    # "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$13$2;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$13;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$13;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity$13;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$13;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/samsung/privilege/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_22
.end method
