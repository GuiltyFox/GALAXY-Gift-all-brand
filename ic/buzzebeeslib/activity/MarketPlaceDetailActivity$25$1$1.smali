.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1$1;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1;

.field private final synthetic val$layoutGalleryDetail:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1;Landroid/widget/RelativeLayout;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1$1;->val$layoutGalleryDetail:Landroid/widget/RelativeLayout;

    .line 3632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3634
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$53(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;I)V

    .line 3635
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1$1;->val$layoutGalleryDetail:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3636
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1$1;->this$2:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25$1;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$25;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->layoutButtonGallery:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$60(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3637
    return-void
.end method
