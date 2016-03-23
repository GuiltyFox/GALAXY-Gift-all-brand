.class public Lcom/samsung/privilege/activity/DashboardActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DashboardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;
    }
.end annotation


# instance fields
.field public callbackManager:Lcom/facebook/CallbackManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/privilege/activity/DashboardActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/privilege/activity/DashboardActivity;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->setFragmentDashboard()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/privilege/activity/DashboardActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/privilege/activity/DashboardActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setFragmentDashboard()V
    .registers 4

    .prologue
    .line 67
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-direct {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;-><init>()V

    .line 71
    .local v0, "fragmentDashboard":Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f10015c

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 82
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->finish()V

    .line 108
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "i"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 63
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f04002f

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/DashboardActivity;->setContentView(I)V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardActivity;->mHandler:Landroid/os/Handler;

    .line 26
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 31
    const v0, 0x7f10015c

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 36
    if-eqz p1, :cond_29

    .line 42
    :cond_28
    :goto_28
    return-void

    .line 40
    :cond_29
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->setFragmentDashboard()V

    goto :goto_28
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 54
    invoke-static {}, Lcom/bzbs/event/LoginEvents;->clearLoginListener()V

    .line 55
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 46
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 48
    new-instance v0, Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/DashboardActivity;Lcom/samsung/privilege/activity/DashboardActivity$1;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->addLoginListener(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 49
    return-void
.end method
