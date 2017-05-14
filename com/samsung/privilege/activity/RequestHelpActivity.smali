.class public Lcom/samsung/privilege/activity/RequestHelpActivity;
.super Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.source "RequestHelpActivity.java"


# instance fields
.field private a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

.field contentCode:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1001f9
    .end annotation
.end field

.field tvCode:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f1001fa
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method private h()V
    .registers 4

    .prologue
    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->C:Landroid/os/Bundle;

    .line 74
    new-instance v0, Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-direct {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->D:Landroid/support/v4/app/Fragment;

    .line 75
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->D:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->C:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100193

    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->D:Landroid/support/v4/app/Fragment;

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 80
    return-void
.end method

.method private o()V
    .registers 1

    .prologue
    .line 83
    return-void
.end method

.method private p()V
    .registers 7

    .prologue
    .line 124
    invoke-static {}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlCode()Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 126
    const-string/jumbo v0, "token"

    iget-object v3, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "samsung"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "SM-G935F"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string/jumbo v3, "platform"

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 130
    const-string/jumbo v3, "os"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "android "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v0, ""

    .line 133
    :try_start_56
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_65
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_56 .. :try_end_65} :catch_a6

    .line 137
    :goto_65
    const-string/jumbo v3, "client_version"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v5}, Lcom/bzbs/data/AppSetting;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/util/PhoneManagerUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string/jumbo v3, "carrier"

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v3, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->b:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    iput-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    .line 142
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    new-instance v1, Lcom/samsung/privilege/activity/RequestHelpActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/RequestHelpActivity$1;-><init>(Lcom/samsung/privilege/activity/RequestHelpActivity;)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->a(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 157
    return-void

    .line 134
    :catch_a6
    move-exception v3

    goto :goto_65
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 55
    if-nez p1, :cond_2c

    .line 56
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->b(Z)V

    .line 58
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->j()V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->b(I)V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->n()V

    .line 62
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->a(Ljava/lang/String;Z)V

    .line 63
    const v0, 0x7f0202c3

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->a(I)V

    .line 64
    const-string/jumbo v0, "Request Help"

    invoke-static {v0}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->h()V

    .line 66
    invoke-direct {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->o()V

    .line 68
    :cond_2c
    invoke-direct {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->p()V

    .line 69
    return-void
.end method

.method public f()I
    .registers 3

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 50
    const v0, 0x7f040050

    return v0
.end method

.method protected g()V
    .registers 1

    .prologue
    .line 88
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f100193

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 102
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/RequestHelpActivity;->finish()V

    .line 113
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 92
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onResume()V

    .line 93
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 94
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_20

    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->g:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v1, 0x7f090252

    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/RequestHelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bzbs/util/DialogUtil;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    :cond_20
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 161
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onStop()V

    .line 162
    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/privilege/activity/RequestHelpActivity;->a:Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    invoke-virtual {v0}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->b()V

    .line 163
    :cond_c
    return-void
.end method
