.class final Lcom/bzbs/lib/survey/util/AnimationPopup$4;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPopup;->playPopupMarketBzbs(ILandroid/app/Activity;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pActivity:Landroid/app/Activity;

.field final synthetic val$pImagePopup1:Landroid/widget/ImageView;

.field final synthetic val$pLayoutButton:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/LinearLayout;Landroid/widget/ImageView;)V
    .registers 4

    .prologue
    .line 359
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$4;->val$pActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$4;->val$pLayoutButton:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$4;->val$pImagePopup1:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$4;->val$pActivity:Landroid/app/Activity;

    new-instance v1, Lcom/bzbs/lib/survey/util/AnimationPopup$4$1;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/util/AnimationPopup$4$1;-><init>(Lcom/bzbs/lib/survey/util/AnimationPopup$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 372
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$4;->val$pActivity:Landroid/app/Activity;

    new-instance v1, Lcom/bzbs/lib/survey/util/AnimationPopup$4$2;

    invoke-direct {v1, p0}, Lcom/bzbs/lib/survey/util/AnimationPopup$4$2;-><init>(Lcom/bzbs/lib/survey/util/AnimationPopup$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 381
    return-void
.end method
