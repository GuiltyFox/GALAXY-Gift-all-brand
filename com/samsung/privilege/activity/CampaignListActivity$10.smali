.class Lcom/samsung/privilege/activity/CampaignListActivity$10;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;->showDialogPointTransferConfirm(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

.field private final synthetic val$activityContext:Landroid/content/Context;

.field private final synthetic val$dialogPoint:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/app/Dialog;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$10;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$10;->val$dialogPoint:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$10;->val$activityContext:Landroid/content/Context;

    .line 1212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1214
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$10;->val$dialogPoint:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1216
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/auth/transfer?isTransfer=false&token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$10;->val$activityContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1217
    .local v0, "url":Ljava/lang/String;
    const-string v1, "CampaignListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trasfer_no="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/privilege/util/DialogUtil$NotTransferListener;

    iget-object v3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$10;->val$activityContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/privilege/util/DialogUtil$NotTransferListener;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/BuzzbeesRestClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1220
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$10;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsShowingMessage:Z

    .line 1221
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$10;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->checkAndShowDialogMessagePopup()V

    .line 1222
    return-void
.end method
