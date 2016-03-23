.class public Lcom/bzbs/marketplace/activity/ReviewActivity;
.super Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.source "ReviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;
    }
.end annotation


# static fields
.field public static final KEY_CHECK_REQUEST_HELP:Ljava/lang/String; = "cf-"

.field public static final KEY_CHECK_REQUEST_HELP_F:Ljava/lang/String; = "f-"

.field public static final KEY_REVIEW_DATA:Ljava/lang/String; = "ReviewActivity::Data"

.field public static final KEY_REVIEW_TYPE:Ljava/lang/String; = "ReviewActivity::Type"


# instance fields
.field private hasClick:Z

.field private id:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field paramCampaign:Lcom/bzbs/bean/Campaign;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->hasClick:Z

    return-void
.end method

.method static synthetic access$100(Lcom/bzbs/marketplace/activity/ReviewActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/activity/ReviewActivity;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->hasClick:Z

    return v0
.end method

.method static synthetic access$102(Lcom/bzbs/marketplace/activity/ReviewActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/activity/ReviewActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->hasClick:Z

    return p1
.end method

.method private setupWidget()V
    .registers 1

    .prologue
    .line 133
    return-void
.end method


# virtual methods
.method public createLayout(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    if-nez p1, :cond_82

    .line 52
    invoke-virtual {p0, v3}, Lcom/bzbs/marketplace/activity/ReviewActivity;->hideLayoutPoint(Z)V

    .line 53
    new-instance v0, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/activity/ReviewActivity$UserLoginListener;-><init>(Lcom/bzbs/marketplace/activity/ReviewActivity;Lcom/bzbs/marketplace/activity/ReviewActivity$1;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->addLoginListener(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->mHandler:Landroid/os/Handler;

    .line 72
    const v0, 0x7f090262

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/bzbs/marketplace/activity/ReviewActivity;->setToolbarTitle(Ljava/lang/String;Z)V

    .line 73
    const v0, 0x7f02026d

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->setToolbarImageLogoHeader(I)V

    .line 74
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ReviewActivity::Data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->id:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "ReviewActivity::Type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->type:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->type:Ljava/lang/String;

    if-nez v0, :cond_4a

    .line 77
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->type:Ljava/lang/String;

    .line 80
    :cond_4a
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "campaign"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/bzbs/bean/Campaign;

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->paramCampaign:Lcom/bzbs/bean/Campaign;

    .line 82
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->type:Ljava/lang/String;

    const-string/jumbo v1, "type_gift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 83
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->imgReview:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->imgReview:Landroid/widget/ImageView;

    new-instance v1, Lcom/bzbs/marketplace/activity/ReviewActivity$1;

    invoke-direct {v1, p0}, Lcom/bzbs/marketplace/activity/ReviewActivity$1;-><init>(Lcom/bzbs/marketplace/activity/ReviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_73
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->initFragment()V

    .line 111
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->setToolbarShowHome()V

    .line 113
    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/activity/ReviewActivity;->setActionBarIcon(I)V

    .line 114
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->setHideSearch()V

    .line 115
    invoke-direct {p0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->setupWidget()V

    .line 117
    :cond_82
    return-void
.end method

.method public getLayoutResource()I
    .registers 3

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 46
    const v0, 0x7f04004a

    return v0
.end method

.method public initFragment()V
    .registers 4

    .prologue
    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->arguments:Landroid/os/Bundle;

    .line 121
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "ReviewActivity::Data"

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->arguments:Landroid/os/Bundle;

    const-string/jumbo v1, "ReviewActivity::Type"

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Lcom/bzbs/marketplace/fragment/ReviewFragment;

    invoke-direct {v0}, Lcom/bzbs/marketplace/fragment/ReviewFragment;-><init>()V

    iput-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 125
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->arguments:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100173

    iget-object v2, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 130
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->id:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 143
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->finish()V

    .line 152
    :goto_7
    return-void

    .line 146
    :cond_8
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_1a

    .line 147
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_7

    .line 150
    :cond_1a
    invoke-virtual {p0}, Lcom/bzbs/marketplace/activity/ReviewActivity;->finish()V

    goto :goto_7
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 195
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onResume()V

    .line 196
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/activity/ReviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 197
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 198
    iget-object v1, p0, Lcom/bzbs/marketplace/activity/ReviewActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    const v2, 0x7f09024a

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/activity/ReviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bzbs/util/DialogUtil;->showDialogError(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    :cond_1e
    return-void
.end method

.method protected setFontTypeFace()V
    .registers 1

    .prologue
    .line 138
    return-void
.end method
