.class Lcom/samsung/privilege/activity/CampaignListActivity$8;
.super Ljava/lang/Object;
.source "CampaignListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignListActivity;->showDialogPointTransfer(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

.field private final synthetic val$dialogPoint:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignListActivity;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignListActivity$8;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignListActivity$8;->val$dialogPoint:Landroid/app/Dialog;

    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$8;->val$dialogPoint:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1172
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$8;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/privilege/activity/CampaignListActivity;->gIsShowingMessage:Z

    .line 1173
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignListActivity$8;->this$0:Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CampaignListActivity;->checkAndShowDialogMessagePopup()V

    .line 1174
    return-void
.end method
