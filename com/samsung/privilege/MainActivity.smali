.class public Lcom/samsung/privilege/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;,
        Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;
    }
.end annotation


# static fields
.field private static final FRAGMENT_COUNT:I = 0x1

.field private static final SPLASH:I


# instance fields
.field private LOGCAT:Ljava/lang/String;

.field private NewbieBadge:Ljava/lang/String;

.field private callback:Lcom/facebook/Session$StatusCallback;

.field private fragments:[Landroid/support/v4/app/Fragment;

.field private gDialog:Landroid/app/ProgressDialog;

.field private gHandler:Landroid/os/Handler;

.field private isResumed:Z

.field private uiHelper:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 59
    const-string v0, "MainActivity"

    iput-object v0, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/support/v4/app/Fragment;

    iput-object v0, p0, Lcom/samsung/privilege/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/MainActivity;->isResumed:Z

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/privilege/MainActivity;->NewbieBadge:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/samsung/privilege/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/privilege/MainActivity$1;-><init>(Lcom/samsung/privilege/MainActivity;)V

    iput-object v0, p0, Lcom/samsung/privilege/MainActivity;->callback:Lcom/facebook/Session$StatusCallback;

    .line 57
    return-void
.end method

.method private GetProfileData()V
    .registers 5

    .prologue
    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/profile/me/user?token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetProfileData="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    new-instance v1, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/MainActivity$GetProfileAddressListener;-><init>(Lcom/samsung/privilege/MainActivity;)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_GET(Ljava/lang/String;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 736
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/privilege/MainActivity;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 271
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/privilege/MainActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/samsung/privilege/MainActivity;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->gDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/samsung/privilege/MainActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/samsung/privilege/MainActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity;->NewbieBadge:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/privilege/MainActivity;)V
    .registers 1

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/samsung/privilege/MainActivity;->GetProfileData()V

    return-void
.end method

.method static synthetic access$6(Lcom/samsung/privilege/MainActivity;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 828
    invoke-direct {p0, p1}, Lcom/samsung/privilege/MainActivity;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/samsung/privilege/MainActivity;I)V
    .registers 2

    .prologue
    .line 804
    invoke-direct {p0, p1}, Lcom/samsung/privilege/MainActivity;->gotoCampaignDetail(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/samsung/privilege/MainActivity;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->NewbieBadge:Ljava/lang/String;

    return-object v0
.end method

.method private gotoCampaignDetail(I)V
    .registers 6
    .param p1, "campaign_id"    # I

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "mode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 806
    .local v1, "mode":Ljava/lang/String;
    if-eqz v1, :cond_6b

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 807
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gift"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 808
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 809
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "campaign_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 810
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 825
    :goto_33
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->finish()V

    .line 826
    return-void

    .line 811
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_37
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bzbs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 812
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lic/buzzebeeslib/activity/MarketPlaceDetail2Activity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 813
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "campaign_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 814
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_33

    .line 816
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_57
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 817
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "campaign_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 818
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_33

    .line 821
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6b
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 822
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "campaign_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 823
    invoke-virtual {p0, v0}, Lcom/samsung/privilege/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_33
.end method

.method private onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .registers 11
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v6, 0x0

    .line 272
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSessionStateChange: state="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/SessionState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSessionStateChange: isResumed="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/samsung/privilege/MainActivity;->isResumed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-boolean v3, p0, Lcom/samsung/privilege/MainActivity;->isResumed:Z

    if-eqz v3, :cond_6f

    .line 275
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 276
    .local v2, "manager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 277
    .local v0, "backStackSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3c
    if-lt v1, v0, :cond_70

    .line 284
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    const-string v4, "if (state.equals(SessionState.OPENED)) { BEFORE"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "session.getAccessToken()="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    sget-object v3, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {p2, v3}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 302
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    const-string v4, "if (state.equals(SessionState.OPENED)) { AFTER"

    invoke-static {v3, v4}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/samsung/privilege/MainActivity;->showViewPager()V

    .line 320
    .end local v0    # "backStackSize":I
    .end local v1    # "i":I
    .end local v2    # "manager":Landroid/support/v4/app/FragmentManager;
    :cond_6f
    :goto_6f
    return-void

    .line 278
    .restart local v0    # "backStackSize":I
    .restart local v1    # "i":I
    .restart local v2    # "manager":Landroid/support/v4/app/FragmentManager;
    :cond_70
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 316
    :cond_76
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 317
    invoke-direct {p0, v6, v6}, Lcom/samsung/privilege/MainActivity;->showFragment(IZ)V

    goto :goto_6f
.end method

.method private showFragment(IZ)V
    .registers 7
    .param p1, "fragmentIndex"    # I
    .param p2, "addToBackStack"    # Z

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 394
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 395
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    array-length v3, v3

    if-lt v1, v3, :cond_18

    .line 402
    if-eqz p2, :cond_14

    .line 403
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 405
    :cond_14
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 406
    return-void

    .line 396
    :cond_18
    if-ne v1, p1, :cond_24

    .line 397
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 395
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 399
    :cond_24
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_21
.end method

.method private showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 829
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/MainActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/MainActivity$2;-><init>(Lcom/samsung/privilege/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 836
    return-void
.end method

.method private showViewPager()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 346
    iget-object v7, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    const-string v8, "private void showViewPager() {"

    invoke-static {v7, v8}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    .line 349
    .local v3, "session":Lcom/facebook/Session;
    invoke-virtual {v3}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v4

    .line 350
    .local v4, "state":Lcom/facebook/SessionState;
    const-string v6, ""

    .line 352
    .local v6, "tokenFacebook":Ljava/lang/String;
    if-eqz v3, :cond_c5

    invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z

    move-result v7

    if-eqz v7, :cond_c5

    .line 353
    sget-object v7, Lcom/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/facebook/SessionState;

    invoke-virtual {v4, v7}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a

    sget-object v7, Lcom/facebook/SessionState;->OPENED:Lcom/facebook/SessionState;

    invoke-virtual {v4, v7}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 354
    :cond_2a
    invoke-virtual {v3}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    .line 362
    :goto_2e
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/samsung/privilege/UserLogin;->SetTokenFacebook(Landroid/content/Context;Ljava/lang/String;)Z

    .line 364
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, "tokenBzBs":Ljava/lang/String;
    if-eqz v5, :cond_47

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 368
    :cond_47
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/privilege/UserLogin;->SetUserCarrier(Landroid/content/Context;Ljava/lang/String;)Z

    .line 371
    :cond_56
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/privilege/UserLogin;->GetIsPlayingIntro(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_74

    .line 372
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/privilege/UserLogin;->SetIsPlayingIntro(Landroid/content/Context;Z)Z

    .line 374
    new-instance v2, Lcom/samsung/privilege/bean/MessagePopup;

    const-string v7, "welcome"

    invoke-direct {v2, v7}, Lcom/samsung/privilege/bean/MessagePopup;-><init>(Ljava/lang/String;)V

    .line 375
    .local v2, "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    sget-object v7, Lcom/samsung/privilege/AppSetting;->QUEUE_MESSAGEPOPUPS:Ljava/util/Queue;

    invoke-interface {v7, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v2    # "messagePopup":Lcom/samsung/privilege/bean/MessagePopup;
    :cond_74
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 382
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "category_noti"

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "category_noti"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "campaign_id"

    invoke-virtual {v7, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 384
    .local v0, "campaign_id":I
    if-lez v0, :cond_ba

    .line 385
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "mode"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/privilege/UserLogin;->SetAutoCampaignMode(Landroid/content/Context;Ljava/lang/String;)Z

    .line 386
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/samsung/privilege/UserLogin;->SetAutoCampaignID(Landroid/content/Context;I)Z

    .line 388
    :cond_ba
    invoke-virtual {p0, v1, v10}, Lcom/samsung/privilege/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 389
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->finish()V

    .line 390
    return-void

    .line 356
    .end local v0    # "campaign_id":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "tokenBzBs":Ljava/lang/String;
    :cond_c1
    const-string v6, ""

    .line 358
    goto/16 :goto_2e

    .line 359
    :cond_c5
    const-string v6, ""

    goto/16 :goto_2e
.end method


# virtual methods
.method public doLoginDevice(Landroid/view/View;)V
    .registers 25
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 416
    const-string v19, ""

    const v20, 0x7f0a018d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/privilege/MainActivity;->gDialog:Landroid/app/ProgressDialog;

    .line 419
    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->gDialog:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    const v20, 0x102000b

    invoke-virtual/range {v19 .. v20}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 420
    .local v14, "mMessageView":Landroid/widget/TextView;
    if-eqz v14, :cond_56

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v12

    .line 422
    .local v12, "font":Landroid/graphics/Typeface;
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/AppSetting;->FONTS_DEFAULT_SIZE(Landroid/content/Context;)F

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_56} :catch_34b

    .line 429
    .end local v12    # "font":Landroid/graphics/Typeface;
    .end local v14    # "mMessageView":Landroid/widget/TextView;
    :cond_56
    :goto_56
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/UserLogin;->SetUserCarrier(Landroid/content/Context;Ljava/lang/String;)Z

    .line 431
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v15, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "app_id"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "app_id="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->APP_ID_FACEBOOK_BY_CARRIER(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v18, ""

    .line 441
    .local v18, "versionName":Ljava/lang/String;
    :try_start_a0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v18, v0
    :try_end_b4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a0 .. :try_end_b4} :catch_32c

    .line 445
    :goto_b4
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "client_version"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/samsung/privilege/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "client_version="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->AUTH_BUZZEBEES_PREFIX(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v9, Lcom/samsung/privilege/util/DeviceHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lcom/samsung/privilege/util/DeviceHelper;-><init>(Landroid/content/Context;)V

    .line 451
    .local v9, "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    invoke-virtual {v9}, Lcom/samsung/privilege/util/DeviceHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    .line 452
    .local v10, "device_id":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "uuid"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v10}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "uuid="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 458
    .local v5, "AndroidVersion":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "os"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "android "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "os=android "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 466
    .local v16, "platform":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "platform"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "platform="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "sponsorId"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "sponsorId="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/samsung/privilege/AppSetting;->SPONSOR_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v9}, Lcom/samsung/privilege/util/DeviceHelper;->getAndroidID()Ljava/lang/String;

    move-result-object v6

    .line 477
    .local v6, "android_id":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "mac_address"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "mac_address="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/util/PhoneManagerUtil;->GetSimOperatorDual(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 483
    .local v7, "carrier":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "carrier"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "carrier="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v9}, Lcom/samsung/privilege/util/DeviceHelper;->getPhoneNumber()Ljava/lang/String;

    move-result-object v8

    .line 489
    .local v8, "contact_number":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "contact_number"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v8}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "contact_number="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "transfer_points"

    const-string v21, "manual"

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "transfer_points=manual"

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "device_locale"

    const-string v21, "1033"

    invoke-direct/range {v19 .. v21}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "device_locale=1033"

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/privilege/util/InfoData;->GetInfoData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 544
    .local v13, "info":Ljava/lang/String;
    new-instance v19, Lcom/samsung/privilege/bean/InputItem;

    const-string v20, "info"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13}, Lcom/samsung/privilege/bean/InputItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "info="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    new-instance v19, Ljava/lang/StringBuilder;

    sget-object v20, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "api/auth/device_login"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 549
    .local v17, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "url="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v19, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/privilege/MainActivity$AuthBuzzeBeesListener;-><init>(Lcom/samsung/privilege/MainActivity;)V

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v15, v1, v2}, Lcom/samsung/privilege/util/http/HttpCall;->RQ_POST(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/privilege/util/http/RQListener;Ljava/lang/Object;)V

    .line 562
    return-void

    .line 442
    .end local v5    # "AndroidVersion":Ljava/lang/String;
    .end local v6    # "android_id":Ljava/lang/String;
    .end local v7    # "carrier":Ljava/lang/String;
    .end local v8    # "contact_number":Ljava/lang/String;
    .end local v9    # "deviceHelper":Lcom/samsung/privilege/util/DeviceHelper;
    .end local v10    # "device_id":Ljava/lang/String;
    .end local v13    # "info":Ljava/lang/String;
    .end local v16    # "platform":Ljava/lang/String;
    .end local v17    # "url":Ljava/lang/String;
    :catch_32c
    move-exception v11

    .line 443
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Can\'t get versionName:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/privilege/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b4

    .line 425
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/privilege/bean/InputItem;>;"
    .end local v18    # "versionName":Ljava/lang/String;
    :catch_34b
    move-exception v19

    goto/16 :goto_56
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 205
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 206
    iget-object v3, p0, Lcom/samsung/privilege/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v3, p1, p2, p3}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 208
    const/4 v3, -0x1

    if-ne p2, v3, :cond_32

    if-nez p1, :cond_32

    .line 209
    const-string v3, "exit_app"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 210
    .local v0, "exit_app":Z
    if-eqz v0, :cond_19

    .line 211
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->finish()V

    .line 213
    :cond_19
    const-string v3, "restart_app"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 214
    .local v2, "restart_app":Z
    if-eqz v2, :cond_32

    .line 215
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v5}, Lcom/samsung/privilege/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 217
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->finish()V

    .line 220
    .end local v0    # "exit_app":Z
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "restart_app":Z
    :cond_32
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 83
    iget-object v6, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    const-string v7, "public void onCreate(Bundle savedInstanceState) {"

    invoke-static {v6, v7}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/AppSetting;->NOTIFICATION_ID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/samsung/privilege/AppSetting;->APP_NOTIFICATION_ID:Ljava/lang/String;

    .line 88
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/MainActivity;->requestWindowFeature(I)Z

    .line 90
    sput-object p0, Lcom/samsung/privilege/AppSetting;->M_ACTIVITY:Landroid/app/Activity;

    .line 92
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/samsung/privilege/MainActivity;->gHandler:Landroid/os/Handler;

    .line 94
    new-instance v6, Lcom/facebook/UiLifecycleHelper;

    iget-object v7, p0, Lcom/samsung/privilege/MainActivity;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v6, p0, v7}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v6, p0, Lcom/samsung/privilege/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    .line 95
    iget-object v6, p0, Lcom/samsung/privilege/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v6, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v6, 0x7f0300f7

    invoke-virtual {p0, v6}, Lcom/samsung/privilege/MainActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 100
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    iget-object v6, p0, Lcom/samsung/privilege/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    const v7, 0x7f07034b

    invoke-virtual {v1, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v7

    aput-object v7, v6, v8

    .line 102
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 103
    .local v5, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4a
    iget-object v6, p0, Lcom/samsung/privilege/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    array-length v6, v6

    if-lt v2, v6, :cond_7c

    .line 106
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 108
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "token":Ljava/lang/String;
    if-eqz v4, :cond_7b

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7b

    .line 160
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "campaign_id"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 161
    .local v0, "campaign_id":I
    if-lez v0, :cond_86

    .line 162
    invoke-direct {p0, v0}, Lcom/samsung/privilege/MainActivity;->gotoCampaignDetail(I)V

    .line 186
    .end local v0    # "campaign_id":I
    :cond_7b
    :goto_7b
    return-void

    .line 104
    .end local v4    # "token":Ljava/lang/String;
    :cond_7c
    iget-object v6, p0, Lcom/samsung/privilege/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 164
    .restart local v0    # "campaign_id":I
    .restart local v4    # "token":Ljava/lang/String;
    :cond_86
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetModeLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a8

    .line 165
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3, v8}, Lcom/samsung/privilege/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 167
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->finish()V

    goto :goto_7b

    .line 169
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_a8
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_123

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetFirstName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_123

    .line 170
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_123

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetLastName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_123

    .line 171
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetBirthday(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_123

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetBirthday(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_123

    .line 172
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetGender(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_123

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/privilege/UserLogin;->GetGender(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_123

    .line 173
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/samsung/privilege/activity/CampaignListActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3, v8}, Lcom/samsung/privilege/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->finish()V

    goto/16 :goto_7b

    .line 177
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_123
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/samsung/privilege/activity/RegisterActivity;

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "msg_newbie"

    iget-object v7, p0, Lcom/samsung/privilege/MainActivity;->NewbieBadge:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0, v3}, Lcom/samsung/privilege/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 180
    invoke-virtual {p0}, Lcom/samsung/privilege/MainActivity;->finish()V

    goto/16 :goto_7b
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 224
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 225
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 226
    const v0, 0x7f07007c

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/app/Activity;I)V

    .line 227
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 198
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 199
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/privilege/MainActivity;->isResumed:Z

    .line 201
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    const-string v1, "public void onResume() {"

    invoke-static {v0, v1}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 192
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/privilege/MainActivity;->isResumed:Z

    .line 194
    return-void
.end method

.method protected onResumeFragments()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 259
    iget-object v1, p0, Lcom/samsung/privilege/MainActivity;->LOGCAT:Ljava/lang/String;

    const-string v2, "protected void onResumeFragments() {"

    invoke-static {v1, v2}, Lcom/samsung/privilege/util/LogUtil;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 261
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 263
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 264
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/privilege/MainActivity;->onSessionStateChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 269
    :goto_1f
    return-void

    .line 267
    :cond_20
    invoke-direct {p0, v3, v3}, Lcom/samsung/privilege/MainActivity;->showFragment(IZ)V

    goto :goto_1f
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 254
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 255
    return-void
.end method
