.class Lcom/samsung/privilege/activity/DashboardFragmentNew$9;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew;->InitialDashboardItemBigPager(Lcom/samsung/privilege/bean/DashboardItem;ZZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

.field private final synthetic val$pagerPhoto:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$9;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    iput-object p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$9;->val$pagerPhoto:Landroid/support/v4/view/ViewPager;

    .line 1537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1541
    :try_start_1
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$9;->val$pagerPhoto:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_33

    .line 1542
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$9;->val$pagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v1, :cond_33

    .line 1543
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$9;->val$pagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$9;->val$pagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_33

    .line 1544
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$9;->val$pagerPhoto:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$9;->val$pagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_34

    .line 1551
    :cond_33
    :goto_33
    return-void

    .line 1548
    :catch_34
    move-exception v0

    goto :goto_33
.end method
