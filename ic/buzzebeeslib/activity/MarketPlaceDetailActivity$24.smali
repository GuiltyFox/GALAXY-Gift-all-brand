.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->ShowTabGall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    .line 3575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    .registers 2

    .prologue
    .line 3575
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 3578
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->inFromBottomAnimationSet()Landroid/view/animation/AnimationSet;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$51(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 3579
    .local v0, "inFromBottom":Landroid/view/animation/Animation;
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 3580
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 3581
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3583
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v3, Lic/buzzebeeslib/R$id;->layoutGalleryDetail:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 3584
    .local v1, "layoutGalleryDetail":Landroid/widget/RelativeLayout;
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3585
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3587
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;

    invoke-direct {v2, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3611
    return-void
.end method
