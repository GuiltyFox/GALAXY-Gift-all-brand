.class public abstract Lcom/bzbs/marketplace/base/BaseAppCompatActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;,
        Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;
    }
.end annotation


# static fields
.field public static final PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static gScreenHeight:I

.field public static gScreenHeightNoti:I

.field public static gScreenWidth:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field public arguments:Landroid/os/Bundle;

.field protected btnBack:Landroid/widget/ImageView;

.field protected btnBasket:Landroid/widget/ImageView;

.field public callbackManager:Lcom/facebook/CallbackManager;

.field public canPresentShareDialog:Z

.field clickToolbar:Landroid/view/View$OnClickListener;

.field protected contentHeadMenu:Landroid/widget/RelativeLayout;

.field public fragment:Landroid/support/v4/app/Fragment;

.field private fragmentNotification:Landroid/support/v4/app/Fragment;

.field protected gHandler:Landroid/os/Handler;

.field protected imgLogoHeader:Landroid/widget/ImageView;

.field protected imgReview:Landroid/widget/ImageView;

.field protected imgSearch:Landroid/widget/ImageView;

.field isHidePoint:Z

.field public isMainActivity:Z

.field protected lat:D

.field protected layoutAddViewPoint:Landroid/widget/LinearLayout;

.field protected layoutBasket:Landroid/widget/RelativeLayout;

.field protected layoutPoint:Landroid/widget/LinearLayout;

.field listener:Landroid/location/LocationListener;

.field protected lng:D

.field protected mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

.field private mHandler:Landroid/os/Handler;

.field public mRxPermissions:Lcom/tbruyelle/rxpermissions/RxPermissions;

.field public mSplash:Z

.field public pendingAction:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

.field public progressGoogle:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

.field protected textViewTitle:Landroid/widget/TextView;

.field protected toolbar:Landroid/support/v7/widget/Toolbar;

.field protected tv_title_point1:Landroid/widget/TextView;

.field protected tv_title_point3:Landroid/widget/TextView;

.field protected txtBasketCount:Landroid/widget/TextView;

.field protected txtPoint:Landroid/widget/TextView;

.field protected viewpagertab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 105
    sput v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->gScreenWidth:I

    .line 106
    sput v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->gScreenHeight:I

    .line 107
    sput v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->gScreenHeightNoti:I

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "public_profile"

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->PERMISSIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 74
    iput-boolean v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mSplash:Z

    .line 75
    const-class v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->TAG:Ljava/lang/String;

    .line 79
    iput-wide v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->lat:D

    iput-wide v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->lng:D

    .line 82
    iput-boolean v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->isMainActivity:Z

    .line 84
    iput-object p0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    .line 118
    sget-object v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;->NONE:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->pendingAction:Lcom/bzbs/marketplace/base/BaseAppCompatActivity$PendingAction;

    .line 122
    iput-boolean v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->isHidePoint:Z

    .line 525
    new-instance v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$4;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->clickToolbar:Landroid/view/View$OnClickListener;

    .line 638
    new-instance v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$7;

    invoke-direct {v0, p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$7;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->listener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public GetPixelFromDips(F)I
    .registers 5
    .param p1, "pixels"    # F

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 257
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    .line 200
    invoke-static {p1}, Luk/co/chrisjenx/calligraphy/CalligraphyContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 201
    return-void
.end method

.method public callCountCart(Z)V
    .registers 7
    .param p1, "visible"    # Z

    .prologue
    .line 655
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 656
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->setBtnBasket(ZI)V

    .line 657
    new-instance v0, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlCountCart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->GET:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$8;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->excute(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 671
    :cond_37
    return-void
.end method

.method public abstract createLayout(Landroid/os/Bundle;)V
.end method

.method public doBack(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->finish()V

    .line 384
    return-void
.end method

.method public getLayoutBasket()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->layoutBasket:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_7

    .line 519
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->layoutBasket:Landroid/widget/RelativeLayout;

    .line 520
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public abstract getLayoutResource()I
.end method

.method public getPoints()V
    .registers 9

    .prologue
    .line 297
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->txtPoint:Landroid/widget/TextView;

    if-nez v2, :cond_5

    .line 355
    :goto_4
    return-void

    .line 300
    :cond_5
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/util/LanguageSetting;->SetLanguage(Landroid/content/Context;)V

    .line 302
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v0, :cond_6e

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 304
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->tv_title_point1:Landroid/widget/TextView;

    const v3, 0x7f090367

    invoke-virtual {p0, v3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->txtPoint:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/privilege/GalaxyGift;->formatter:Ljava/text/DecimalFormat;

    iget-object v5, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v5}, Lcom/bzbs/data/UserLogin;->GetPoints(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->tv_title_point3:Landroid/widget/TextView;

    const v3, 0x7f0901c0

    invoke-virtual {p0, v3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    invoke-static {v0}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;

    iget-object v3, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {v2, v3, v1}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v3, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$3;

    invoke-direct {v3, p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$3;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/asynctask/point/PointAsynctask;->excuteModel(Lcom/bzbs/marketplace/asynctask/point/PointAsynctask$CallbackModel;)V

    goto :goto_4

    .line 351
    .end local v1    # "url":Ljava/lang/String;
    :cond_6e
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->tv_title_point1:Landroid/widget/TextView;

    const v3, 0x7f090368

    invoke-virtual {p0, v3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->txtPoint:Landroid/widget/TextView;

    const v3, 0x7f090369

    invoke-virtual {p0, v3}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->tv_title_point3:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method public getStatusBarHeight()I
    .registers 7

    .prologue
    .line 261
    const/4 v1, 0x0

    .line 262
    .local v1, "result":I
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "status_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 263
    .local v0, "resourceId":I
    if-lez v0, :cond_1c

    .line 264
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 266
    :cond_1c
    return v1
.end method

.method protected hideLayoutPoint(Z)V
    .registers 4
    .param p1, "hide"    # Z

    .prologue
    .line 632
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->layoutPoint:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_f

    .line 633
    iput-boolean p1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->isHidePoint:Z

    .line 634
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->layoutPoint:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_10

    const/16 v0, 0x8

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 636
    :cond_f
    return-void

    .line 634
    :cond_10
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 627
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 628
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 629
    return-void
.end method

.method public onClickUpdate(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f100673,
            0x7f100674,
            0x7f100675
        }
    .end annotation

    .prologue
    .line 364
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v1}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "strTokenBuzzeBees":Ljava/lang/String;
    if-eqz v0, :cond_24

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 366
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    instance-of v1, v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    if-eqz v1, :cond_23

    .line 368
    const-string/jumbo v1, "BZB Marketplace"

    const-string/jumbo v2, "Click My Points"

    const-string/jumbo v3, "Marketplace | My Points"

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_23
    :goto_23
    return-void

    .line 373
    :cond_24
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    instance-of v1, v1, Lcom/bzbs/marketplace/activity/MarketPlacePagerActivity;

    if-eqz v1, :cond_36

    .line 375
    const-string/jumbo v1, "BZB Marketplace"

    const-string/jumbo v2, "Click You Are Not Logged In"

    const-string/jumbo v3, "Marketplace | You Are Not Logged In"

    invoke-static {v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_36
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    iget-object v2, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->callbackManager:Lcom/facebook/CallbackManager;

    const-string/jumbo v4, "Marketplace"

    const-string/jumbo v5, "account"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/privilege/util/DialogLoginGift;->showDialogLogin(Landroid/content/Context;Landroid/os/Handler;Lcom/facebook/CallbackManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 131
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mHandler:Landroid/os/Handler;

    .line 135
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isAnimation"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->showWindowAnimation(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getLayoutResource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->setContentView(I)V

    .line 139
    :try_start_20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_34

    .line 142
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string/jumbo v2, "#6A75BA"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_34} :catch_14e

    .line 148
    :cond_34
    :goto_34
    invoke-static {p0}, Lcom/tbruyelle/rxpermissions/RxPermissions;->getInstance(Landroid/content/Context;)Lcom/tbruyelle/rxpermissions/RxPermissions;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mRxPermissions:Lcom/tbruyelle/rxpermissions/RxPermissions;

    .line 149
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mRxPermissions:Lcom/tbruyelle/rxpermissions/RxPermissions;

    invoke-virtual {v1, v3}, Lcom/tbruyelle/rxpermissions/RxPermissions;->setLogging(Z)V

    .line 151
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 152
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->gHandler:Landroid/os/Handler;

    .line 153
    const v1, 0x7f100667

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 154
    const v1, 0x7f1005d2

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->textViewTitle:Landroid/widget/TextView;

    .line 155
    const v1, 0x7f100674

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->txtPoint:Landroid/widget/TextView;

    .line 156
    const v1, 0x7f100673

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->tv_title_point1:Landroid/widget/TextView;

    .line 157
    const v1, 0x7f100675

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->tv_title_point3:Landroid/widget/TextView;

    .line 158
    const v1, 0x7f10066d

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->layoutPoint:Landroid/widget/LinearLayout;

    .line 159
    const v1, 0x7f10066b

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->btnBasket:Landroid/widget/ImageView;

    .line 160
    const v1, 0x7f10066c

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->txtBasketCount:Landroid/widget/TextView;

    .line 161
    const v1, 0x7f10066a

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->layoutBasket:Landroid/widget/RelativeLayout;

    .line 162
    const v1, 0x7f10066f

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->layoutAddViewPoint:Landroid/widget/LinearLayout;

    .line 163
    const v1, 0x7f10016f

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->viewpagertab:Lcom/ogaclejapan/smarttablayout/SmartTabLayout;

    .line 164
    const v1, 0x7f100671

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->contentHeadMenu:Landroid/widget/RelativeLayout;

    .line 165
    const v1, 0x7f100352

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->imgSearch:Landroid/widget/ImageView;

    .line 166
    const v1, 0x7f100672

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->imgLogoHeader:Landroid/widget/ImageView;

    .line 167
    const v1, 0x7f100670

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->imgReview:Landroid/widget/ImageView;

    .line 168
    const v1, 0x7f100669

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->btnBack:Landroid/widget/ImageView;

    .line 170
    const v1, 0x7f100627

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->progressGoogle:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    .line 171
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v1, :cond_117

    .line 172
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 176
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->btnBack:Landroid/widget/ImageView;

    new-instance v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$1;

    invoke-direct {v2, p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$1;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    :cond_117
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 186
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 187
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->gScreenHeight:I

    .line 188
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->gScreenWidth:I

    .line 189
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v2, 0x42440000

    invoke-virtual {p0, v2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->GetPixelFromDips(F)I

    move-result v2

    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getStatusBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    sput v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->gScreenHeightNoti:I

    .line 190
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v1}, Lcom/bzbs/data/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 192
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->setupFacebook()V

    .line 193
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->setFontTypeFace()V

    .line 195
    invoke-virtual {p0, p1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->createLayout(Landroid/os/Bundle;)V

    .line 196
    return-void

    .line 144
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :catch_14e
    move-exception v1

    goto/16 :goto_34
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 271
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_c

    .line 272
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->onBackPressed()V

    .line 274
    :cond_c
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 409
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 411
    invoke-static {}, Lcom/bzbs/event/LoginEvents;->clearLoginListener()V

    .line 414
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1e

    .line 415
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 427
    :cond_1e
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 431
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 433
    new-instance v0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$UserLoginListener;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Lcom/bzbs/marketplace/base/BaseAppCompatActivity$1;)V

    invoke-static {v0}, Lcom/bzbs/event/LoginEvents;->addLoginListener(Lcom/bzbs/event/LoginEvents$LoginListener;)V

    .line 434
    iget-boolean v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->isMainActivity:Z

    if-eqz v0, :cond_10

    .line 447
    :cond_10
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v0}, Lcom/bzbs/data/AppSetting;->InitialLibBuzzebeesConfig(Landroid/content/Context;)V

    .line 449
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getPoints()V

    .line 485
    return-void
.end method

.method public onShared(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V
    .registers 18
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "picture"    # Ljava/lang/String;
    .param p5, "link"    # Ljava/lang/String;
    .param p6, "onShareSuccessListener"    # Lcom/bzbs/marketplace/listener/OnShareSuccessListener;

    .prologue
    .line 558
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v1

    iput-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 559
    new-instance v10, Lcom/facebook/share/widget/ShareDialog;

    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {v10, v1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 560
    .local v10, "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    new-instance v8, Lcom/bzbs/util/ConnectionDetector;

    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-direct {v8, v1}, Lcom/bzbs/util/ConnectionDetector;-><init>(Landroid/content/Context;)V

    .line 561
    .local v8, "cd":Lcom/bzbs/util/ConnectionDetector;
    invoke-virtual {v8}, Lcom/bzbs/util/ConnectionDetector;->isConnectingToInternet()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 562
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, ""

    const v4, 0x7f0903a9

    invoke-virtual {p0, v4}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f090383

    invoke-virtual {p0, v5}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f090209

    invoke-virtual {p0, v6}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-static/range {v1 .. v7}, Lcom/bzbs/marketplace/dialog/util/DialogUtils;->getAlertBlurDialog(Landroid/app/Activity;Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :goto_3e
    return-void

    .line 566
    :cond_3f
    new-instance v1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 567
    invoke-virtual {v1, p2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v1

    .line 568
    invoke-virtual {v1, p3}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v1

    .line 569
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v1

    .line 570
    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v1

    check-cast v1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 571
    invoke-virtual {v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v9

    .line 573
    .local v9, "content":Lcom/facebook/share/model/ShareLinkContent;
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;

    move-object/from16 v0, p6

    invoke-direct {v2, p0, p1, v0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$5;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Ljava/lang/String;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V

    invoke-virtual {v10, v1, v2}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 591
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    invoke-static {v1, v9}, Lcom/facebook/share/widget/ShareDialog;->show(Landroid/app/Activity;Lcom/facebook/share/model/ShareContent;)V

    goto :goto_3e
.end method

.method public onSharedSuccess(Ljava/lang/String;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V
    .registers 8
    .param p1, "postId"    # Ljava/lang/String;
    .param p2, "onShareSuccessListener"    # Lcom/bzbs/marketplace/listener/OnShareSuccessListener;

    .prologue
    .line 596
    new-instance v0, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v0}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 597
    .local v0, "params":Lcom/loopj/android/http/RequestParams;
    const-string/jumbo v2, "token"

    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bzbs/data/UserLogin;->GetTokenBuzzeBees(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "content"

    invoke-virtual {v0, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bzbs/data/UserLogin;->GetUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/bzbs/marketplace/model/url/UrlModel;->getUrlShare(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;

    iget-object v3, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->mActivity:Lcom/bzbs/marketplace/base/BaseAppCompatActivity;

    sget-object v4, Lcom/bzbs/marketplace/asynctask/http/HttpMethod;->POST:Lcom/bzbs/marketplace/asynctask/http/HttpMethod;

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/bzbs/marketplace/asynctask/http/HttpMethod;)V

    new-instance v3, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$6;

    invoke-direct {v3, p0, p2}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$6;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Lcom/bzbs/marketplace/listener/OnShareSuccessListener;)V

    invoke-virtual {v2, v3}, Lcom/bzbs/marketplace/asynctask/http/HttpAsynctask;->excute(Lcom/bzbs/marketplace/asynctask/http/CallbackHttpAsyncTask;)V

    .line 623
    return-void
.end method

.method protected setActionBarIcon(I)V
    .registers 4
    .param p1, "iconRes"    # I

    .prologue
    .line 247
    if-nez p1, :cond_9

    .line 248
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :goto_8
    return-void

    .line 250
    :cond_9
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    goto :goto_8
.end method

.method public setBtnBasket(ZI)V
    .registers 7
    .param p1, "isVisible"    # Z
    .param p2, "count"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 505
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->btnBasket:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->layoutBasket:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_c

    .line 515
    :cond_b
    :goto_b
    return-void

    .line 508
    :cond_c
    iget-object v3, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->layoutBasket:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_31

    move v0, v1

    :goto_11
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->txtBasketCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 510
    if-nez p2, :cond_20

    .line 511
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->txtBasketCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 513
    :cond_20
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->txtBasketCount:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->layoutBasket:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->clickToolbar:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b

    :cond_31
    move v0, v2

    .line 508
    goto :goto_11
.end method

.method protected abstract setFontTypeFace()V
.end method

.method public setHideSearch()V
    .registers 3

    .prologue
    .line 498
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->imgSearch:Landroid/widget/ImageView;

    if-nez v0, :cond_5

    .line 502
    :goto_4
    return-void

    .line 501
    :cond_5
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->imgSearch:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public setHideSmartTab()V
    .registers 3

    .prologue
    .line 490
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->contentHeadMenu:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_5

    .line 495
    :goto_4
    return-void

    .line 494
    :cond_5
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->contentHeadMenu:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method public setProgressVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 674
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->progressGoogle:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    if-eqz v0, :cond_9

    .line 675
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->progressGoogle:Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;

    invoke-virtual {v0, p1}, Lfr/castorflex/android/smoothprogressbar/SmoothProgressBar;->setVisibility(I)V

    .line 677
    :cond_9
    return-void
.end method

.method public setToolbarImageLogoHeader(I)V
    .registers 4
    .param p1, "res"    # I

    .prologue
    .line 238
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->imgLogoHeader:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 239
    if-eqz p1, :cond_c

    .line 240
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->imgLogoHeader:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    :cond_b
    :goto_b
    return-void

    .line 242
    :cond_c
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->imgLogoHeader:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b
.end method

.method protected setToolbarShowHome()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 214
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 216
    return-void
.end method

.method public setToolbarTitle(Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->textViewTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 221
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->textViewTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    :cond_10
    return-void
.end method

.method public setToolbarTitle(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "is_visible"    # Z

    .prologue
    .line 227
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->textViewTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_11

    .line 229
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    if-eqz p2, :cond_12

    const/4 v0, 0x0

    .line 233
    .local v0, "v":I
    :goto_c
    iget-object v1, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    .end local v0    # "v":I
    :cond_11
    return-void

    .line 231
    :cond_12
    const/16 v0, 0x8

    goto :goto_c
.end method

.method public setupFacebook()V
    .registers 2

    .prologue
    .line 204
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->callbackManager:Lcom/facebook/CallbackManager;

    .line 205
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/bzbs/marketplace/base/BaseAppCompatActivity;->gHandler:Landroid/os/Handler;

    new-instance v1, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/bzbs/marketplace/base/BaseAppCompatActivity$2;-><init>(Lcom/bzbs/marketplace/base/BaseAppCompatActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    return-void
.end method

.method protected showWindowAnimation(Z)V
    .registers 4
    .param p1, "isShowAnimation"    # Z

    .prologue
    .line 289
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    if-eqz p1, :cond_8

    .line 292
    :cond_8
    return-void
.end method
