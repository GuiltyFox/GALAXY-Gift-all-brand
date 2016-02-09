.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;

    .line 3487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;
    .registers 2

    .prologue
    .line 3487
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3490
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    const-string v1, "VISIBLE"

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$52(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V

    .line 3492
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3497
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3502
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3506
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    const-string v1, "SHOWING"

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$52(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V

    .line 3508
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutButtonInfo:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$54(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3509
    return-void
.end method
