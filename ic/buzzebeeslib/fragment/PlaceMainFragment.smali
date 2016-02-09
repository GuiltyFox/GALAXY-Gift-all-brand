.class public Lic/buzzebeeslib/fragment/PlaceMainFragment;
.super Landroid/support/v4/app/Fragment;
.source "PlaceMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "cache_place"


# instance fields
.field private final LOGCAT:Ljava/lang/String;

.field private gHandler:Landroid/os/Handler;

.field private gImgAnimation:Landroid/view/animation/AnimationSet;

.field private gImgBadge:Landroid/widget/ImageView;

.field private gImgCash1:Landroid/widget/ImageView;

.field private gImgCash2:Landroid/widget/ImageView;

.field private gImgCash3:Landroid/widget/ImageView;

.field private gImgCash4:Landroid/widget/ImageView;

.field private gImgComma1:Landroid/widget/ImageView;

.field private gLayoutBadge:Landroid/widget/RelativeLayout;

.field private gLayoutNewbie:Landroid/widget/RelativeLayout;

.field private gLayoutRoot:Landroid/widget/LinearLayout;

.field private gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

.field private gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

.field private gParamPAGE_MODE:I

.field private gScreenHeight:I

.field private gScreenWidth:I

.field private gTvBadge:Landroid/widget/TextView;

.field private gTvBadgePoint:Landroid/widget/TextView;

.field private layoutBadgeAlert:Landroid/widget/RelativeLayout;

.field private layoutPoints:Landroid/widget/RelativeLayout;

.field private mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

.field private mLeak:Landroid/view/View;

.field private myZoomInAnimation:Landroid/view/animation/Animation;

.field private myZoomOutAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(ILic/buzzebeeslib/bean/Campaign;)V
    .registers 4
    .param p1, "pPAGE_MODE_ACTIVITY"    # I
    .param p2, "pCampaign"    # Lic/buzzebeeslib/bean/Campaign;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 48
    const-string v0, "buzzebees.places"

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->LOGCAT:Ljava/lang/String;

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

    .line 68
    iput p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gParamPAGE_MODE:I

    .line 69
    iput-object p2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 70
    return-void
.end method

.method private PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 10
    .param p1, "pBadgeAlert"    # Lic/buzzebeeslib/bean/BadgeAlert;

    .prologue
    const/4 v7, 0x4

    const/4 v5, 0x1

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lic/buzzebeeslib/LibConst;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "api/badge/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lic/buzzebeeslib/bean/BadgeAlert;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/picture?type=large"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "imgUrl":Ljava/lang/String;
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;

    const/4 v3, 0x0

    sget v4, Lic/buzzebeeslib/R$drawable;->bz_badge_default_512:I

    invoke-virtual/range {v0 .. v5}, Lcom/bitmapfun/util/ImageFetcher;->loadImage(Ljava/lang/Object;Landroid/widget/ImageView;Landroid/widget/ProgressBar;IZ)V

    .line 305
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gTvBadge:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lic/buzzebeeslib/bean/BadgeAlert;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gTvBadgePoint:Landroid/widget/TextView;

    iget v2, p1, Lic/buzzebeeslib/bean/BadgeAlert;->points:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutNewbie:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 309
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lic/buzzebeeslib/R$anim;->badge_zoom_in:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->myZoomInAnimation:Landroid/view/animation/Animation;

    .line 310
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lic/buzzebeeslib/R$anim;->badge_zoom_out:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;

    .line 312
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->myZoomInAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;-><init>(Lic/buzzebeeslib/fragment/PlaceMainFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 372
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lic/buzzebeeslib/fragment/PlaceMainFragment$4;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment$4;-><init>(Lic/buzzebeeslib/fragment/PlaceMainFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 396
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 399
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgAnimation:Landroid/view/animation/AnimationSet;

    .line 400
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgAnimation:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->myZoomInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 401
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 402
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;

    iget-object v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 404
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->inFromRightAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    .line 405
    .local v6, "slideIn":Landroid/view/animation/Animation;
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 406
    invoke-virtual {v6, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 407
    const-wide/16 v2, 0x1f4

    invoke-virtual {v6, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 408
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 409
    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lic/buzzebeeslib/fragment/PlaceMainFragment;)V
    .registers 1

    .prologue
    .line 198
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->playPointsAndBadge()V

    return-void
.end method

.method static synthetic access$10(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$11(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/LinearLayout;)V
    .registers 2

    .prologue
    .line 258
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutRoot:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$12(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 259
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$13(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 263
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutNewbie:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$14(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 260
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gTvBadge:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$15(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 262
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gTvBadgePoint:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$16(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 261
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$17(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$18(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/LinearLayout;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$19(Lic/buzzebeeslib/fragment/PlaceMainFragment;Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 2

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->PlayBadgeAnimation(Lic/buzzebeeslib/bean/BadgeAlert;)V

    return-void
.end method

.method static synthetic access$2(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->layoutPoints:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$20(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$21(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 418
    invoke-direct {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->outToLeftAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutRootOfPoints:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$4(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 222
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgCash1:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$5(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 223
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgCash2:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$6(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgCash3:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$7(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 225
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgCash4:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$8(Lic/buzzebeeslib/fragment/PlaceMainFragment;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 226
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgComma1:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$9(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->layoutBadgeAlert:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private inFromRightAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 412
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 413
    .local v0, "inFromRight":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 414
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 415
    return-object v0
.end method

.method private outToLeftAnimation()Landroid/view/animation/Animation;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 419
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v4, -0x40800000

    move v3, v1

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 420
    .local v0, "outtoLeft":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 421
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 422
    return-object v0
.end method

.method private playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
    .registers 4
    .param p1, "badgeAlert"    # Lic/buzzebeeslib/bean/BadgeAlert;

    .prologue
    .line 269
    sget-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    if-nez v0, :cond_13

    .line 270
    const/4 v0, 0x1

    sput-boolean v0, Lic/buzzebeeslib/LibData;->gIsAnimatingBadgeAlert:Z

    .line 271
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/fragment/PlaceMainFragment$2;-><init>(Lic/buzzebeeslib/fragment/PlaceMainFragment;Lic/buzzebeeslib/bean/BadgeAlert;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 299
    :cond_13
    return-void
.end method

.method private playPoint(I)V
    .registers 4
    .param p1, "points"    # I

    .prologue
    .line 229
    sget-boolean v0, Lic/buzzebeeslib/util/AnimationPoint;->IS_PLAYING:Z

    if-nez v0, :cond_13

    .line 230
    const/4 v0, 0x1

    sput-boolean v0, Lic/buzzebeeslib/util/AnimationPoint;->IS_PLAYING:Z

    .line 231
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;

    invoke-direct {v1, p0, p1}, Lic/buzzebeeslib/fragment/PlaceMainFragment$1;-><init>(Lic/buzzebeeslib/fragment/PlaceMainFragment;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 253
    :cond_13
    return-void
.end method

.method private playPointsAndBadge()V
    .registers 3

    .prologue
    .line 210
    :try_start_0
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 211
    sget-object v1, Lic/buzzebeeslib/LibData;->QUEUE_BADGEALERTS:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/buzzebeeslib/bean/BadgeAlert;

    .line 212
    .local v0, "badge":Lic/buzzebeeslib/bean/BadgeAlert;
    invoke-direct {p0, v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->playBadge(Lic/buzzebeeslib/bean/BadgeAlert;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 218
    .end local v0    # "badge":Lic/buzzebeeslib/bean/BadgeAlert;
    :cond_13
    :goto_13
    return-void

    .line 215
    :catch_14
    move-exception v1

    goto :goto_13
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 138
    if-nez p1, :cond_24

    .line 139
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 141
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    if-eqz v0, :cond_24

    .line 142
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 143
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget v2, Lic/buzzebeeslib/R$idPlaces3Fragment;->fragment_tab:I

    new-instance v3, Lic/buzzebeeslib/fragment/PlaceTabFragment;

    iget v4, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gParamPAGE_MODE:I

    iget-object v5, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    invoke-direct {v3, v4, v5}, Lic/buzzebeeslib/fragment/PlaceTabFragment;-><init>(ILic/buzzebeeslib/bean/Campaign;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 144
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 149
    .end local v0    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_24
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->setRetainInstance(Z)V

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 87
    sget v8, Lic/buzzebeeslib/R$layout;->bz_place_fragment:I

    invoke-virtual {p1, v8, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->mLeak:Landroid/view/View;

    .line 90
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 91
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 93
    new-instance v0, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "cache_place"

    invoke-direct {v0, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    .local v0, "cacheParams":Lcom/bitmapfun/util/ImageCache$ImageCacheParams;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/high16 v9, 0x3e800000

    invoke-virtual {v0, v8, v9}, Lcom/bitmapfun/util/ImageCache$ImageCacheParams;->setMemCacheSizePercent(Landroid/content/Context;F)V

    .line 95
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 96
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gScreenHeight:I

    .line 98
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gScreenWidth:I

    .line 100
    iget v7, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gScreenWidth:I

    .line 101
    .local v7, "width":I
    iget v3, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gScreenHeight:I

    .line 103
    .local v3, "height":I
    if-le v3, v7, :cond_cc

    .end local v3    # "height":I
    :goto_5b
    div-int/lit8 v4, v3, 0x2

    .line 104
    .local v4, "longest":I
    new-instance v8, Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9, v4}, Lcom/bitmapfun/util/ImageFetcher;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    .line 105
    iget-object v8, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    sget v9, Lic/buzzebeeslib/R$drawable;->t1_1:I

    invoke-virtual {v8, v9}, Lcom/bitmapfun/util/ImageFetcher;->setLoadingImage(I)V

    .line 106
    iget-object v8, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/bitmapfun/util/ImageFetcher;->addImageCache(Landroid/support/v4/app/FragmentManager;Lcom/bitmapfun/util/ImageCache$ImageCacheParams;)V

    .line 107
    iget-object v8, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v8, v10}, Lcom/bitmapfun/util/ImageFetcher;->setImageFadeIn(Z)V

    .line 111
    :try_start_85
    iget-object v8, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->mLeak:Landroid/view/View;

    sget v9, Lic/buzzebeeslib/R$id;->tvPageHeader:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 113
    .local v6, "tvPageHeader":Landroid/widget/TextView;
    iget v8, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gParamPAGE_MODE:I

    const/16 v9, 0x50

    if-ne v8, v9, :cond_ce

    .line 114
    sget v8, Lic/buzzebeeslib/R$string;->place_label_header_branch:I

    invoke-virtual {p0, v8}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    :goto_9e
    if-eqz v6, :cond_b1

    .line 121
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "fonts/kit55p.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 122
    .local v2, "font":Landroid/graphics/Typeface;
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_b1} :catch_d8

    .line 128
    .end local v2    # "font":Landroid/graphics/Typeface;
    .end local v6    # "tvPageHeader":Landroid/widget/TextView;
    :cond_b1
    :goto_b1
    iget-object v8, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->mLeak:Landroid/view/View;

    sget v9, Lic/buzzebeeslib/R$idPlaces3Fragment;->layoutPoints:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->layoutPoints:Landroid/widget/RelativeLayout;

    .line 129
    iget-object v8, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->mLeak:Landroid/view/View;

    sget v9, Lic/buzzebeeslib/R$idPlaces3Fragment;->layoutBadgeAlert:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->layoutBadgeAlert:Landroid/widget/RelativeLayout;

    .line 131
    iget-object v8, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->mLeak:Landroid/view/View;

    return-object v8

    .end local v4    # "longest":I
    .restart local v3    # "height":I
    :cond_cc
    move v3, v7

    .line 103
    goto :goto_5b

    .line 116
    .end local v3    # "height":I
    .restart local v4    # "longest":I
    .restart local v6    # "tvPageHeader":Landroid/widget/TextView;
    :cond_ce
    :try_start_ce
    sget v8, Lic/buzzebeeslib/R$string;->place_label_header_place:I

    invoke-virtual {p0, v8}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d7} :catch_d8

    goto :goto_9e

    .line 124
    .end local v6    # "tvPageHeader":Landroid/widget/TextView;
    :catch_d8
    move-exception v8

    goto :goto_b1
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 172
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 174
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->closeCache()V

    .line 176
    iput v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gParamPAGE_MODE:I

    .line 177
    iput-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gParamCampaign:Lic/buzzebeeslib/bean/Campaign;

    .line 179
    iput-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gHandler:Landroid/os/Handler;

    .line 180
    iput-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->layoutPoints:Landroid/widget/RelativeLayout;

    .line 181
    iput-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->layoutBadgeAlert:Landroid/widget/RelativeLayout;

    .line 183
    iput v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gScreenWidth:I

    .line 184
    iput v2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->gScreenHeight:I

    .line 186
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 190
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 192
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 193
    sget v0, Lic/buzzebeeslib/R$id;->layout_main:I

    invoke-static {p0, v0}, Lic/buzzebeeslib/util/OnDestroyView;->unbindReferences(Landroid/support/v4/app/Fragment;I)V

    .line 195
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->mLeak:Landroid/view/View;

    .line 196
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 163
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 164
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 165
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/bitmapfun/util/ImageFetcher;->flushCache()V

    .line 166
    invoke-static {}, Lic/buzzebeeslib/util/async/PostEvents;->clearPostListener()V

    .line 167
    const-string v0, "buzzebees.places"

    const-string v1, "PostEvents.clearPostListener();"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 154
    new-instance v0, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;-><init>(Lic/buzzebeeslib/fragment/PlaceMainFragment;Lic/buzzebeeslib/fragment/PlaceMainFragment$FBPostListener;)V

    invoke-static {v0}, Lic/buzzebeeslib/util/async/PostEvents;->addPostListener(Lic/buzzebeeslib/util/async/PostEvents$PostListener;)V

    .line 155
    const-string v0, "buzzebees.places"

    const-string v1, "PostEvents.addPostListener(new FBPostListener());"

    invoke-static {v0, v1}, Lic/buzzebeeslib/util/LogUtil;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment;->mImageFetcher:Lcom/bitmapfun/util/ImageFetcher;

    invoke-virtual {v0, v2}, Lcom/bitmapfun/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 158
    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lic/buzzebeeslib/util/ResumeUtil;->callResume(Landroid/content/Context;Landroid/app/Activity;Z)J

    .line 159
    return-void
.end method
