.class Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29$2;
.super Ljava/lang/Object;
.source "MarketPlaceDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;

.field private final synthetic val$slideOut:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;

    iput-object p2, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29$2;->val$slideOut:Landroid/view/animation/Animation;

    .line 4079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v1, 0x64

    .line 4081
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$81(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 4082
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29$2;->val$slideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 4084
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$71(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$81(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4085
    iget-object v0, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29$2;->this$1:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;->this$0:Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;->access$0(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29;)Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;->access$78(Lic/buzzebeeslib/activity/MarketPlaceDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/activity/MarketPlaceDetailActivity$29$2;->val$slideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4092
    return-void
.end method
