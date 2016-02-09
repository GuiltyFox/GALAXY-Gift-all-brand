.class public Lic/buzzebeeslib/activity/HelpCenterListActivity$GetCampaignListener;
.super Lic/buzzebeeslib/util/http/HttpRQListener;
.source "HelpCenterListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/HelpCenterListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetCampaignListener"
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V
    .registers 2

    .prologue
    .line 409
    iput-object p1, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-direct {p0}, Lic/buzzebeeslib/util/http/HttpRQListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/Object;

    .prologue
    .line 416
    const/16 v3, 0xc8

    if-ne p1, v3, :cond_22

    .line 418
    :try_start_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 419
    .local v2, "jsonRoot":Lorg/json/JSONObject;
    new-instance v0, Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {v0, v2}, Lic/buzzebeeslib/bean/Campaign;-><init>(Lorg/json/JSONObject;)V

    .line 421
    .local v0, "campaign":Lic/buzzebeeslib/bean/Campaign;
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    invoke-static {v3, v0}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$0(Lic/buzzebeeslib/activity/HelpCenterListActivity;Lic/buzzebeeslib/bean/Campaign;)V

    .line 422
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    # invokes: Lic/buzzebeeslib/activity/HelpCenterListActivity;->setLayoutByCatch()V
    invoke-static {v3}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->access$1(Lic/buzzebeeslib/activity/HelpCenterListActivity;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_19

    .line 430
    .end local v0    # "campaign":Lic/buzzebeeslib/bean/Campaign;
    .end local v2    # "jsonRoot":Lorg/json/JSONObject;
    :goto_18
    return-void

    .line 423
    :catch_19
    move-exception v1

    .line 424
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    const-string v4, "Can not open campaign review at this time, please try again later..."

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_18

    .line 427
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_22
    iget-object v3, p0, Lic/buzzebeeslib/activity/HelpCenterListActivity$GetCampaignListener;->this$0:Lic/buzzebeeslib/activity/HelpCenterListActivity;

    const-string v4, "Can not open campaign review at this time, please try again later..."

    invoke-virtual {v3, v4}, Lic/buzzebeeslib/activity/HelpCenterListActivity;->showToast(Ljava/lang/String;)V

    goto :goto_18
.end method
