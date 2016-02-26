.class Lcom/samsung/privilege/activity/CampaignDetailActivity$13$1;
.super Ljava/lang/Object;
.source "CampaignDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailActivity$13;->onSuccess(ILjava/lang/String;)V
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
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$13$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$13;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$13$1;->val$response_text:Ljava/lang/String;

    .line 1983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1987
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$13$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1988
    .local v0, "jsonRoot":Lorg/json/JSONObject;
    const-string v4, "buzzebees"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1989
    .local v1, "json_buzzebees":Lorg/json/JSONObject;
    const-string v4, "points"

    invoke-static {v1, v4}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 1990
    .local v2, "points":I
    if-lez v2, :cond_2a

    .line 1991
    const-string v3, ""

    .line 1992
    .local v3, "strFrom":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$13$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$13;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$13;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity$13;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$13;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v4

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity;->gHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailActivity;->access$6(Lcom/samsung/privilege/activity/CampaignDetailActivity;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/privilege/activity/CampaignDetailActivity$13$1;->this$1:Lcom/samsung/privilege/activity/CampaignDetailActivity$13;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailActivity$13;->this$0:Lcom/samsung/privilege/activity/CampaignDetailActivity;
    invoke-static {v5}, Lcom/samsung/privilege/activity/CampaignDetailActivity$13;->access$0(Lcom/samsung/privilege/activity/CampaignDetailActivity$13;)Lcom/samsung/privilege/activity/CampaignDetailActivity;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 1997
    .end local v0    # "jsonRoot":Lorg/json/JSONObject;
    .end local v1    # "json_buzzebees":Lorg/json/JSONObject;
    .end local v2    # "points":I
    .end local v3    # "strFrom":Ljava/lang/String;
    :cond_2a
    :goto_2a
    return-void

    .line 1994
    :catch_2b
    move-exception v4

    goto :goto_2a
.end method
