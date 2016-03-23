.class Lcom/bzbs/lib/survey/util/AnimationPopup$3$2;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPopup$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$3;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/AnimationPopup$3;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/AnimationPopup$3;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$3$2;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 264
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 269
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 274
    return-void
.end method
