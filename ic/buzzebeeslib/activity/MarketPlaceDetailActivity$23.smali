.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->HideTabInfo()V
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
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    .line 3516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    .registers 2

    .prologue
    .line 3516
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 3519
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    # invokes: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->outToBottomAnimationSet()Landroid/view/animation/AnimationSet;
    invoke-static {v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$55(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    .line 3520
    .local v1, "outToBottom":Landroid/view/animation/Animation;
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 3521
    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 3522
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 3524
    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    sget v3, Lic/buzzebeeslib/R$id;->layoutInfoDetail:I

    invoke-virtual {v2, v3}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 3525
    .local v0, "layoutInfoDetail":Landroid/widget/RelativeLayout;
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3527
    new-instance v2, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;

    invoke-direct {v2, p0, v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 3566
    return-void
.end method
