.class Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$2;
.super Ljava/lang/Object;
.source "CampaignListGiftFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;)V
    .registers 2

    .prologue
    .line 411
    iput-object p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$2;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 414
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$2;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->h(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 415
    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 417
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$2;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->b:I

    if-nez v0, :cond_3d

    .line 418
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$2;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->h(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10061e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 419
    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$2;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    const v2, 0x7f090342

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 422
    :cond_3d
    return-void
.end method
