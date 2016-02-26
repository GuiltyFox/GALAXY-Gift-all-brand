.class Lcom/samsung/privilege/activity/CampaignListActivity$7$1;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/CampaignListActivity$7;

.field private final synthetic val$activityContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity$7;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$7$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$7;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$7$1;->val$activityContext:Landroid/content/Context;

    .line 1159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$7$1;->this$1:Lcom/samsung/privilege/activity/CampaignListActivity$7;

    # getter for: Lcom/samsung/privilege/activity/CampaignListActivity$7;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignListActivity$7;->access$0(Lcom/samsung/privilege/activity/CampaignListActivity$7;)Lcom/samsung/privilege/activity/CampaignListActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$7$1;->val$activityContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignListActivity;->showDialogPointTransferConfirm(Landroid/content/Context;)V

    .line 1163
    return-void
.end method
