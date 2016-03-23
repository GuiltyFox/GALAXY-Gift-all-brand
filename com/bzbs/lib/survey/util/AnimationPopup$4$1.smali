.class Lcom/bzbs/lib/survey/util/AnimationPopup$4$1;
.super Ljava/lang/Object;
.source "AnimationPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/AnimationPopup$4;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$4;


# direct methods
.method constructor <init>(Lcom/bzbs/lib/survey/util/AnimationPopup$4;)V
    .registers 2
    .param p1, "this$0"    # Lcom/bzbs/lib/survey/util/AnimationPopup$4;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$4$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/AnimationPopup$4$1;->this$0:Lcom/bzbs/lib/survey/util/AnimationPopup$4;

    iget-object v0, v0, Lcom/bzbs/lib/survey/util/AnimationPopup$4;->val$pLayoutButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 365
    return-void
.end method
