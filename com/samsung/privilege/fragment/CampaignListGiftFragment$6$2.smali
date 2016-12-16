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
    .line 435
    iput-object p1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$2;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$2;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->h(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 440
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 442
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$2;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->b:I

    if-nez v0, :cond_3e

    .line 443
    iget-object v0, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$2;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    invoke-static {v0}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->h(Lcom/samsung/privilege/fragment/CampaignListGiftFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100641

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 444
    iget-object v1, p0, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6$2;->a:Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/CampaignListGiftFragment$6;->c:Lcom/samsung/privilege/fragment/CampaignListGiftFragment;

    const v2, 0x7f090358

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/fragment/CampaignListGiftFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 450
    :cond_3e
    :goto_3e
    return-void

    .line 447
    :catch_3f
    move-exception v0

    goto :goto_3e
.end method
