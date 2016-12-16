.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Landroid/app/Dialog;)V
    .registers 3

    .prologue
    .line 3100
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 3102
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3103
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->a(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)Z

    .line 3104
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$29;->b:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->r(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->b(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;Z)V

    .line 3105
    return-void
.end method
