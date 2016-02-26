.class Lcom/samsung/privilege/activity/CampaignListActivity$17$1;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignListActivity$17;

.field private final synthetic val$layoutPopupWelcome:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity$17;Landroid/widget/RelativeLayout;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$17;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$1;->val$layoutPopupWelcome:Landroid/widget/RelativeLayout;

    .line 1697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$1;->val$layoutPopupWelcome:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1701
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$17;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsShowingMessage:Z

    .line 1702
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$17$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$17;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$17;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$17;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$17;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->checkAndShowDialogMessagePopup()V

    .line 1703
    return-void
.end method
