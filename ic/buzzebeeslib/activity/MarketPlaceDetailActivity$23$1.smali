.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;

.field private final synthetic val$layoutInfoDetail:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;Landroid/widget/RelativeLayout;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;->val$layoutInfoDetail:Landroid/widget/RelativeLayout;

    .line 3527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;
    .registers 2

    .prologue
    .line 3527
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3530
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    const-string v1, "GONE"

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$52(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V

    .line 3532
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1$1;

    iget-object v2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;->val$layoutInfoDetail:Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0, v2}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3540
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1$2;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1$2;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3554
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3559
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3563
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    const-string v1, "HIDING"

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$52(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V

    .line 3564
    return-void
.end method
