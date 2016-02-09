.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;

    .line 3587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;
    .registers 2

    .prologue
    .line 3587
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3590
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    const-string v1, "VISIBLE"

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$59(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V

    .line 3592
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    new-instance v1, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1$1;

    invoke-direct {v1, p0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1$1;-><init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;)V

    invoke-virtual {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3597
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3602
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 3606
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    const-string v1, "SHOWING"

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$59(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;Ljava/lang/String;)V

    .line 3608
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutButtonGallery:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$60(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3609
    return-void
.end method
