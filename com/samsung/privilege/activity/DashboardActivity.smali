.class public Lcom/samsung/privilege/activity/DashboardActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DashboardActivity.java"


# instance fields
.field public a:Lcom/facebook/CallbackManager;

.field private b:Landroid/os/Handler;

.field private c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 7

    .prologue
    const v5, 0x7f100175

    const v4, 0x7f1000b3

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "header"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_46

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 90
    const-string/jumbo v1, "ADS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 91
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :goto_36
    return-void

    .line 94
    :cond_37
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_36

    .line 98
    :cond_46
    invoke-virtual {p0, v4}, Lcom/samsung/privilege/activity/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 99
    invoke-virtual {p0, v5}, Lcom/samsung/privilege/activity/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_36
.end method

.method static synthetic a(Lcom/samsung/privilege/activity/DashboardActivity;)V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->b()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/privilege/activity/DashboardActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardActivity;->b:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .registers 4

    .prologue
    .line 106
    new-instance v0, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-direct {v0}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardActivity;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    .line 110
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardActivity;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->a()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100174

    iget-object v2, p0, Lcom/samsung/privilege/activity/DashboardActivity;->c:Lcom/samsung/privilege/fragment/DashboardGiftRecyclerFragment;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->a()I

    .line 121
    return-void
.end method


# virtual methods
.method public doBack(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "header"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_28

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 172
    const-string/jumbo v1, "ADS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/DashboardActivity;->doEnter(Landroid/view/View;)V

    .line 180
    :goto_23
    return-void

    .line 175
    :cond_24
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->finish()V

    goto :goto_23

    .line 178
    :cond_28
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->finish()V

    goto :goto_23
.end method

.method public doEnter(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 184
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bzbs/data/UserLogin;->q(Landroid/content/Context;Z)V

    .line 191
    :goto_19
    return-void

    .line 186
    :cond_1a
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/privilege/activity/MainPagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->finish()V

    goto :goto_19
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/privilege/activity/DashboardActivity;->a:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    const/16 v1, 0x400

    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/DashboardActivity;->requestWindowFeature(I)Z

    .line 33
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 36
    :try_start_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_24

    .line 39
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string/jumbo v1, "#6A75BA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_24} :catch_51

    .line 45
    :cond_24
    :goto_24
    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/DashboardActivity;->setContentView(I)V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardActivity;->b:Landroid/os/Handler;

    .line 48
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/privilege/activity/DashboardActivity;->a:Lcom/facebook/CallbackManager;

    .line 51
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->a()V

    .line 55
    const v0, 0x7f100174

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 60
    if-eqz p1, :cond_4d

    .line 66
    :cond_4c
    :goto_4c
    return-void

    .line 64
    :cond_4d
    invoke-direct {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->b()V

    goto :goto_4c

    .line 41
    :catch_51
    move-exception v0

    goto :goto_24
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 152
    const/4 v0, 0x4

    if-ne p1, v0, :cond_32

    .line 153
    invoke-virtual {p0}, Lcom/samsung/privilege/activity/DashboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "header"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_2d

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 155
    const-string/jumbo v1, "ADS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/privilege/activity/DashboardActivity;->doEnter(Landroid/view/View;)V

    .line 157
    const/4 v0, 0x1

    .line 165
    :goto_27
    return v0

    .line 159
    :cond_28
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_27

    .line 162
    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_27

    .line 165
    :cond_32
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_27
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 78
    invoke-static {}, Lcom/bzbs/event/LoginEvents;->a()V

    .line 79
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 70
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 72
    new-instance v0, Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/privilege/activity/DashboardActivity$UserLoginListener;-><init>(Lcom/samsung/privilege/activity/DashboardActivity;Lcom/samsung/privilege/activity/DashboardActivity$1;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->a(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 73
    return-void
.end method
