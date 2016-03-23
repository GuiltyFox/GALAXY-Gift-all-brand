.class Lcom/bzbs/lib/survey/util/DialogUtil$3$1;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/DialogUtil$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/DialogUtil$3;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/DialogUtil$3;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/DialogUtil$3;

    .prologue
    .line 872
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x4

    .line 885
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$3;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$tvSerial4:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 886
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$3;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$contentQRCode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 887
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$3;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$contentBarcode:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$3;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$tvSerial4:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 890
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$3;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$tvSerial4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$3;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$animation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 891
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$3;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$tvSerial4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bzbs/lib/survey/util/DialogUtil$3$1;->this$0:Lcom/bzbs/lib/survey/util/DialogUtil$3;

    iget-object v1, v1, Lcom/bzbs/lib/survey/util/DialogUtil$3;->val$animation2:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 892
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 881
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 876
    return-void
.end method
