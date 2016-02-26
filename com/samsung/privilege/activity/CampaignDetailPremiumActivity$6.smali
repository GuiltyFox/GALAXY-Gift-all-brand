.class Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$6;
.super Ljava/lang/Object;
.source "CampaignDetailPremiumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->showDialogInfo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

.field private final synthetic val$dialogInfo:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$6;->val$dialogInfo:Landroid/app/Dialog;

    .line 1224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$6;->val$dialogInfo:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1227
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity$6;->this$0:Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;->access$12(Lcom/samsung/privilege/activity/CampaignDetailPremiumActivity;Z)V

    .line 1228
    return-void
.end method
