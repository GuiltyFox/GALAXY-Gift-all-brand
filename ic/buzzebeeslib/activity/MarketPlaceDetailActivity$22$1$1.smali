.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;

    .line 3492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3494
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22$1;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$22;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$53(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;I)V

    .line 3495
    return-void
.end method
