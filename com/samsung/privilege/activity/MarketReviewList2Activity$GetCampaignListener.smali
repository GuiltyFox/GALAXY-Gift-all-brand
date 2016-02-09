.class public Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetCampaignListener;
.super Lcom/samsung/privilege/util/http/HttpRQListener;
.source "MarketReviewList2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/MarketReviewList2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCampaignListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)V
    .registers 2

    .prologue
    .line 301
    iput-object p1, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-direct {p0}, Lcom/samsung/privilege/util/http/HttpRQListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 308
    const/16 v3, 0xc8

    if-ne p1, v3, :cond_22

    .line 310
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 311
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    new-instance v0, Lcom/samsung/privilege/bean/CampaignView;

    invoke-direct {v0, v2}, Lcom/samsung/privilege/bean/CampaignView;-><init>(Lorg/json/JSONObject;)V

    .line 313
    .local v0, "campaign":Lcom/samsung/privilege/bean/CampaignView;
    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    invoke-static {v3, v0}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$0(Lcom/samsung/privilege/activity/MarketReviewList2Activity;Lcom/samsung/privilege/bean/CampaignView;)V

    .line 314
    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    # invokes: Lcom/samsung/privilege/activity/MarketReviewList2Activity;->setLayoutByCatch()V
    invoke-static {v3}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->access$1(Lcom/samsung/privilege/activity/MarketReviewList2Activity;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    .line 322
    .end local v0    # "campaign":Lcom/samsung/privilege/bean/CampaignView;
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    :goto_18
    return-void

    .line 315
    :catch_19
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    const-string v4, "Can not open campaign review at this time, please try again later..."

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    goto :goto_18

    .line 319
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_22
    iget-object v3, p0, Lcom/samsung/privilege/activity/MarketReviewList2Activity$GetCampaignListener;->this$0:Lcom/samsung/privilege/activity/MarketReviewList2Activity;

    const-string v4, "Can not open campaign review at this time, please try again later..."

    invoke-virtual {v3, v4}, Lcom/samsung/privilege/activity/MarketReviewList2Activity;->showToast(Ljava/lang/String;)V

    goto :goto_18
.end method
