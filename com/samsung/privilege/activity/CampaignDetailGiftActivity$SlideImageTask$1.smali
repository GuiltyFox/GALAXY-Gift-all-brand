.class Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;
.super Ljava/lang/Object;
.source "CampaignDetailGiftActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;)V
    .registers 2

    .prologue
    .line 1904
    iput-object p1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const v5, 0x7f100114

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 1907
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->o(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I

    move-result v1

    if-ne v1, v3, :cond_64

    .line 1908
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_64

    .line 1909
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v1

    if-le v1, v3, :cond_64

    .line 1910
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_196

    .line 1911
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1919
    :cond_64
    :goto_64
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->p(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_1d7

    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->o(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d7

    .line 1920
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->q(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    if-eqz v1, :cond_1d7

    .line 1921
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->q(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v1

    if-le v1, v3, :cond_1d7

    .line 1922
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->q(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v1

    .line 1925
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "----------------------------------------------"

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findFirstCompletelyVisibleItemPosition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v4, v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->q(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findFirstVisibleItemPosition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v4, v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->q(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findLastCompletelyVisibleItemPosition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v4, v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->q(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    invoke-static {}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findLastVisibleItemPosition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v4, v4, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v4}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->q(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bzbs/util/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->q(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1b1

    .line 1933
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->p(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    move v1, v0

    .line 1941
    :goto_15f
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_1d7

    move v2, v0

    .line 1942
    :goto_16a
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->l(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Lcom/bzbs/bean/Campaign;

    move-result-object v0

    iget-object v0, v0, Lcom/bzbs/bean/Campaign;->MarketGalleryView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1bf

    .line 1943
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f02019b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1942
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16a

    .line 1913
    :cond_196
    iget-object v1, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v1, v1, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->k(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_64

    .line 1936
    :cond_1b1
    add-int/lit8 v1, v1, 0x1

    .line 1937
    iget-object v2, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v2, v2, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->p(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_15f

    .line 1945
    :cond_1bf
    iget-object v0, p0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask$1;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity$SlideImageTask;->a:Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;->m(Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02019a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1951
    :cond_1d7
    return-void
.end method
