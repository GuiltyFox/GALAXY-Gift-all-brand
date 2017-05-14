.class Lcom/samsung/privilege/fragment/CampaignListGiftFragment$1;
.super Ljava/lang/Object;
.source "CampaignListGiftFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/fragment/CampaignListGiftFragment;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$1;->b:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-virtual {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    return-void
.end method
