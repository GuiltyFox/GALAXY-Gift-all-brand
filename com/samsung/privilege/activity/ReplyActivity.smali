.class public Lcom/samsung/privilege/activity/ReplyActivity;
.super Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.source "ReplyActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/bzbs/marketplace/model/review/ReviewModel;Z)V
    .registers 7

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/privilege/activity/ReplyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 28
    const-string/jumbo v2, "ReplyModel"

    invoke-static {p1}, Lorg/parceler/Parcels;->a(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    const-string/jumbo v2, "ReplyIsRequestHelp"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method

.method private h()V
    .registers 4

    .prologue
    const v2, 0x7f100180

    .line 59
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_46

    .line 61
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/samsung/privilege/activity/ReplyActivity;->D:Landroid/os/Bundle;

    .line 62
    const-string/jumbo v1, "ReplyIsRequestHelp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 67
    :cond_1d
    const-string/jumbo v1, "ReplyModel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 68
    const-string/jumbo v1, "ReplyModel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lorg/parceler/Parcels;->a(Landroid/os/Parcelable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bzbs/marketplace/model/review/ReviewModel;

    .line 70
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 71
    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->a(Lcom/bzbs/marketplace/model/review/ReviewModel;)Lcom/samsung/privilege/fragment/ReplyFragment;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    .line 85
    :cond_46
    :goto_46
    return-void

    .line 73
    :cond_47
    const-string/jumbo v1, "ReplyKeyBuzz"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 74
    const-string/jumbo v1, "ReplyKeyBuzz"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 76
    invoke-static {v0}, Lcom/samsung/privilege/fragment/ReplyFragment;->a(Ljava/lang/String;)Lcom/samsung/privilege/fragment/ReplyFragment;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->b()I

    goto :goto_46
.end method

.method private o()V
    .registers 1

    .prologue
    .line 99
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    if-nez p1, :cond_23

    .line 45
    invoke-virtual {p0, v2}, Lcom/samsung/privilege/activity/ReplyActivity;->b(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->j()V

    .line 49
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ReplyActivity;->b(I)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->n()V

    .line 51
    const v0, 0x7f0900bc

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/ReplyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/privilege/activity/ReplyActivity;->a(Ljava/lang/String;Z)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/samsung/privilege/activity/ReplyActivity;->a(I)V

    .line 53
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->h()V

    .line 54
    invoke-direct {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->o()V

    .line 56
    :cond_23
    return-void
.end method

.method public f()I
    .registers 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/ReplyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 39
    const v0, 0x7f040048

    return v0
.end method

.method protected g()V
    .registers 1

    .prologue
    .line 104
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onBackPressed()V

    .line 109
    return-void
.end method
