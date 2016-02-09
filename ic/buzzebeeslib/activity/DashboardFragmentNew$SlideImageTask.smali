.class Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;
.super Ljava/util/TimerTask;
.source "DashboardFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lic/buzzebeeslib/activity/DashboardFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlideImageTask"
.end annotation


# instance fields
.field gPagerPhoto:Landroid/support/v4/view/ViewPager;

.field final synthetic this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;


# direct methods
.method public constructor <init>(Lic/buzzebeeslib/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V
    .registers 3
    .param p2, "pPagerPhoto"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 870
    iput-object p1, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 871
    iput-object p2, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    .line 872
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 875
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 876
    iget-object v0, p0, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;->this$0:Lic/buzzebeeslib/activity/DashboardFragmentNew;

    invoke-virtual {v0}, Lic/buzzebeeslib/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask$1;-><init>(Lic/buzzebeeslib/activity/DashboardFragmentNew$SlideImageTask;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 892
    :cond_16
    return-void
.end method
