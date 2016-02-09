.class Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CampaignListBuzzebees2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCampaignCategoryListener"
.end annotation


# instance fields
.field private gSavedInstanceState:Landroid/os/Bundle;

.field final synthetic this$0:Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;Landroid/os/Bundle;)V
    .registers 3
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    iput-object p1, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 114
    iput-object p2, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;->gSavedInstanceState:Landroid/os/Bundle;

    .line 115
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;)Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;->onSuccess(ILjava/lang/String;)V

    .line 134
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;

    # getter for: Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->access$0(Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(GetCampaignCategoryListener|onComplete)response={"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_30

    .line 122
    iget-object v0, p0, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;->this$0:Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;

    new-instance v1, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener$1;

    invoke-direct {v1, p0, p2}, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener$1;-><init>(Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity$GetCampaignCategoryListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/CampaignListBuzzebees2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 128
    :cond_30
    return-void
.end method
