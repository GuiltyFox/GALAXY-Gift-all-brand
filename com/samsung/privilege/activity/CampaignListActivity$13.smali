.class Lcom/samsung/privilege/activity/CampaignListActivity$13;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;->showDialogTerm(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

.field private final synthetic val$activityContext:Landroid/content/Context;

.field private final synthetic val$dialogTerm:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/app/Dialog;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$13;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$13;->val$dialogTerm:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/privilege/activity/CampaignListActivity$13;->val$activityContext:Landroid/content/Context;

    .line 1336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$13;->val$dialogTerm:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1340
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$13;->val$activityContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/privilege/UserLogin;->SetIsAcceptTerm(Landroid/content/Context;Z)Z

    .line 1341
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$13;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsShowingMessage:Z

    .line 1342
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$13;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->checkAndShowDialogMessagePopup()V

    .line 1343
    return-void
.end method
