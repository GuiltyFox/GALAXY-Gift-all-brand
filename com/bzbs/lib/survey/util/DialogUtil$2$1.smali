.class Lcom/bzbs/lib/survey/util/DialogUtil$2$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/DialogUtil$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/DialogUtil$2;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/DialogUtil$2;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/DialogUtil$2;

    .prologue
    .line 829
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$2$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x4

    .line 843
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$2$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$2;->val$tvSerial4:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 844
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$2$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$2;->val$contentQRCode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$2$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$2;->val$contentBarcode:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 847
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$2$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$2;->val$contentBarcode:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 848
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$2$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$2;->val$contentBarcode:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$2$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$2;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/DialogUtil$2;->val$animation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 849
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$2$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$2;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$2;->val$contentBarcode:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$2$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$2;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/DialogUtil$2;->val$animation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 850
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 838
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 833
    return-void
.end method
