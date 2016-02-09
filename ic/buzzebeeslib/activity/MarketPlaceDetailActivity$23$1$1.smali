.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;

.field private final synthetic val$layoutInfoDetail:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;Landroid/widget/RelativeLayout;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1$1;->val$layoutInfoDetail:Landroid/widget/RelativeLayout;

    .line 3532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3534
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$53(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;I)V

    .line 3535
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1$1;->val$layoutInfoDetail:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3536
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23$1;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$23;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutButtonInfo:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$54(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3537
    return-void
.end method
