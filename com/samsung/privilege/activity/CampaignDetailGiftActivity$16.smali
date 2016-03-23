.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->setUI_Pager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    .prologue
    .line 1468
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "i"    # I

    .prologue
    .line 1499
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "v"    # F
    .param p3, "i2"    # I

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1400(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1472
    return-void
.end method

.method public onPageSelected(I)V
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 1477
    const/4 v0, 0x0

    .line 1478
    .local v0, "intLast":I
    :try_start_1
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    if-eqz v2, :cond_21

    .line 1479
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 1485
    :cond_21
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gLayoutPagerNav:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1600(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 1486
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_2a
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1500(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_54

    .line 1487
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gLayoutPagerNav:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1600(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1000fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0202a5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1486
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1489
    :cond_54
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$16;->this$0:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    # getter for: Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->gLayoutPagerNav:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->access$1600(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1000fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0202a4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6d} :catch_6e

    .line 1494
    .end local v1    # "x":I
    :cond_6d
    :goto_6d
    return-void

    .line 1491
    :catch_6e
    move-exception v2

    goto :goto_6d
.end method
