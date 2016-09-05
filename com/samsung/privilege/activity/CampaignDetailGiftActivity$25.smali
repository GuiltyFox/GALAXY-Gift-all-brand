.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$25;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 2582
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$25;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 2584
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2586
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$25;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2587
    const-string/jumbo v1, "force_update"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2588
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$25;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->startActivity(Landroid/content/Intent;)V

    .line 2589
    return-void
.end method
