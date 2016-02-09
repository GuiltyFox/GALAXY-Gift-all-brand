.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;

    .line 3592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3594
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24$1;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$24;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$53(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;I)V

    .line 3595
    return-void
.end method
