.class public Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "HelpCenterListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessActionLikeListener"
.end annotation


# instance fields
.field private gIsLike:Z

.field private gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

.field final synthetic this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    .registers 4
    .param p2, "isLike"    # Z
    .param p3, "tagLike"    # Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .prologue
    .line 1485
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    .line 1486
    iput-boolean p2, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;->gIsLike:Z

    .line 1487
    iput-object p3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    .line 1488
    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 1492
    const-string v3, "buzzebees.MarketReview"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(ProcessActionLikeListener|onComplete)response={"

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

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    const/16 v3, 0xc8

    if-ne p1, v3, :cond_59

    .line 1508
    const/4 v2, 0x0

    .line 1509
    .local v2, "points":I
    const-string v3, "true"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1510
    const/4 v2, 0x0

    .line 1576
    .end local v2    # "points":I
    :goto_2c
    return-void

    .line 1513
    .restart local v2    # "points":I
    :cond_2d
    :try_start_2d
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1514
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    const-string v3, "result"

    invoke-static {v1, v3}, Lic/buzzebeeslib/util/JsonUtil;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_37} :catch_3f

    .line 1517
    :try_start_37
    const-string v3, "buzzebees"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_3d
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_3c} :catch_3f

    goto :goto_2c

    .line 1545
    :catch_3d
    move-exception v3

    goto :goto_2c

    .line 1548
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    :catch_3f
    move-exception v0

    .line 1549
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "buzzebees.wall4"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "(JSONException|ProcessActionLikeListener|onComplete):"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1553
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "points":I
    :cond_59
    iget-boolean v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;->gIsLike:Z

    if-eqz v3, :cond_95

    .line 1556
    const-string v3, "OAuthException"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_74

    .line 1557
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    const-string v4, "You don\'t have permission to like this post!"

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->showToast(Ljava/lang/String;)V

    .line 1558
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    # invokes: Lic/buzzebeeslib/activity/HelpCenterListActivity;->processLikeAction(Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    invoke-static {v3, v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$11(Lic/buzzebeeslib/activity/HelpCenterListActivity;Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    goto :goto_2c

    .line 1560
    :cond_74
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    iget v3, v3, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->retry_count:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_83

    .line 1561
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    const-string v4, "Review Like Error!"

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_2c

    .line 1563
    :cond_83
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    iget v4, v3, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->retry_count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lic/buzzebeeslib/bean/TagLikeCampaignReview;->retry_count:I

    .line 1564
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iget-boolean v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;->gIsLike:Z

    iget-object v5, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    invoke-virtual {v3, v4, v5}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->doLike(ZLic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    goto :goto_2c

    .line 1569
    :cond_95
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    const-string v4, "Review UnLike Error!"

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->showToast(Ljava/lang/String;)V

    .line 1570
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    iget-object v4, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$ProcessActionLikeListener;->gTagLike:Lic/buzzebeeslib/bean/TagLikeCampaignReview;

    # invokes: Lic/buzzebeeslib/activity/HelpCenterListActivity;->processLikeAction(Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V
    invoke-static {v3, v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$11(Lic/buzzebeeslib/activity/HelpCenterListActivity;Lic/buzzebeeslib/bean/TagLikeCampaignReview;)V

    goto :goto_2c
.end method
