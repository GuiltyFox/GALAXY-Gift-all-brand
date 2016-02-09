.class Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener$1;
.super Ljava/lang/Object;
.source "MainMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;

.field private final synthetic val$response_code:I

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;

    iput p2, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener$1;->val$response_code:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener$1;->val$response_text:Ljava/lang/String;

    .line 2319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 2322
    iget v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener$1;->val$response_code:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_46

    .line 2323
    const/4 v4, 0x0

    .line 2325
    .local v4, "points":I
    :try_start_7
    new-instance v3, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener$1;->val$response_text:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2326
    .local v3, "jsonRoot":Lorg/json/JSONObject;
    const-string v6, "buzzebees"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2327
    .local v2, "jsonBuzzebees":Lorg/json/JSONObject;
    const-string v6, "points"

    invoke-static {v2, v6}, Lcom/samsung/privilege/util/JsonUtil;->getInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 2328
    const-string v6, "description"

    invoke-static {v2, v6}, Lcom/samsung/privilege/util/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2330
    .local v5, "pointsDesc":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v6}, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v6

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment;->gHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/samsung/privilege/activity/MainMenuFragment;->access$11(Lcom/samsung/privilege/activity/MainMenuFragment;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v7}, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lic/buzzebeeslib/util/AnimationPoint;->showToastPointsGift(ILjava/lang/String;Landroid/os/Handler;Landroid/app/Activity;)V

    .line 2332
    iget-object v6, p0, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener$1;->this$1:Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;

    # getter for: Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->this$0:Lcom/samsung/privilege/activity/MainMenuFragment;
    invoke-static {v6}, Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;->access$0(Lcom/samsung/privilege/activity/MainMenuFragment$VerifySubmitListener;)Lcom/samsung/privilege/activity/MainMenuFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/privilege/activity/MainMenuFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/privilege/activity/CampaignListActivity;

    .line 2333
    .local v0, "activity":Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->getPoints()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_46} :catch_47

    .line 2339
    .end local v0    # "activity":Lcom/samsung/privilege/activity/CampaignListActivity;
    .end local v2    # "jsonBuzzebees":Lorg/json/JSONObject;
    .end local v3    # "jsonRoot":Lorg/json/JSONObject;
    .end local v4    # "points":I
    .end local v5    # "pointsDesc":Ljava/lang/String;
    :cond_46
    :goto_46
    return-void

    .line 2334
    .restart local v4    # "points":I
    :catch_47
    move-exception v1

    .line 2335
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "OAT"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ERRor= "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46
.end method
