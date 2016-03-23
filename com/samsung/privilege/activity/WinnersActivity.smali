.class public Lcom/samsung/privilege/activity/WinnersActivity;
.super Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.source "WinnersActivity.java"


# instance fields
.field containerWinner:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1001cb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method private initFragment()V
    .registers 4

    .prologue
    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WinnersActivity;->arguments:Landroid/os/Bundle;

    .line 49
    new-instance v0, Lcom/samsung/privilege/fragment/WinnerListFragment;

    invoke-direct {v0}, Lcom/samsung/privilege/fragment/WinnerListFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/WinnersActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 50
    iget-object v0, p0, Lcom/samsung/privilege/activity/WinnersActivity;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WinnersActivity;->arguments:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WinnersActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f1001cb

    iget-object v2, p0, Lcom/samsung/privilege/activity/WinnersActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 55
    return-void
.end method


# virtual methods
.method public createLayout(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 29
    if-nez p1, :cond_23

    .line 30
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WinnersActivity;->setToolbarShowHome()V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WinnersActivity;->setActionBarIcon(I)V

    .line 33
    const v0, 0x7f090208

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WinnersActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/WinnersActivity;->setToolbarTitle(Ljava/lang/String;Z)V

    .line 34
    const v0, 0x7f020274

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/WinnersActivity;->setToolbarImageLogoHeader(I)V

    .line 35
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WinnersActivity;->hideLayoutPoint(Z)V

    .line 36
    invoke-direct {p0}, Lcom/samsung/privilege/activity/WinnersActivity;->initFragment()V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/WinnersActivity;->setHideSearch()V

    .line 39
    :cond_23
    return-void
.end method

.method public getLayoutResource()I
    .registers 2

    .prologue
    .line 24
    const v0, 0x7f040051

    return v0
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 59
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onResume()V

    .line 60
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/WinnersActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 61
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 62
    iget-object v1, p0, Lcom/samsung/privilege/activity/WinnersActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v2, 0x7f09024a

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/WinnersActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    :cond_1e
    return-void
.end method

.method protected setFontTypeFace()V
    .registers 1

    .prologue
    .line 44
    return-void
.end method
