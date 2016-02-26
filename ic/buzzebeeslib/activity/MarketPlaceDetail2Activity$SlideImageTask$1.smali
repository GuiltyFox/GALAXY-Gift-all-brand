.class Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetail2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;

    .line 4330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 4332
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$23(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 4333
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$23(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 4334
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$23(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-le v0, v2, :cond_63

    .line 4335
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$23(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$23(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_64

    .line 4336
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$23(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 4343
    :cond_63
    :goto_63
    return-void

    .line 4338
    :cond_64
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$23(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity$SlideImageTask;)Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->gPagerImageCampaign:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;->access$23(Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_63
.end method
