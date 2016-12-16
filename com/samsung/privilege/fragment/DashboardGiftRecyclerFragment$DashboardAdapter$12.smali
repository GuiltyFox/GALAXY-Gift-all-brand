.class Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$12;
.super Ljava/lang/Object;
.source "DashboardGiftRecyclerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;->g(Landroid/support/v7/widget/RecyclerView$ViewHolder;Lcom/bzbs/bean/DashboardItem;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;

.field final synthetic b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;)V
    .registers 3

    .prologue
    .line 1656
    iput-object p1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$12;->b:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter;

    iput-object p2, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$12;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1660
    :try_start_1
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$12;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3f

    .line 1661
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$12;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v0

    if-le v0, v1, :cond_3f

    .line 1662
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$12;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$12;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_3f

    .line 1663
    iget-object v0, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$12;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;

    iget-object v0, v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->e:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$12;->a:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;

    iget-object v1, v1, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment$DashboardAdapter$DashboardHolder_big_pager;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3f} :catch_40

    .line 1670
    :cond_3f
    :goto_3f
    return-void

    .line 1667
    :catch_40
    move-exception v0

    goto :goto_3f
.end method
