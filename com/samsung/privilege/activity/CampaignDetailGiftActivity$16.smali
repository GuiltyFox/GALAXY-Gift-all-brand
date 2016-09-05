.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->o()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 2

    .prologue
    .line 1627
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    .prologue
    .line 1658
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 6

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1631
    return-void
.end method

.method public onPageSelected(I)V
    .registers 5

    .prologue
    .line 1636
    .line 1637
    :try_start_0
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    .line 1638
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1644
    :cond_20
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 1645
    const/4 v0, 0x0

    move v1, v0

    :goto_2a
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_55

    .line 1646
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f100108

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f0202a3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1645
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    .line 1648
    :cond_55
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0202a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6e} :catch_6f

    .line 1653
    :cond_6e
    :goto_6e
    return-void

    .line 1650
    :catch_6f
    move-exception v0

    goto :goto_6e
.end method
