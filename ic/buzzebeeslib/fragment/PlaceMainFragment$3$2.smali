.class Lic/buzzebeeslib/fragment/PlaceMainFragment$3$2;
.super Ljava/lang/Object;
.source "PlaceMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/fragment/PlaceMainFragment$3;

.field private final synthetic val$slideOut:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/fragment/PlaceMainFragment$3;Landroid/view/animation/Animation;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3$2;->this$1:Lic/buzzebeeslib/fragment/PlaceMainFragment$3;

    iput-object p2, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3$2;->val$slideOut:Landroid/view/animation/Animation;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, 0x64

    .line 345
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3$2;->this$1:Lic/buzzebeeslib/fragment/PlaceMainFragment$3;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->access$0(Lic/buzzebeeslib/fragment/PlaceMainFragment$3;)Lic/buzzebeeslib/fragment/PlaceMainFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$20(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 346
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3$2;->val$slideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 348
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3$2;->this$1:Lic/buzzebeeslib/fragment/PlaceMainFragment$3;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->access$0(Lic/buzzebeeslib/fragment/PlaceMainFragment$3;)Lic/buzzebeeslib/fragment/PlaceMainFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gImgBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$10(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3$2;->this$1:Lic/buzzebeeslib/fragment/PlaceMainFragment$3;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->access$0(Lic/buzzebeeslib/fragment/PlaceMainFragment$3;)Lic/buzzebeeslib/fragment/PlaceMainFragment;

    move-result-object v1

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->myZoomOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$20(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 349
    iget-object v0, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3$2;->this$1:Lic/buzzebeeslib/fragment/PlaceMainFragment$3;

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->this$0:Lic/buzzebeeslib/fragment/PlaceMainFragment;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment$3;->access$0(Lic/buzzebeeslib/fragment/PlaceMainFragment$3;)Lic/buzzebeeslib/fragment/PlaceMainFragment;

    move-result-object v0

    # getter for: Lic/buzzebeeslib/fragment/PlaceMainFragment;->gLayoutBadge:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lic/buzzebeeslib/fragment/PlaceMainFragment;->access$17(Lic/buzzebeeslib/fragment/PlaceMainFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lic/buzzebeeslib/fragment/PlaceMainFragment$3$2;->val$slideOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 355
    return-void
.end method
