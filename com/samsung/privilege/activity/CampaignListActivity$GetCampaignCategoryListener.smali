.class Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "CampaignListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCampaignCategoryListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;)V
    .registers 2

    .prologue
    .line 266
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;)V
    .registers 3

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;)Lcom/samsung/privilege/activity/CampaignListActivity;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 290
    const/16 v0, -0x1f4

    invoke-virtual {p0, v0, p2}, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;->onSuccess(ILjava/lang/String;)V

    .line 291
    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .registers 6
    .param p1, "response_code"    # I
    .param p2, "response_text"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$1(Lcom/samsung/privilege/activity/CampaignListActivity;)Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_30

    .line 272
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    new-instance v1, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener$1;-><init>(Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 285
    :cond_30
    return-void
.end method
