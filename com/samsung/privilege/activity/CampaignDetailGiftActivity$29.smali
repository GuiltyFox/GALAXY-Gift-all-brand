.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->showDialogInfo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

.field final synthetic val$dialogInfo:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 2976
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;->val$dialogInfo:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2978
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;->val$dialogInfo:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2979
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$802(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)Z

    .line 2980
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeeming:Z
    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$800(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Z

    move-result v1

    # invokes: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setRedeemButtonColor(Z)V
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$2400(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)V

    .line 2981
    return-void
.end method
