.class Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask$1;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;

    .line 1524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1526
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3f

    .line 1527
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 1528
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_3f

    .line 1529
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;

    iget-object v1, v1, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_40

    .line 1530
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1537
    :cond_3f
    :goto_3f
    return-void

    .line 1532
    :cond_40
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;

    iget-object v0, v0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;

    iget-object v1, v1, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_3f
.end method
