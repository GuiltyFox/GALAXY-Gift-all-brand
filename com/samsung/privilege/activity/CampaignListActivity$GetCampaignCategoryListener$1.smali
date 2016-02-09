.class Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener$1;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;

.field private final synthetic val$response_text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 262
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "category_gift_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;->access$1(Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;->access$1(Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/privilege/UserLogin;->GetLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;->access$1(Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/helper/LocalFileHelper;->saveCatchToSD(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;->access$1(Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$GetCampaignCategoryListener$1;->val$response_text:Ljava/lang/String;

    const/4 v2, 0x0

    # invokes: Lcom/samsung/privilege/activity/CampaignListActivity;->processJsonCategory(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/CampaignListActivity;->access$2(Lcom/samsung/privilege/activity/CampaignListActivity;Ljava/lang/String;Z)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51

    .line 268
    :goto_50
    return-void

    .line 265
    :catch_51
    move-exception v0

    goto :goto_50
.end method
