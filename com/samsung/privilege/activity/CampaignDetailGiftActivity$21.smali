.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$21;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doConfirmCondition(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 2500
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$21;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$21;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 2502
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$21;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2503
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$21;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->doRedeem(Landroid/view/View;)V

    .line 2504
    return-void
.end method
