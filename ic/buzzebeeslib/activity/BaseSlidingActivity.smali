.class public Lic/buzzebeeslib/activity/BaseSlidingActivity;
.super Lcom/slidingmenu/lib/app/SlidingFragmentActivity;
.source "BaseSlidingActivity.java"


# instance fields
.field public IsMenuOnTheRight:Z

.field private TAG:Ljava/lang/String;

.field private mFrag:Landroid/support/v4/app/ListFragment;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "titleRes"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;-><init>()V

    .line 17
    const-class v0, Lic/buzzebeeslib/activity/BaseSlidingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/activity/BaseSlidingActivity;->TAG:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lic/buzzebeeslib/activity/BaseSlidingActivity;->IsMenuOnTheRight:Z

    .line 23
    return-void
.end method


# virtual methods
.method public ShowSlidingMenu()V
    .registers 5

    .prologue
    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 69
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lic/buzzebeeslib/activity/BaseSlidingActivity$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/BaseSlidingActivity$1;-><init>(Lic/buzzebeeslib/activity/BaseSlidingActivity;)V

    .line 73
    const-wide/16 v2, 0x64

    .line 69
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 27
    invoke-super {p0, p1}, Lcom/slidingmenu/lib/app/SlidingFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget v2, Lic/buzzebeeslib/R$layout;->bz_base_sliding:I

    invoke-virtual {p0, v2}, Lic/buzzebeeslib/activity/BaseSlidingActivity;->setBehindContentView(I)V

    .line 33
    if-nez p1, :cond_48

    .line 34
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/BaseSlidingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 35
    .local v1, "t":Landroid/support/v4/app/FragmentTransaction;
    new-instance v2, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;

    invoke-direct {v2}, Lic/buzzebeeslib/fragment/MenuMarketBuzzebeesFragment;-><init>()V

    iput-object v2, p0, Lic/buzzebeeslib/activity/BaseSlidingActivity;->mFrag:Landroid/support/v4/app/ListFragment;

    .line 36
    sget v2, Lic/buzzebeeslib/R$id;->menu_frame:I

    iget-object v3, p0, Lic/buzzebeeslib/activity/BaseSlidingActivity;->mFrag:Landroid/support/v4/app/ListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 37
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 43
    .end local v1    # "t":Landroid/support/v4/app/FragmentTransaction;
    :goto_24
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/BaseSlidingActivity;->getSlidingMenu()Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    .line 44
    .local v0, "sm":Lcom/slidingmenu/lib/SlidingMenu;
    iget-boolean v2, p0, Lic/buzzebeeslib/activity/BaseSlidingActivity;->IsMenuOnTheRight:Z

    if-eqz v2, :cond_2f

    .line 45
    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 47
    :cond_2f
    sget v2, Lic/buzzebeeslib/R$dimen;->shadow_width:I

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    .line 48
    sget v2, Lic/buzzebeeslib/R$drawable;->bz_shadow:I

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 49
    sget v2, Lic/buzzebeeslib/R$dimen;->slidingmenu_offset:I

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffsetRes(I)V

    .line 50
    const v2, 0x3eb33333

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 51
    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 54
    return-void

    .line 39
    .end local v0    # "sm":Lcom/slidingmenu/lib/SlidingMenu;
    :cond_48
    invoke-virtual {p0}, Lic/buzzebeeslib/activity/BaseSlidingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v3, Lic/buzzebeeslib/R$id;->menu_frame:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/ListFragment;

    iput-object v2, p0, Lic/buzzebeeslib/activity/BaseSlidingActivity;->mFrag:Landroid/support/v4/app/ListFragment;

    goto :goto_24
.end method
