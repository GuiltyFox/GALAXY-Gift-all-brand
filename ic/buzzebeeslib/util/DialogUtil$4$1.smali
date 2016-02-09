.class Lic/buzzebeeslib/util/DialogUtil$4$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/DialogUtil$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lic/buzzebeeslib/util/DialogUtil$4;

.field private final synthetic val$animation2:Landroid/view/animation/Animation;

.field private final synthetic val$contentBarcode:Landroid/widget/LinearLayout;

.field private final synthetic val$contentQRCode:Landroid/widget/LinearLayout;

.field private final synthetic val$tvSerial4:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lic/buzzebeeslib/util/DialogUtil$4;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/view/animation/Animation;)V
    .registers 6

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/DialogUtil$4$1;->this$1:Lic/buzzebeeslib/util/DialogUtil$4;

    iput-object p2, p0, Lic/buzzebeeslib/util/DialogUtil$4$1;->val$contentQRCode:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lic/buzzebeeslib/util/DialogUtil$4$1;->val$contentBarcode:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lic/buzzebeeslib/util/DialogUtil$4$1;->val$tvSerial4:Landroid/widget/TextView;

    iput-object p5, p0, Lic/buzzebeeslib/util/DialogUtil$4$1;->val$animation2:Landroid/view/animation/Animation;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x4

    .line 419
    iget-object v0, p0, Lic/buzzebeeslib/util/DialogUtil$4$1;->val$contentQRCode:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lic/buzzebeeslib/util/DialogUtil$4$1;->val$contentBarcode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    iget-object v0, p0, Lic/buzzebeeslib/util/DialogUtil$4$1;->val$tvSerial4:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lic/buzzebeeslib/util/DialogUtil$4$1;->val$contentQRCode:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 424
    iget-object v0, p0, Lic/buzzebeeslib/util/DialogUtil$4$1;->val$contentQRCode:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lic/buzzebeeslib/util/DialogUtil$4$1;->val$animation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 425
    iget-object v0, p0, Lic/buzzebeeslib/util/DialogUtil$4$1;->val$contentQRCode:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lic/buzzebeeslib/util/DialogUtil$4$1;->val$animation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 426
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 415
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 410
    return-void
.end method
