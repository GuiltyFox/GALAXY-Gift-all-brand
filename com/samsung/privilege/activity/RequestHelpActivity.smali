.class public Lcom/samsung/privilege/activity/RequestHelpActivity;
.super Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.source "RequestHelpActivity.java"


# instance fields
.field contentCode:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1001c0
    .end annotation
.end field

.field private httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

.field tvCode:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1001c1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method private getCode()V
    .registers 10

    .prologue
    .line 115
    invoke-static {}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlCode()Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "url":Ljava/lang/String;
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 117
    .local v2, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v6, "token"

    iget-object v7, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v7}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "samsung"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "GT-I9100"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "platform":Ljava/lang/String;
    const-string/jumbo v6, "platform"

    invoke-virtual {v2, v6, v3}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 121
    .local v0, "AndroidVersion":Ljava/lang/String;
    const-string/jumbo v6, "os"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "android "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string/jumbo v5, ""

    .line 124
    .local v5, "versionName":Ljava/lang/String;
    :try_start_56
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_65
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_56 .. :try_end_65} :catch_a6

    .line 128
    :goto_65
    const-string/jumbo v6, "client_version"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v8}, Lcom/bzbs/data/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/bzbs/util/PhoneManagerUtil;->GetSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "carrier":Ljava/lang/String;
    const-string/jumbo v6, "carrier"

    invoke-virtual {v2, v6, v1}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v6, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v7, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    sget-object v8, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->POST:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v6, v7, v4, v2, v8}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    iput-object v6, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .line 133
    iget-object v6, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    new-instance v7, Lcom/samsung/privilege/activity/RequestHelpActivity$1;

    invoke-direct {v7, p0}, Lcom/samsung/privilege/activity/RequestHelpActivity$1;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity;)V

    invoke-virtual {v6, v7}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->excute(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 148
    return-void

    .line 125
    .end local v1    # "carrier":Ljava/lang/String;
    :catch_a6
    move-exception v6

    goto :goto_65
.end method

.method private initFragment()V
    .registers 4

    .prologue
    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->arguments:Landroid/os/Bundle;

    .line 71
    new-instance v0, Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-direct {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 72
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->arguments:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100173

    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 77
    return-void
.end method

.method private setupWidget()V
    .registers 1

    .prologue
    .line 80
    return-void
.end method


# virtual methods
.method public createLayout(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 53
    if-nez p1, :cond_26

    .line 54
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->hideLayoutPoint(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->setToolbarShowHome()V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->setActionBarIcon(I)V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->setHideSearch()V

    .line 60
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->setToolbarTitle(Ljava/lang/String;Z)V

    .line 61
    const v0, 0x7f0202b8

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->setToolbarImageLogoHeader(I)V

    .line 62
    invoke-direct {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->initFragment()V

    .line 63
    invoke-direct {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->setupWidget()V

    .line 65
    :cond_26
    invoke-direct {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getCode()V

    .line 66
    return-void
.end method

.method public getLayoutResource()I
    .registers 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 48
    const v0, 0x7f04004a

    return v0
.end method

.method public nextAdd(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .param p1, "myFragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 108
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v1, 0x7f100173

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 109
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 110
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 112
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->finish()V

    .line 104
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 89
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onResume()V

    .line 90
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 91
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_20

    .line 92
    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v2, 0x7f09024a

    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    :cond_20
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onStop()V

    .line 153
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->httpAsynctask:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->onCancel()V

    .line 154
    :cond_c
    return-void
.end method

.method protected setFontTypeFace()V
    .registers 1

    .prologue
    .line 85
    return-void
.end method
