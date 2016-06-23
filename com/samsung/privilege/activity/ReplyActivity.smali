.class public Lcom/samsung/privilege/activity/ReplyActivity;
.super Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.source "ReplyActivity.java"


# static fields
.field public static final KEY_IS_REQUEST_HELP:Ljava/lang/String; = "ReplyIsRequestHelp"

.field public static final KEY_KEY_BUZZ:Ljava/lang/String; = "ReplyKeyBuzz"

.field public static final KEY_MODEL:Ljava/lang/String; = "ReplyModel"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method private getIntentValue()V
    .registers 7

    .prologue
    const v5, 0x7f100175

    .line 61
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 62
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_46

    .line 63
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/samsung/privilege/activity/ReplyActivity;->arguments:Landroid/os/Bundle;

    .line 64
    const-string/jumbo v3, "ReplyIsRequestHelp"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 69
    :cond_1d
    const-string/jumbo v3, "ReplyModel"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 70
    const-string/jumbo v3, "ReplyModel"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-static {v3}, Lorg/parceler/Parcels;->unwrap(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bzbs/marketplace/model/review/ReviewModel;

    .line 72
    .local v2, "model":Lcom/bzbs/marketplace/model/review/ReviewModel;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 73
    invoke-static {v2}, Lcom/samsung/privilege/fragment/ReplyFragment;->newInstance(Lcom/bzbs/marketplace/model/review/ReviewModel;)Lcom/samsung/privilege/fragment/ReplyFragment;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 87
    .end local v2    # "model":Lcom/bzbs/marketplace/model/review/ReviewModel;
    :cond_46
    :goto_46
    return-void

    .line 75
    :cond_47
    const-string/jumbo v3, "ReplyKeyBuzz"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 76
    const-string/jumbo v3, "ReplyKeyBuzz"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "keyBuzz":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 78
    invoke-static {v1}, Lcom/samsung/privilege/fragment/ReplyFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/privilege/fragment/ReplyFragment;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_46
.end method

.method private initFragment()V
    .registers 4

    .prologue
    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ReplyActivity;->arguments:Landroid/os/Bundle;

    .line 92
    new-instance v0, Lcom/samsung/privilege/fragment/RequestHelpFragment;

    invoke-direct {v0}, Lcom/samsung/privilege/fragment/RequestHelpFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/ReplyActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 93
    iget-object v0, p0, Lcom/samsung/privilege/activity/ReplyActivity;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/samsung/privilege/activity/ReplyActivity;->arguments:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100175

    iget-object v2, p0, Lcom/samsung/privilege/activity/ReplyActivity;->fragment:Landroid/support/v4/app/Fragment;

    .line 96
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 98
    return-void
.end method

.method public static newInstance(Landroid/app/Activity;Lcom/bzbs/marketplace/model/review/ReviewModel;Z)V
    .registers 7
    .param p0, "mActivity"    # Landroid/app/Activity;
    .param p1, "model"    # Lcom/bzbs/marketplace/model/review/ReviewModel;
    .param p2, "isRequest"    # Z

    .prologue
    .line 28
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/privilege/activity/ReplyActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v1, "i":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "ReplyModel"

    invoke-static {p1}, Lorg/parceler/Parcels;->wrap(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 31
    const-string/jumbo v2, "ReplyIsRequestHelp"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 34
    return-void
.end method

.method private setupWidget()V
    .registers 1

    .prologue
    .line 101
    return-void
.end method


# virtual methods
.method public createLayout(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    if-nez p1, :cond_23

    .line 47
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ReplyActivity;->hideLayoutPoint(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->setToolbarShowHome()V

    .line 51
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ReplyActivity;->setActionBarIcon(I)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->setHideSearch()V

    .line 53
    const v0, 0x7f0901c9

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ReplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/privilege/activity/ReplyActivity;->setToolbarTitle(Ljava/lang/String;Z)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ReplyActivity;->setToolbarImageLogoHeader(I)V

    .line 55
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->getIntentValue()V

    .line 56
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->setupWidget()V

    .line 58
    :cond_23
    return-void
.end method

.method public getLayoutResource()I
    .registers 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 41
    const v0, 0x7f04004a

    return v0
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onBackPressed()V

    .line 111
    return-void
.end method

.method protected setFontTypeFace()V
    .registers 1

    .prologue
    .line 106
    return-void
.end method
