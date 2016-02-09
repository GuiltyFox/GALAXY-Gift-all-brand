.class Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask$1;
.super Ljava/lang/Object;
.source "DashboardFragmentNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 878
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;

    iget-object v0, v0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3f

    .line 879
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;

    iget-object v0, v0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 880
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;

    iget-object v0, v0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_3f

    .line 881
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;

    iget-object v0, v0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;

    iget-object v1, v1, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_40

    .line 882
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;

    iget-object v0, v0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 889
    :cond_3f
    :goto_3f
    return-void

    .line 884
    :cond_40
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;

    iget-object v0, v0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;

    iget-object v1, v1, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_3f
.end method
