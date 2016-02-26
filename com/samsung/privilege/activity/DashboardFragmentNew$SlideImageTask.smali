.class Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;
.super Ljava/util/TimerTask;
.source "DashboardFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/DashboardFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlideImageTask"
.end annotation


# instance fields
.field gPagerPhoto:Landroid/support/v4/view/ViewPager;

.field final synthetic this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;


# direct methods
.method public constructor <init>(Lcom/samsung/privilege/activity/DashboardFragmentNew;Landroid/support/v4/view/ViewPager;)V
    .registers 3
    .param p2, "pPagerPhoto"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 1564
    iput-object p1, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1565
    iput-object p2, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;->gPagerPhoto:Landroid/support/v4/view/ViewPager;

    .line 1566
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1570
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;->this$0:Lcom/samsung/privilege/activity/DashboardFragmentNew;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/DashboardFragmentNew;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask$1;-><init>(Lcom/samsung/privilege/activity/DashboardFragmentNew$SlideImageTask;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1586
    :cond_16
    return-void
.end method
